#!/bin/bash
# set iptables to default

#set path
export PATH=/usr/sbin:/sbin:/usr/bin:/bin

# clear iptables
iptables -F


# Set a default policy of DROP
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT

