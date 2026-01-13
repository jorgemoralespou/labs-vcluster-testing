vcluster Testing
================

A series of workshops for demonstrating the use of virtual clusters.

Workshops included are:

* [lab-builtin-vcluster](workshops/lab-builtin-vcluster) - A workshop
  demonstrating creation of a virtual cluster per workshop session using the
  builtin support provided by Educates.

* [lab-builtin-vcluster-all-features](workshops/lab-builtin-vcluster-all-features) - 
  A workshop demonstrating creation of a virtual cluster with all the potential
  vcluster configuration per workshop session using the builtin support 
  provided by Educates.

* [lab-command-vcluster](workshops/lab-command-vcluster) - A workshop
  demonstrating creation of a virtual cluster using the `vcluster` CLI.

* [lab-command-nested-vcluster](workshops/lab-command-nested-vcluster) - A workshop
  demonstrating creation of a virtual cluster inside a builtin virtual cluster
  provided by Educates using the `vcluster` CLI. 

* [lab-add-resources-to-vcluster](workshops/lab-add-resources-to-vcluster) - A 
  workshop demonstrating how to prepopulate a virtual cluster with resources, 
  including installation of `kapp-controller` in that virtual cluster.

To deploy all the workshops run:

```
kubectl apply -f https://github.com/educates/labs-vcluster-testing/releases/latest/download/workshops.yaml
kubectl apply -f https://github.com/educates/labs-vcluster-testing/releases/latest/download/trainingportal.yaml
```

Educates version 3.5.1 or later is required to run these workshops.

Note that some workshops have prerequisites that need to be satisified else they
will not work. Check the README for each workshop for more details.
