#!/bin/bash


ip tuntap add dev pcap0 mode tun
ip link set pcap0 up
ifconfig pcap0 promisc

#modprobe dummy;
#ip link set name dm1 dev dummy0;
#ifconfig dm1 up;
#ifconfig dm1 promisc
