#!/bin/bash


# "disable node swap"
/sbin/swapoff -a

# "install node"
/bin/systemctl stop kubelet.service && /bin/rm -f /etc/kubernetes/bootstrap-kubelet.conf && /bin/rm -f /etc/kubernetes/kubelet.conf && /bin/rm -f /etc/kubernetes/bootstrap-kubelet.conf && /bin/rm -f /etc/kubernetes/pki/ca.crt && /bin/systemctl start kubelet.service

# "include the node to the kubernate cluster"
kubeadm join 172.31.100.1:6443 --token 41kjfi.etv03l6q1haybzxe --discovery-token-ca-cert-hash sha256:9e1057c625555fcbaac0a9a02c7069ae7f6245db41a6f4343bba4ecdac525a85


