#!/bin/bash
#this script is idempotent. Its ok to run it multiple times while troubleshooting any errors
echo "watch the screen carefully for any errors"
echo "Install MicroK8s with kubernetes version 1.20"
sudo snap install microk8s --classic --channel=1.20/stable
echo "waiting to confirm installation"
sudo microk8s status --wait-ready
echo "Enabling admin privileges to microk8s"
sudo usermod -a -G microk8s $USER
sudo chown -f -R $USER ~/.kube
echo "Enabling enable dashboard, dns, registry, istio services"
sudo microk8s enable dashboard dns registry istio
echo "take look about out cluster"
sudo microk8s kubectl get nodes
echo "let us add nodes to this cluster"
sudo microk8s add-node
echo "if you want to add nodes to the cluster ,copy the above join link and run it on worker node after microk8s installation  "
