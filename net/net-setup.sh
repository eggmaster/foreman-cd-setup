#!/bin/bash

for n in foreman_public foreman_pxe openstack_private openstack_public
do
    virsh net-define $n.xml
    virsh net-start $n
    virsh net-autostart $n
done
