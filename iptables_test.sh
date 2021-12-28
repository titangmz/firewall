#!/bin/bash
# Firewall setup

#Cclear iptables
iptables -F

# Allow PING
iptables -A INPUT -p icmp -j ACCEPT
iptables -A OUTPUT -p icmp -j ACCEPT