cognative is an opinionated, minimalistic approach to business intelligence and operations.

**Goals**

1. Reduce the complexity and number of systems operations staff is required to have expertise on.
2. Maximize the breath of functionality they are able to support across business intelligence and operations.
3. Simplify the experience for developers.
4. Enable companies to own their own data.
5. Be flexible enough to support a variety of deployment models.

## Helm

_WARNING! THIS IS STILL UNDER ACTIVE DEVELOPMENT AND MAY NOT BE AVAILABLE YET._

You can easily deploy the `cognative` stack to Kubernetes using Helm.

```shell
helm repo add cognative https://mjpitz.github.io/cognative/
```

Currently, the standalone version of the chart is the only one that is supported. It is great for testing out the stack
but is not geared toward high-availability. For production use, we recommend disabling the `clickhouse` portion of this
chart and leveraging Clickhouse Cloud in the meantime. You will also need to configure your connection credentials to
have the deployment connect to your managed instance.

```shell
helm upgrade -i cognative-standalone cognative/cognative-standalone
```
