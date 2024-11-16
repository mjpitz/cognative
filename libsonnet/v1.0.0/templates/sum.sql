-- THIS IS A COPY-PASTE FROM https://github.com/JustinMason/opentelemetry-collector-exporter-client
-- Needs to be updated for proper templating in jsonnet.

{{ $length := len .selectColumns }}

    SELECT {{ range $index, $column := .selectColumns }} arrayElement(splitByString(':', increaseKey), {{ add $index }}) AS {{ $column}},{{ end }}
    toDateTime(intDiv(toUInt32(TimeUnix), {{ .interval }}) * {{ .interval }}) AS UsageTime,
    sum(IncreaseValue) as Usage
    FROM (
    SELECT concat({{ range $index, $column := .selectColumns }}Attributes['{{ $column }}'] {{ if lt $index (sub $length 1) }},':', {{ end }} {{ end }}) as increaseKey,
    TimeUnix,
    MetricName,
    lagInFrame(Value) OVER (PARTITION BY increaseKey ORDER BY TimeUnix ASC ROWS BETWEEN 1 PRECEDING AND UNBOUNDED FOLLOWING) AS prevValue,
    0 Mark,
    COUNT(Mark) OVER (PARTITION BY increaseKey ORDER BY	TimeUnix ROWS 1 PRECEDING)-1 = 1 PrevExists,
    if(PrevExists,
    if( prevValue > Value,
    if(prevValue = 0,
    0,
    Value),
    Value - prevValue),
    0) as IncreaseValue
    FROM {{ .from }}
    WHERE MetricName = '{{ .metricName }}'
    AND NOT isNaN(Value)
    {{ range .where }} {{ . }} {{ end }}
    AND TimeUnix BETWEEN (toDateTime('{{ formatTime .start}}') - INTERVAL 300 SECOND) AND toDateTime('{{ formatTime .end}}') ) AS data
    GROUP BY
    increaseKey,
    UsageTime
    ORDER BY
    increaseKey,
    UsageTime
