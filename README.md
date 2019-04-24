# ocs-tests

- WIP - 

just some simple templates to create 2 different namespaces:
  - nginx-block
  - nginx-file

In which then are either gluster-block or gluster-file PVCs created and then RCs for using those 
along with nginx.

Dynamic provisioning is needed as well as it is assumed we have the folloing StorageClasses available:
  - glusterfs-storage
  - glusterfs-storage-block

To make things easier, kick off `test-file-block-nginx.sh` and everything should be created 

