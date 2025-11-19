---
title: Deploying a Service
---

To demonstrate deployment of an application to the virtual cluster, use `helm`
to install the nginx web server.

```terminal:execute
command: helm install --set ingress.enabled=true --set ingress.hostname=nginx-{{< param session_name >}}.{{< param ingress_domain >}} nginx oci://registry-1.docker.io/bitnamicharts/nginx
```

The deployment will occur in background. To wait until the deployment has
completed run:

```terminal:execute
command: kubectl rollout status deployment/nginx
```

You should now be able to access the nginx web server instance using
the ingress which was created.

```terminal:execute
command: curl http://nginx-{{< param session_name >}}.{{< param ingress_domain >}}
```

If access doesn't work immediately try again as the ingress may take a moment
to be setup properly.
