# Ubuntu PRO on AKS Node Installer

 This script which is heavily inspired by [Kured](https://github.com/weaveworks/kured) lets you install arbitraty software on AKS worker nodes. The script (in the container) is meant to run as a DaemonSet so that new nodes can be bootstrapped.

## Installation

Before installing update the script in k8s/sampleconfigmap.yaml with your Ubuntu Pro token from ubuntu.com/pro.

```sh
git clone https://github.com/lolwww/pro-aks-installer
cd pro-aks-installer
# Update script in ./k8s/sampleconfigmap.yaml with yout token
kubectl apply -f ./k8s
```
