cd ./k8s
sudo chmod 755 MicroK8s-worker-setup.sh
echo "watch the screen carefully for any errors"
echo "Installing MicroK8s with kubernetes version 1.20"
sudo snap install microk8s --classic --channel=1.20/stable
echo "waiting to confirm installation"
sudo microk8s status --wait-ready
echo "now run join link which is generated on master node, if not yet generated run command: sudo microk8s add-node    on master node "
