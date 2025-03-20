# kube Controller Manager

managed various controllers

watch status
Remediate Situation

Process that continuously monitors the state of the system and works to bring it to the correct state

## Node Controller
monitor the state of the node
uses kube-apiserver
checks every 5 sec for heartbeat
40s grace period
POD evictions timout = 5m

## replica controller
monitor the status of the replicasets


There are more controllers than this
* deployment-controller
* namespace
* endpoint
* CronJob
* job-
* pv-protection-
* Service-Account
* Statefulset 
* PV-Binder

all packaged into kube-controller-manager

/etc/kubernetes/manifests/


