# Developers Guide

## Values

> :warning: Our values are under active discussion. Please feel free to contribute your thoughts and ideas.
>
> https://github.com/mjpitz/cognative/discussions/18

**Accessibility** - Data produced by our systems, for intelligence or operations, should be accessible to developers
across the entire stack, from development to production. Otherwise, implementing, testing, and verifying metrics
important to business is incredibly difficult. By having an accessible stack, developers from all walks of life can help
the company thrive, not just those with experience or hold prior knowledge.

## Work

**Required Dependencies:**

- Docker
- Any version of NodeJS (`npm`)
- Any version of Golang (`go install ...`)

**Initial Setup:**

```shell
npm install
```

### Docker

Docker is the primary means of testing out the stack.

```shell
npm run docker:certs  # <-- one time operation
npm run docker:deploy # <-- when there are changes to update
```

**Useful Links:**

All the links below should connect to your local instance. You may need to redeploy systems between changes to have the
latest changes taken into account.

- https://grafana.local.cognative.work/ (for exploring data)
- https://collector.local.cognative.work/ (for OLTP over HTTP)
- https://minio.local.cognative.work/ (administrative, for inspecting data in S3)
- https://traefik.local.cognative.work/ (administrative, for inspecting local routing)

### Dashboards and Alerting

> :warning: This work still needs a home within the project. Discussions about this solution are ongoing.
>
> https://github.com/mjpitz/cognative/issues/10

### Helm Charts

[`charts`](../infra/charts) currently contains a collection of charts that are currently a work in progress.

```shell
helm repo add cognative https://cognative.work
helm upgrade -i cognative cognative/cognative
```

### Public Website

The contents of the [public website][] can be found in the [`docs`]() directory.

[public website]: https://mjpitz.github.io/cognative/

## Formatting

Formatting will be run on every commit and pull request to ensure the project meets the appropriate code style.

```shell
npm run format
```

## Licensing

When writing source code for the project, new files will need to include the proper legal header. This command
intentionally skips common configuration files seen across the project.

```shell
npm run legal
```
