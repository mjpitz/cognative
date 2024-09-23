{
    query: {
        Grouped(groups, query): (importstr "templates/grouped.sql") % {
            groups: std.join(", ", groups),
            query: query,
        },

        Sum(builder): (importstr "templates/sum.sql") % {},

        Gauge(builder): (importstr "templates/gauge.sql") % {
            select: std.join(", ", std.map(function(name) "Attributes['%{name}'] as %{name}" % {name: name}, builder.columns)),
            selected: std.join(", ", builder.columns),
            interval: builder.interval,
            table: builder.table,
            metric: builder.metric,
            startTime: builder.startTime,
            endTime: builder.endTime,
            conditions: std.join("\n", builder.conditions),
        },

        New(): {
            metric: '',
            columns: [],
            table: '',
            conditions: [],
            startTime: '$__fromTime',
            endTime: '$__toTime',
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

        Interval(interval): {
            interval: interval,
        },
    },
}
