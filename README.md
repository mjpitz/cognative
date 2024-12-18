<div align="center">
<br/>

<img width="300" alt="cognative" title="cognative" src="assets/images/originals/logo.png"/>

A modern approach to observability, operations, and business intelligence.

[![Getting Started][]](.archive/QUICKSTART.md)
[![Architecture][]](.archive/ARCHITECTURE.md)
[![Developers Guide][]](.archive/DEVELOPING.md)

[![Join the discussion!][]](https://github.com/mjpitz/cognative/discussions)
[![Alternatives][]](.archive/ALTERNATIVES.md)

[Getting Started]: https://img.shields.io/badge/getting_started-027FFF?style=for-the-badge
[Architecture]: https://img.shields.io/badge/architecture-yellow?style=for-the-badge
[Developers Guide]: https://img.shields.io/badge/developers_guide-FF0000?style=for-the-badge
[Join the discussion!]: https://img.shields.io/badge/join_the_discussion!-gray?style=for-the-badge
[Alternatives]: https://img.shields.io/badge/alternatives-gray?style=for-the-badge

</div>

## Overview

Traditional approaches to observability, operations, and business intelligence treat these concerns as separate and
distinct. This often results in several, different technology stacks, often dramatically increasing the demand and
requirements of your on-call staff.

Cognative deploys a turn-key solution that centralizes log, metric, trace, and wide-event data into a common store and
exposes them for analysis behind a single pane of glass. Traditional approaches often require engineering effort to
centralize data from numerous, distinct sources into a common location. This results in toil and requires further
maintenance as the organization grows. Cognative removes this toil by centralizing the data FIRST.

**Benefits**

- Easily deploy a preconfigured instance of the stack that connects all relevant services.
- Access and analyze all your organizations business data, in a single location.
- Configure tiered storage (hot, warm, and cold) for all your logs, metrics, traces, and wide events ONCE.
- Less overhead for operators and developers alike, simplifying the development and testing processes.

**Still not convinced?**

- Give Cognative a try by following one of our [Getting Started](.archive/QUICKSTART.md) guides.
- See our documentation on [alternatives](.archive/ALTERNATIVES.md) for more information.

## Technologies

Cognative is a [portmanteau][] that uses an acronym of the technologies involved (listed below) and the suffix "native"
from the "cloud native" space, meaning "of indigenous origin".

[portmanteau]: https://www.merriam-webster.com/dictionary/portmanteau

<table>
<tr>
<td width="120"><img width="96" height="64" alt="ClickHouse" title="ClickHouse" src="https://www.percona.com/blog/wp-content/uploads/2017/10/ClickHouse-MySQL.png" /></td>
<td>

[_ClickHouse_][clickhouse] is our data warehouse layer. It stores logs, metrics, traces, as well as other business
related data sets. ClickHouse also comes with tons of integrations which makes it easy to source data from a variety
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
<br/>

Cognative provides a base layer that your company can build on top of. Want to add a queue before your data hits the
warehouse? Feel free to add which ever queuing technology your organization prefers.

**Why not just use these systems directly?**

While you _could_ deploy each of these systems independently, they require a significant amount of expertise and
knowledge of how the underlying systems work to get things connected properly. Our deployment takes care of a bulk of
this heavy lifting for you by automatically tapping sources for information. For example, our Helm chart deploys a
cluster agent which pulls metrics and information from the Kubernetes control plane. Our node agent automatically ships
logs and pulls metrics from the Kubelet agent running on each host.

To get a better idea of what comes with the Cognative system, take a look at our [architecture][] documentation. It
illustrates both on-prem style deployments and how you may leverage cloud services (such as [Grafana Cloud][],
[ClickHouse Cloud][], or [Altinity][]) in place of running the systems yourself.

[architecture]: .archive/ARCHITECTURE.md
[Grafana Cloud]: https://grafana.com/products/cloud/
[ClickHouse Cloud]: https://clickhouse.com/cloud
[Altinity]: https://altinity.com/managed-clickhouse/

## License

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
