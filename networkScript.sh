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

# check open ports on local Machine
read -p "Enter the IP Address or hostname to check open ports on: " remote_host
echo "Checking Open Ports on $remote_host"
nmap -p- $remote_host
echo "-------------------"

 # Traceroute to a remote Host
 read -p "Enter the IP Address or hortname to trace route to: "trace_host
 echo " Trace route to : $trace_host"
 tracert $trace_host
 echo "-----------------------------------"


 # Test Banwidth using Speed test Cli for windows
 read -p "Do you want to test nbandwith with speedtest CLI? (y/n): " speedtest_option

 if["speedtest_option" == "y"]; then
 ./speedtestbyookla_x64

 fi
echo "-----------------------------"


echo " Network testing Completed"
