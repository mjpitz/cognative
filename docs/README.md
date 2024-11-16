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

## Getting Started

### Kubernetes

```shell
helm repo add cognative https://cognative.work
helm upgrade -i cognative cognative/cognative
```
