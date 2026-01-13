---
title: Custom Memory for vCluster
---

vCluster uses a StatefulSet with a pod named 
[syncer](https://www.vcluster.com/docs/vcluster/introduction/architecture#syncer) 
as the control plane for the cluster.

By default, in Educates, we will assign 1Gi of memory to this statefulset, 
given the ephemeral lifetime of the sessions that will be controlled.

This setting can be customized, for whatever reasons, to lower the memory setting
or increasing it.

You can do that by adding the following snippet to your workshop definition:

```
spec:
  session:
    applications:
      vcluster:
        enabled: true
        resources:
          syncer:
            memory: 768Mi
```

We can see what is set for this lab, although we can not get real details of the StatefulSet
as the user's session will not have visibility of that object.

```editor:open-file
file: ~/resources/workshop.yaml
```

Virtual cluster syncer memory setting.

```editor:select-matching-text
file: ~/resources/workshop.yaml
text: "syncer:"
after: 1
```
