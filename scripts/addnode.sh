#!/bin/bash


# "disable node swap"
/sbin/swapoff -a

# "install node"
/bin/systemctl stop kubelet.service && /bin/rm -f /etc/kubernetes/bootstrap-kubelet.conf && /bin/rm -f /etc/kubernetes/kubelet.conf && /bin/rm -f /etc/kubernetes/bootstrap-kubelet.conf && /bin/rm -f /etc/kubernetes/pki/ca.crt && /bin/systemctl start kubelet.service

# "include the node to the kubernate cluster"
kubeadm join 172.31.100.1:6443 --token ckk4s7.wcccip0g5pg90gn8 --discovery-token-ca-cert-hash sha256:c24cc1e95525b049c087740c0e71887b1c92328d0c5ef717d12af733e50f7f56


