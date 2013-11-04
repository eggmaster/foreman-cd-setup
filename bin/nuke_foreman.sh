#!/bin/bash

VM=foreman_cd

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

virsh list | grep "[[:space:]]$VM[[:space:]]" | awk '{print $1}' | while read n; do virsh destroy $n; done && virsh undefine $VM
