# Cluster Architecture

## K8s architecture
Worker nodes - host apps as containers
master node - manage plan, schedule monitor node
* Control plane
* ETCD stores k/v data
* kube-scheduler - puts container in the right place
* node-controlers
* Controller-manager
* Replication-controller
* kube-apiserver - orchestrates all the things in the cluster
* Container Runtime engine
* kubelet - agent running on each node of the cluster, listens from apiserver
* kube-proxy - enable communication between the services

## Docker vs containerd
k8s built initially to orchestrate docker specifically

k8s introduced Container runtime interface
* use any runtime as long as it matched OCI
* docker was not built to support OCI

k8s intro'ed dockershim to let docker work

v1.24 removes dockershim
Docker images work with containerD

nerdctl - docker like CLI but for containerD

crictl - provides CLI for CRI compatible container runtimes


