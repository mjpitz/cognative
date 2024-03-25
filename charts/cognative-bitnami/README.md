# cognative-bitnami

This chart exists as an early prototype to prove out the stack with existing solutions. This allows us to focus on the
more important areas of development (such as dashboard, alert, and playbook development).

```shell
# deploy clickhouse and zookeeper
helm upgrade -i cognative-bitnami ./charts/cognative-bitnami

# deploy collector and grafana (clickhouse must be running)
helm upgrade -i cognative-bitnami ./charts/cognative-bitnami \
  --set grafana.enabled=true \
  --set collector.enabled=true

# scale collector and deploy host-agent (collector must be running)
helm upgrade -i cognative-bitnami ./charts/cognative-bitnami \
  --set grafana.enabled=true \
  --set collector.enabled=true \
  --set collector.replicaCount=2 \
  --set host.enabled=true
```

### Notes

I'm seeing some odd invariants with the underlying clickhouse chart where the queries are rather inconsistent depending
on which instance of clickhouse you hit. This is likely due to use of non-replicated tables. This will require some
investigation into how the OpenTelemetry exporter performs the `CREATE TABLE` operation.
