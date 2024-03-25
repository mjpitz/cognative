<div align="center">

[![Documentation][]](https://mjpitz.github.io/cognative/)
[![Join the discussion!][]](https://github.com/mjpitz/cognative/discussions)
[![System architecture][]](ARCHITECTURE.md)
[![Developers guide][]](DEVELOPING.md)

[Documentation]: https://img.shields.io/badge/documentation-gray?style=for-the-badge
[Join the discussion!]: https://img.shields.io/badge/join_the_discussion!-blueviolet?style=for-the-badge
[System architecture]: https://img.shields.io/badge/system_architecture-blue?style=for-the-badge
[Developers guide]: https://img.shields.io/badge/developers_guide-yellow?style=for-the-badge

</div>

# cognative

cognative is an opinionated, minimalistic approach to business intelligence 🧠 and operations 🚨.

**Goals**

1. Reduce the complexity and number of systems operations staff is required to have expertise on.
2. Maximize the breadth of functionality they are able to support across business intelligence and operations.
3. Simplify the experience for developers.
4. Enable companies to own their own data.
5. Be flexible enough to support a variety of deployment models.

## Background

I started cognative as a recent reflection on the operational constraints faced by smaller organizations and how to
make best use of their skills and expertise. Requiring operations staff to be experts on a large number of systems
is not sustainable and will only lead to burn out. And yet, an increasing number of complex systems need to be run to
support business intelligence and operations.

The project name is a clever play on words. It takes the acronym for the tech stack (COG) and joins it with "native".
It came out of a discussion I had with [Tim Banks](https://github.com/timbanks) about the pitfalls of "traditional"
operations tech stacks and how it's often short-sighted once you start to consider the broader needs of business
intelligence. COG stands for **C**lickhouse, **O**penTelemetry, and **G**rafana.

- [_Clickhouse_](#clickhouse) is our data warehouse layer. It stores logs, metrics, traces, as well as other business
  related data sets. Clickhouse also comes with tons of integrations which makes it easy to source data from a variety
  of locations.
- [_OpenTelemetry_](#opentelemetry) provides instrumentation for our ecosystem. Information is collected from a variety
  of sources using vendor neutral solutions. The community also supports a large number of languages, making it easy to
  add to many systems today.
- [_Grafana_](#grafana) provides our data exploration, visualization, and alerting layer. It can easily integrate with
  on-call solutions like PagerDuty, OpsGenie, BetterStack, and many more.

## License

While no code currently exists in this repository, it seemed prudent to include a software license early on.

```
Copyright (C) 2024 The cognative authors
SPDX-License-Identifier: AGPL-3.0-only
```
