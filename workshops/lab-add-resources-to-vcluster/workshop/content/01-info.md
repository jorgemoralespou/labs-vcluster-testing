---
title: Accessing the Cluster
---

When virtual cluster support is enabled for a workshop session, the underlying
Kubernetes cluster used by Educates is not accessible and any operation using
Kubernetes clients will be against the virtual cluster instead.

The vcluster credentials are available in a secret on the
host workshop namespace under the name `vcluster_secret`. You can use
it like this:

```editor:select-matching-text
file: ~/resources/workshop.yaml
text: "$(vcluster_secret)"
```

This param can be used in workshop definitions that use
kapp_controller to install additional Apps from the Host on
the vcluster.