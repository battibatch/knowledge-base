# Kube Scheduler
only responsible for deciding which pod goes on which node

kublet is what creates the pod on the node

2 phases to decide which node
1. Filter based on resources sizes
2. Ranks node based on priority functions
* node resources available after adding the pod gives that node higher priority
* 1 node w/16CPU, one with 12, pod needs 10... 16 CPU node is used.

Also
* resource requirements and Limits
* taints and tolerations
* Node selectors/Affinity


