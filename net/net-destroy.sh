#!/bin/bash

for n in foreman_public foreman_pxe openstack_private openstack_public
do
    virsh net-destroy $n
    virsh net-undefine $n
done
