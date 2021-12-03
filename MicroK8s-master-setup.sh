#!/bin/bash
#this script is idempotent. Its ok to run it multiple times while troubleshooting any errors
echo "watch the screen carefully for any errors"
echo "Installing MicroK8s with kubernetes version 1.20"
sudo snap install microk8s --classic --channel=1.20/stable
echo "Waiting to confirm installation"
sudo microk8s status --wait-ready
echo "Enabling admin privileges to microk8s"
sudo usermod -a -G microk8s $USER
sudo chown -f -R $USER ~/.kube
echo "Enabling enable dashboard, dns, registry, services"
sudo microk8s enable dashboard dns registry
echo "take look about out cluster"
sudo microk8s kubectl get nodes
echo "let us add nodes to this cluster"
sudo microk8s add-node
echo "to add 2 nodes to this cluster ,two joining links are created above note down the above join links like microk8s join ip:port/xxxxxx you neet is in later step "
