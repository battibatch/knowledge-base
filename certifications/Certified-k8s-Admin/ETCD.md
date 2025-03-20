# ETCD

## Intro
distributed reliable k/v store that is simple, secure and fast

stores as pages or document
can update document w/o impact to others

### Install
download, extract, run
runs on 2379

etcdctl - client

### Releases
v2 api changed between v3

with newer version, default API version is v3 

## In K8s
stores info about the cluster
* Nodes, pods, configs, secrets, accounts, roles, bindings, others

every change made to the cluster, the etcd cluster is updated

### k8s install manual
Install etcd from scratch, and configure certificates
note advertise-clister-url

### k8s install using kubeadm
kubeadm installs etcd as pod

### In k8s HA
etcd install on each master nodes

## Commands
