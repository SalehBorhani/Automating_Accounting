#! /bin/bash
read -p "Enter the IP address: " ip
read -p "Enter the port number: " port
read -p "Enter the username: " username

./script2.sh | ssh -p $port $username@$ip


