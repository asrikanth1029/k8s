## Requirements
- Running 3 VMs with ubuntu 18+ including git (preferably under same subnet, allow port 22)
- preferd minimum configuration for master: 2vcpu , 1GB memory, 20GB disk
- clone following repo
```
sudo git clone https://github.com/asrikanth29/k8s
```
---
## step 1: setuping master node
- login to master run following script
```
chmod 755 ./k8s/master.sh && ./k8s/master.sh
```
-after done with installation , to add 2 nodes to this cluster ,find two joining links are created above note down the above join commands like `microk8s join ip:port/xxxxxx` you need is in later step
## step 2: adding worker node to the master

- login to workernodes and run following script
```
chmod 755 ./k8s/worker.sh && ./k8s/worker.sh
```
- after done with installation run one of the joining command which are noted earlier, remember, those joining commands are useful for one time
---

## step 3: verify your cluster
- list all the nodes int the cluster,run the following command , this time should show 3 nodes master and 2 workernodes
```
microk8s kubectl get nodes
```
