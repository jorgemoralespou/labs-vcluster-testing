---
title: Workshop Instructions
---

vCluster CLI is already installed for you in this environment. You can check the version by 
running:

```execute-1
vcluster version
```

Since we're running in Educates builtin vCluster, let's verify we can list the nodes and namespaces:

```execute-1
kubectl get nodes
```

```execute-1
kubectl get ns
```

As a developer, you have limited access to a namespace, but we want to test features that will require
cluster admin or dedicated access to a full cluster. We will use vCluster for this.
Let's go ahead and create a `development` vcluster inside your user namespace:

```execute-1
vcluster create development --connect=false
```

Initially, we just want to create the vcluster but not set it as our active kubernetes cluster, so we
instruct the `vcluster` CLI to not connect to it. We will do it later.

A `development` cluster has been now created. Let's see how we can list the vclusters we have,

```execute-1
vcluster list
```

If we execute `kubectl` commands, we will be using our host cluster. If we want to use our vcluster, we
need to `connect` to it, which will set our active kubeconfig to our vcluster.

```execute-1
vcluster connect development
```

We can now verify that we have access to our new `development` cluster.

```execute-2
kubectl get namespaces
```

Let's now create some workload inside our vcluster.

```execute-2
kubectl create deployment hello --image=testcontainers/helloworld:latest -n default
```

We need to wait until the workload is ready to be used.

```execute-2
kubectl rollout status deployment/hello -n default
```


<!-- TODO: Work out how to expose this externally

We can verify it's details:

```execute-2
kubectl describe deploy hello -n default
```

Expose the deployment:

```execute-2
kubectl expose deploy/hello --port=8080 -n default
```

Create an ingress for external access:
```execute-2
kubectl create ingress hello --rule="hello-{{< param session_name >}}.{{< param ingress_domain >}}/=hello:8080" -n default
```

Once it's ready, we can go ahead and access it.

```execute-2
curl http://hello-{{< param session_name >}}.{{< param ingress_domain >}}
``` -->
