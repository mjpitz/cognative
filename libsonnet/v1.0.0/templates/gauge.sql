-- THIS IS A COPY-PASTE FROM https://github.com/JustinMason/opentelemetry-collector-exporter-client
-- Needs to be updated for proper templating in jsonnet.

SELECT %(select)s,
    toDateTime(intDiv(toUInt32(TimeUnix), %(interval)d) * %(interval)d) AS UsageTime,
    avg(Value)/1e6 as Usage
FROM %(table)s
WHERE MetricName = '%(metric)s'
AND TimeUnix BETWEEN (toDateTime('%(startTime)s') - INTERVAL %(interval)d SECOND) AND toDateTime('%(endTime)s')
AND NOT isNaN(Value)
%(conditions)s
GROUP BY UsageTime, %(selected)
ORDER BY UsageTime
