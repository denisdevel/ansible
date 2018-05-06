#!/bin/bash


# "disable node swap"
/sbin/swapoff -a

# "install node"
/bin/systemctl stop kubelet.service && /bin/rm -f /etc/kubernetes/bootstrap-kubelet.conf && /bin/rm -f /etc/kubernetes/kubelet.conf && /bin/rm -f /etc/kubernetes/bootstrap-kubelet.conf && /bin/rm -f /etc/kubernetes/pki/ca.crt && /bin/systemctl start kubelet.service

# "include the node to the kubernate cluster"
/usr/bin/kubeadm join 192.168.88.10:6443 --token 77lhx6.9pspiet57ndoag7g --discovery-token-ca-cert-hash sha256:c70540b3fbfdcc0473d9ab28f8449c0dfc9b9ff2179fc5a06876e0289cb13d39

