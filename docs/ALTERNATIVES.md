# Alternatives

> :warning: This is by no means a complete list. We will add to over time. A more in depth analysis could really be
> considered as most of these are a rather surface level analysis.

## Prometheus Stack - LGTM/P

By far the most popular solution in open source today, Prometheus makes it easy for anyone to instrument their systems.
It's been around for a long time and has a lot of community support. However, Prometheus (metrics), Loki (logs), Tempo
(traces), and Mimir (metrics) all handle similar kinds of information, but storage and configuration varies between each
solution, making it a pain to maintain and administer.

While the [LGTM/P][] stack works well for logs, traces, and metrics, it falls quite short for business intelligence.

[LGTM/P]: https://grafana.com/go/webinar/getting-started-with-grafana-lgtm-stack/

## Elastic Stack - ELK

The [ElasticStack][], more commonly referred to as ELK, is a fairly popular stack that used in a number of different
fields. The ELK stack is certainly closer to a more modern observability, operations, and business intelligence stack.
However, it can be fairly expensive to run, and the stack lacks a couple necessary components. Furthermore, there's a
lot of hesitancy and skepticism from the open source community when produce whose license recently change get involved.

[ElasticStack]: https://www.elastic.co/elastic-stack
