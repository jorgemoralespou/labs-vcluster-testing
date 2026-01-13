---
title: Workshop Overview
---

This workshop demonstrates the builtin functionality provided by Educates for
creating a virtual cluster per workshop session and showcasing all the different
possible additional features vcluster built in functionality can have.

This additional functionality is:

- Setting the kubernetes version of the vcluster Kubernetes
- A dedicated ingress controller in your vcluster instance that helps you have your own
domain for your cluster. In this instance, this dedicated hostname will be
`{{< param session_name >}}.{{< param ingress_domain >}}`.
- Specify the memory and storage requirements for the vcluster syncer statefulset. The defaults is 1Gi memory for the syncer.
- Create `educates session objects` in your vcluster. Prefill your vcluster with kubernetes resources 
  defined in the workshop definition and specific.
- Export services from your host into your vcluster or from your vcluster into your host. 