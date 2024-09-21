-- THIS IS A COPY-PASTE FROM https://github.com/JustinMason/opentelemetry-collector-exporter-client
-- Needs to be updated for proper templating in jsonnet.

{{ $length := len .selectColumns }}

SELECT {{ range .selectColumns }}Attributes['{{ . }}'] as {{ . }}, {{ end }}
toDateTime(intDiv(toUInt32(TimeUnix), {{ .interval }}) * {{ .interval }}) AS UsageTime,
avg(Value)/1e6 as Usage
FROM {{ .from }}
WHERE MetricName = '{{ .metricName }}'
AND NOT isNaN(Value)
{{ range .where }} {{ . }} {{ end }}
AND TimeUnix BETWEEN (toDateTime('{{ formatTime .start}}') - INTERVAL 300 SECOND) AND toDateTime('{{ formatTime .end}}')
GROUP BY UsageTime, {{ range $index, $column := .selectColumns }}{{ $column }}{{ if lt $index (sub $length 1) }},{{ end }}{{ end }}
ORDER BY UsageTime

