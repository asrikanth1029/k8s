## **Prerequisites :** Two ubuntu servers 

## **Setup k3s cluster**
- Install k3s using below command on host vm and follow instructions on screen
```
curl -sfL https://get.k3s.io | INSTALL_K3S_VERSION=v1.20.7+k3s1 sh - && cat /var/lib/rancher/k3s/server/node-token
IP=$(hostname -i | awk '{print $2}') && token=$(cat /var/lib/rancher/k3s/server/node-token)
echo -e "\n \n copy bellow green text command and runit on worker node"
tput setaf 2; echo -e "\n \ncurl -sfL https://get.k3s.io | INSTALL_K3S_VERSION=v1.20.7+k3s1 K3S_URL=https://$IP:6443 K3S_TOKEN=$token sh -"
reset=`tput sgr0`

```
- check your cluster on master 
```
sudo k3s kubectl get nodes
```
