#! /bin/bash
read -p "Enter the number of users to create: " num
for i in $(seq 1 $num)
do
    username="user$i"
    password=$username
    useradd -s /bin/false $username
    echo "${username}:${password}" | chpasswd
    echo "Username: $username" > $username
    echo "Password: $password" >> $username
done