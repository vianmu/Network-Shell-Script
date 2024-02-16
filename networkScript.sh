#!/bin/bash

# Network testing script for git bash on Windows

echo "Network Testing Script"

#Check Internet Connectivity

echo "1. Chechinh Internet Conectivity"

ping -c 4 www.google.com

echo "-----------------------"

# Display Network Interfaces and Ip addresses

echo "2. Displaying Network Interfaces and Ip addresses"
ipconfig
echo "-----------------------"

# Display Routing Table

echo "3. Displaying Routing Table"
netstat -rn
echo "-------------------------"

# Dns resolution

echo "4.  DNS resolution"
nslookup www.google.com.co

echo "---------------------"
