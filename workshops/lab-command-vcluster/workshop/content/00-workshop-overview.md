---
title: Workshop Overview
---

This workshop demonstrates using the `vcluster` CLI to create virtual
clusters. Because the current `vcluster` CLI requires elevated access to a
cluster via RBAC, for this workshop, the workshop session is given full admin
access to a Kubernetes cluster, by way of using the builtin virtual cluster
feature of Educates to first give the session its own virtual cluster. The
virtual clusters created using the `vcluster` CLI are therefore nested within
the virtual cluster created for the workshop session.

Note that in the past the `vcluster` CLI didn't require elevated access and
could create virtual clusters so long as the user had admin access to only
a namespace. This is no longer possible. It is not known when the ability to
create virtual clusters with only admin access to a namespace was removed.

```terminal:execute
session: vcluster
command: vcluster create subcluster-1 --values ~/exercises/vcluster-values.yaml --kube-config-context-name subcluster-1 --connect
```

```editor:open-file
file: ~/exercises/vcluster-values.yaml
```

```terminal:execute
command: vcluster list
```

```terminal:execute
command: kubectl config get-contexts
```

```terminal:execute
command: kubectl config set-context --current --namespace default
```

```terminal:execute
command: kubectl config get-contexts
```

```terminal:execute
command: kubectl get nodes
```

```terminal:execute
command: kubectl get namespaces
```

```terminal:execute
command: kubectl get serviceaccounts
```

```terminal:execute
command: kubectl get nodes --context my-vcluster
```

```terminal:execute
command: kubectl get namespaces --context my-vcluster
```

```terminal:execute
command: kubectl get serviceaccounts --context my-vcluster --namespace default
```

```dashboard:open-dashboard
name: Console
```

```terminal:execute
command: helm install --set ingress.enabled=true --set ingress.hostname=nginx-{{< param session_name >}}.{{< param ingress_domain >}} nginx oci://registry-1.docker.io/bitnamicharts/nginx
```

```terminal:execute
command: kubectl rollout status deployment/nginx
```

```terminal:execute
command: curl http://nginx-{{< param session_name >}}.{{< param ingress_domain >}}
```

```terminal:execute
command: vcluster delete test
```

```terminal:execute
command: vcluster list
```

```terminal:execute
command: kubectl config get-contexts
```

```dashboard:open-dashboard
name: Cluster
```

```terminal:interrupt
session: vcluster
```
