---
title: Accessing the Cluster
---

When virtual cluster support is enabled for a workshop session, the underlying
Kubernetes cluster used by Educates is not accessible and any operation using
Kubernetes clients will be against the virtual cluster instead.

```terminal:execute
command: kubectl get nodes
```

As can be seen, it is possible to query information about nodes in the virtual
cluster. This is because the workshop user will have cluster admin access to the
virtual cluster.

Having cluster admin access means that workshops can be created using the
virtual cluster which demonstrate operations use cases, or at least anything a
cluster admin can do in the cluster.

Since this cluster deploys an ingress controller in your cluster, you will be able
to see the related pods. We're using `projectcontour` as built in ingress controller.

```terminal:execute
command: kubectl get pods -A
```
