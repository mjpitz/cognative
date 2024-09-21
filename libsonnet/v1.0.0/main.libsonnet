{
    query: {
        Grouped(groups, query): (importstr "templates/grouped.sql") % {
            groups: std.join(", ", groups),
            query: query,
        },

        Sum(builder): (importstr "templates/sum.sql") % {},
        Gauge(builder): (importstr "templates/gauge.sql") % {},

        New(): {
            metric: '',
            columns: [],
            table: '',
            conditions: [],
            startTime: '$__fromTime',
            endTime: '$__toTime',
            groups: [],
            interval: 300,
        },

        Metric(name): {
            metric: name,
        },

        Select(columns): {
            columns+: columns,
        },

        From(table): {
            table: table,
        },

        Where(conditions): {
            conditions+: conditions,
        },

        Range(start, end): {
            startTime: start,
            endTime: end,
        },

        GroupBy(groups): {
            groups+: groups,
        },

        Interval(interval): {
            interval: interval,
        },
    },
}
