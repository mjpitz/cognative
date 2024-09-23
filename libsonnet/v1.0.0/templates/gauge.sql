-- THIS IS A COPY-PASTE FROM https://github.com/JustinMason/opentelemetry-collector-exporter-client
-- Needs to be updated for proper templating in jsonnet.

SELECT %{select},
    toDateTime(intDiv(toUInt32(TimeUnix), %{interval}) * %{interval}) AS UsageTime,
    avg(Value)/1e6 as Usage
FROM %{table}
WHERE MetricName = '%{metric}'
AND TimeUnix BETWEEN (toDateTime('%{startTime}') - INTERVAL %{interval} SECOND) AND toDateTime('%{endTime}')
AND NOT isNaN(Value)
%{conditions}
GROUP BY UsageTime, %{selected}
ORDER BY UsageTime
