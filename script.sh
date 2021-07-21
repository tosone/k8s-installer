#!/bin/bash

RELEASE="v1.21.3" # "$(curl -sSL https://dl.k8s.io/release/stable.txt)"
curl -L --remote-name-all https://storage.googleapis.com/kubernetes-release/release/${RELEASE}/bin/linux/amd64/{kubeadm,kubelet,kubectl}
chmod +x {kubeadm,kubelet,kubectl}

CNI_VERSION="v0.8.2"
curl -L --remote-name-all "https://github.com/containernetworking/plugins/releases/download/${CNI_VERSION}/cni-plugins-linux-amd64-${CNI_VERSION}.tgz"

CRICTL_VERSION="v1.17.0"
curl -L --remote-name-all "https://github.com/kubernetes-sigs/cri-tools/releases/download/${CRICTL_VERSION}/crictl-${CRICTL_VERSION}-linux-amd64.tar.gz"

ETCD_VERSION="v3.5.0"
curl -L --remote-name-all https://github.com/etcd-io/etcd/releases/download/${ETCD_VERSION}/etcd-${ETCD_VERSION}-linux-amd64.tar.gz

CALICOCTL_VERSION="v3.18.4"
curl -L --remote-name-all https://github.com/projectcalico/calicoctl/releases/download/${CALICOCTL_VERSION}/calicoctl-linux-amd64
