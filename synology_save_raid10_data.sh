#!/usr/bin/env bash

sudo -i

apt-get update
apt-get install -y mdadm lvm2

mdadm -Asf && vgchange -ay

cat /proc/mdstat
lvs

#ubuntu@ubuntu:~$ cat /proc/mdstat 
#Personalities : [raid10] 
#md2 : active raid10 sdb3[0] sde3[3] sdd3[4]
#      3897385088 blocks super 1.2 64K chunks 2 near-copies [4/3] [UU_U]




mkdir /mnt/roSynology

mount /dev/md2 /mnt/roSynology/ -o ro


