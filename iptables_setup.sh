#!/bin/bash
# Firewall setup

#Cclear iptables
iptables -F

# Block all incoming and forward connections, allow all outgoing from the server
iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -P OUTPUT ACCEPT
# Allow local interface
iptables -A INPUT -i lo -j ACCEPT
# Do not touch already established connections
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
# Open the ports SSH, HTTP, HTTPS for all if needed
iptables -A INPUT -p tcp --dport 22 -j ACCEPT
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -A INPUT -p tcp --dport 443 -j ACCEPT
# Allow PING
iptables -A INPUT -p icmp -j ACCEPT
iptables -A OUTPUT -p icmp -j ACCEPT


