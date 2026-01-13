---
title: Additional Session Objects
---

When you create your vcluster you might need to populate it with 
some kubernetes resources, the same way you would for your regular workshop's
session. To do that, use the `session.applications.vcluster.objects` workshop
definition field:

```editor:select-matching-text
file: ~/resources/workshop.yaml
text: "objects:"
after: 8
```
We can see in this cluster this object that has been created as it's in the
workshop definition.

```execute
kubectl get configmap session-details -n default -o yaml
```
