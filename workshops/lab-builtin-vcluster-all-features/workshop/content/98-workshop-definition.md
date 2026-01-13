---
title: Workshop Definition
---

To see how to enable virtual cluster support, use the embedded editor to open
the workshop definition file `~/exercises/workshop.yaml`.

```editor:open-file
file: ~/resources/workshop.yaml
```

Virtual cluster support is enabled by setting the
`session.applications.vcluster.enabled` property to `true`.

```editor:select-matching-text
file: ~/resources/workshop.yaml
text: "vcluster:"
after: 4
```

To enable the embedded Kubernetes web console set the
`session.applications.console.enabled` property to `true`.

```editor:select-matching-text
file: ~/resources/workshop.yaml
text: "console:"
after: 1
```
