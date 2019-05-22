# ocs-tests

- WIP - 

just some simple templates to create 2 different namespaces:
  - nginx-block
  - nginx-file

In which then are gluster-block or gluster-file PVCs created (1 Gi) and then RCs for using those 
along with nginx.

Dynamic provisioning is needed as well as it is assumed we have the folloing StorageClasses available:
  - glusterfs-storage
  - glusterfs-storage-block
  
  If storage classes are named differently, change the storage classes in `pv-file-templ.yaml` and `pv-block-templ.yaml`  
  accordingly 

To make things easier, kick off `test-file-block-nginx.sh` and everything should be created, if you just want to test block, or file remove the section from that file, also, change numer of created volumes there (default is 10) 

We use `gcr.io/google_containers/nginx-slim:0.8` to deploy 10 RCs with nginx, that needs to be adjusted as well if not available

