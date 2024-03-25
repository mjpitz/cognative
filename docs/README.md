<div align="center">
    <a href="https://github.com/mjpitz/cognative/">
        <img alt="GitHub Repository" src="https://img.shields.io/badge/github_repository-gray?style=for-the-badge"/>
    </a>
    <a href="https://github.com/mjpitz/cognative/discussions">
        <img alt="Join the discussion" src="https://img.shields.io/badge/join_the_discussion!-blueviolet?style=for-the-badge"/>
    </a>
    <a href="https://github.com/mjpitz/cognative/blob/main/DEVELOPING.md">
        <img alt="Developers guide" src="https://img.shields.io/badge/developers_guide-blue?style=for-the-badge"/>
    </a>
</div>

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
COG stands for **C**lickhouse, **O**penTelemetry, and **G**rafana.

## Helm

You can easily deploy the `cognative` stack to Kubernetes using Helm.

```shell
helm repo add mya https://mya.sh
```

The current version of the Helm chart only supports a single instance of Clickhouse. It is great for testing out the
stack, and smaller scaled deployments that don't require high availability. For a more critical, production-based
workload, we recommend disabling the `clickhouse` portion of this chart, and leveraging Clickhouse Cloud in the
meantime. You will also need to configure your connection credentials to have the deployment connect to your managed
instance.

```shell
helm upgrade -i cognative mya/cognative
```
