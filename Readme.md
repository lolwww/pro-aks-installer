# Ubuntu PRO on AKS Node Installer

At the moment there is no built-in way to enable Ubuntu Pro on AKS worker nodes by the means of Azure CLI/UI.
However you can attach to pro subscription using the token from ubuntu.com/pro .
The script is meant to run as a DaemonSet so that new nodes can be subscribed to pro using the token too.
DaemonSet will support both scale-up and scale-down, so new nodes will have pro subscription and will be automatically detached from it on scale-down event.
This script which is heavily inspired by [Kured](https://github.com/weaveworks/kured) lets you install arbitraty software on AKS worker nodes. 

## Installation

Before installing update the script in k8s/sampleconfigmap.yaml with your Ubuntu Pro token from ubuntu.com/pro.

```sh
git clone https://github.com/lolwww/pro-aks-installer
cd pro-aks-installer
# Update script in ./k8s/sampleconfigmap.yaml with yout token
kubectl apply -f ./k8s
```
