## **Prerequisites :** Two ubuntu servers 

## **Setup k3s cluster**
- Install k3s using below command on host vm
```
curl -sfL https://get.k3s.io | INSTALL_K3S_VERSION=v1.20.7+k3s1 sh - && cat /var/lib/rancher/k3s/server/node-token
IP=$(hostname -i | awk '{print $2}')
echo "curl -sfL https://get.k3s.io | INSTALL_K3S_VERSION=v1.20.7+k3s1 K3S_URL=https://$IP:6443 K3S_TOKEN=$(cat cat /var/lib/rancher/k3s/server/node-token) sh -
```
- notedown the above command and runit on worker node

- check your cluster
```
sudo k3s kubectl get nodes
```
