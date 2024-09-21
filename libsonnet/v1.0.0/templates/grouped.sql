SELECT %(groups), UsageTime, sum(Usage) Usage
FROM (
    %(query)
) as grouped
GROUP BY UsageTime, %(groups)
ORDER BY %(groups), UsageTime
