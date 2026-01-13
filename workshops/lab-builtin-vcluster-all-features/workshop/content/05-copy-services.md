---
title: Copy Kubernetes Services from/to host cluster
---

When deploying an application in the virtual cluster which includes 
a Kubernetes ClusterIP service, and you need to expose that service 
to other users in the underlying host Kubernetes cluster using a 
predictable name, you can declare a mapping for the Kubernetes service.

```
spec:
  session:
    applications:
      vcluster:
        enabled: true
        services:
          fromVirtual:
          - from: my-virtual-namespace/my-virtual-service
            to: my-host-service
```

See in our example:

```editor:select-matching-text
file: ~/resources/workshop.yaml
text: "fromVirtual:"
after: 2
```

The `my-host-service` created in the underlying host Kubernetes cluster will 
always be created in the namespace set aside for a workshop session for the 
virtual cluster. The name of this namespace is available as a data variable 
`vcluster_namespace` in the workshop definition and workshop instructions.

To inject a Kubernetes service from the host Kubernetes cluster into the 
virtual cluster instance for a workshop, a mapping in the other direction 
can be specified.

```
spec:
  session:
    applications:
      vcluster:
        enabled: true
        services:
          fromHost:
          - from: $(workshop_namespace)/my-host-service
            to: my-virtual-namespace/my-virtual-service
```

See in our example:

```editor:select-matching-text
file: ~/resources/workshop.yaml
text: "fromHost:"
after: 2
```

The Kubernetes service being mapped can be from any namespace in the host 
Kubernetes cluster, but for workshops this would usually be `$(workshop_namespace)` 
if a shared service created from `environment.objects`, or `$(session_namespace)` 
where created for each workshop session from `session.objects`.
