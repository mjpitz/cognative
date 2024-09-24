SELECT %(groups)s, UsageTime, sum(Usage) Usage
FROM (
    %(query)s
) as grouped
GROUP BY UsageTime, %(groups)s
ORDER BY %(groups)s, UsageTime