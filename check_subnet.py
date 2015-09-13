#!/usr/bin/env python3
# -*- coding: utf-8 -*

from netaddr import IPNetwork, IPAddress
import netifaces as ni

IFACES = ['eth0', 'wlan0']
SUBNETS = [IPNetwork('164.0.0.0/8')]

IP_KEY = 2

for iface in IFACES:
    if IP_KEY in ni.ifaddresses(iface):
        ip_addr = ni.ifaddresses(iface)[IP_KEY][0]['addr']

        if any(IPAddress(ip_addr) in subnet for subnet in SUBNETS):
            print(1)
            break
else:
    print(0)
