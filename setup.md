- login to master node run following script, follow instructions
```
sudo git clone https://github.com/asrikanth29/k8s && chmod 755 ./k8s/master.sh && ./k8s/master.sh
```
- login to workernodes and run following script, follow instructions
```
sudo git clone https://github.com/asrikanth29/k8s && chmod 755 ./k8s/worker.sh && ./k8s/worker.sh
```
- verify your cluster, run following script on master
```
microk8s kubectl get nodes
```
