Add resources to a vCluster
============================

This workshop demonstrates how to install `kapp-controller` into a virtual
cluster, as well as other means of creating additional resources in the virtual 
cluster at the time it is created in order to set it up ready for use.

In some example, the lab uses kapp-controller on the host cluster to install
resources via a kapp-controller App and it uses the `$(vcluster_secret)` variable
that holds the kubeconfig to the virtual cluster in the workshop namespace.
