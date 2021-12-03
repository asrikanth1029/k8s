### perequisit : VMs with ubuntu 18+ (preferably under same subnet, allow port 22)
- login to master node run following script, follow instructions
```
sudo git clone https://github.com/asrikanth29/k8s && chmod 755 ./k8s/microk8s/master.sh && sudo ./k8s/microk8s/master.sh
```
- login to workernodes and run following script, follow instructions
```
sudo git clone https://github.com/asrikanth29/k8s && chmod 755 ./k8s/microk8s/worker.sh && sudo ./k8s/microk8s/worker.sh
```
- verify your cluster, run following script on master
```
microk8s kubectl get nodes
```
