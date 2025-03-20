# Kube-apiserver

when you run a kubectl command, it reaches to kube-apiserver

1. auth user
2. validate request
3. retrieve data
4. update ETCD
5. scheduler
6. Kubelet returns status

this is the only component to directly interact with ETCD

## Install manual
download and run as a service
certs for etcd and kubelet
etcd servers

## View api-server: kubeadmn
it is a pod