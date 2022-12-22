#! /bin/bash
read -p "Enter the number of users to create: " num
echo -e "$(date)\n SSH Host:\t$(hostname -I)\n $(grep -w Port /etc/ssh/sshd_config)\n\n">> vpn.txt
for i in $(seq 1 $num)
do
    username=$(pwgen -1)
    password=$username
    useradd -s /bin/false -e `date -d "38 days" +"%Y-%m-%d"` $username
    echo "${username}:${password}" | chpasswd
    echo -e "Username: $username \tPassword: $password\n" >> vpn.txt
    echo -e "$username\thard\tmaxlogins\t1">> /etc/security/limits.conf
    
done
echo -e "$num acccouns has been created"
