local cog = import 'github.com/mjpitz/cognative/libsonnet/v1.0.0/main.libsonnet';

cog.query.Gauge(
    cog.query.New()
    + cog.query.Metric("prometheus_http_requests_total")
    + cog.query.Select(["handler", "code"])
    + cog.query.From("otel_metrics_local_sum_5m")
    + cog.query.Interval(300)
)
