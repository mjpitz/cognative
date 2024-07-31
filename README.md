<div align="center">
<br/>

<img width="300" alt="cognative" title="cognative" src="assets/images/originals/logo.png"/>

A modern approach to observability, operations, and business intelligence.
<br/>

[![Join the discussion!][]](https://github.com/mjpitz/cognative/discussions)
[![System architecture][]](docs/ARCHITECTURE.md)
[![Developers guide][]](docs/DEVELOPING.md)

[Documentation]: https://img.shields.io/badge/documentation-gray?style=for-the-badge
[Join the discussion!]: https://img.shields.io/badge/join_the_discussion!-yellow?style=for-the-badge
[System architecture]: https://img.shields.io/badge/system_architecture-027FFF?style=for-the-badge
[Developers guide]: https://img.shields.io/badge/developers_guide-FF0000?style=for-the-badge

</div>

## Background

Traditional approaches to observability, operations, and business intelligence treat these concerns as separate and
distinct. This often results in several, different technology stacks, often dramatically increasing the demand and
requirements of your on-call staff.

## Technologies

Cognative is intended to provide a base layer that your company can build on top of. Want to add a queue before your
data hits the warehouse? Feel free to add which ever queuing technology your organization prefers. Cognative is a
[portmanteau][] that takes an acronym of the technologies involved (COG, listed below) and the term "native" which means
"of indigenous origin or growth".

[portmanteau]: https://www.merriam-webster.com/dictionary/portmanteau

<table>
<tr>
<td width="120"><img width="96" height="64" alt="ClickHouse" title="ClickHouse" src="https://www.percona.com/blog/wp-content/uploads/2017/10/ClickHouse-MySQL.png" /></td>
<td>

[_Clickhouse_][clickhouse] is our data warehouse layer. It stores logs, metrics, traces, as well as other business
related data sets. Clickhouse also comes with tons of integrations which makes it easy to source data from a variety
of locations.

[clickhouse]: https://clickhouse.com/

</td>
</tr>
<tr>
<td><img width="96" height="64" alt="OpenTelemetry" title="OpenTelemetry" src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/opentelemetry/opentelemetry-original.svg" /></td>
<td>

[_OpenTelemetry_][open telemetry] provides instrumentation for our ecosystem. Information is collected from a variety
of sources using vendor neutral solutions. The community also supports a large number of languages, making it easy to
add to many systems today.

[open telemetry]: https://opentelemetry.io/

</td>
</tr>
<tr>
<td><img width="96" height="64" alt="Grafana" title="Grafana" src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/grafana/grafana-original.svg" /></td>
<td>

[_Grafana_][grafana] provides our data exploration, visualization, and alerting layer. It can easily integrate with
on-call solutions like PagerDuty, OpsGenie, BetterStack, and many more.

[grafana]: https://grafana.com/oss/grafana/

</td>
</tr>
</table>

## Alternatives

_Prometheus Stack - LGTM/P Stack_

By far the most popular solution in open source today, Prometheus makes it easy for anyone to instrument their systems.
It's been around for a long time and has a lot of community support. However, Prometheus (metrics), Loki (logs), Tempo
(traces), and Mimir (metrics) all handle similar kinds of information, but storage and configuration varies between each
solution, making it a PITA to maintain and administer.

While the [LGTM/P][] stack works well for logs, traces, and metrics, it falls short for business intelligence.

[LGTM/P]: https://grafana.com/go/webinar/getting-started-with-grafana-lgtm-stack/

_Elastic Stack - ELK_

The [ElasticStack][], more commonly referred to as ELK, is a fairly popular stack that used in a number of different
fields. The ELK stack is certainly closer to a more modern observability, operations, and business intelligence stack,
however, it can be fairly expensive to run, and the stack lacks necessary collector components for metrics and traces.
Furthermore, there's a lot of hesitancy and skepticism from the open source community when produce whose license
recently change get involved.

[ElasticStack]: https://www.elastic.co/elastic-stack

## License

While there isn't any code involved in the project, it seemed prudent to include a license of some kind. We can always
be more permissive with our licensing, but I wanted to start from a somewhat restricted standpoint given my experience
open source organizations and communities.

```text
Copyright (C) 2024 The cognative authors

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
```
