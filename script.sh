#! /bin/bash
read -p "Enter the number of users to create: " num
echo -e "$(date +%Y-%m-%d)\nSSH Host:\n$(hostname -I | cut -d ' ' -f 1)\nPort: $(grep -w Port /etc/ssh/sshd_config | cut -d ' ' -f 2)\nExpiration: $(date -d "38 days" +"%Y-%m-%d")\n\n">> vpn.log
echo -e "$(date +%Y-%m-%d)\nSSH Host:\n$(hostname -I | cut -d ' ' -f 1)\nPort: $(grep -w Port /etc/ssh/sshd_config | cut -d ' ' -f 2)\nExpiration: $(date -d "38 days" +"%Y-%m-%d")\n\n" > vpn.txt
for i in $(seq 1 $num)
do
    username=$(pwgen -1)
    password=$username
    useradd -s /bin/false -e `date -d "38 days" +"%Y-%m-%d"` $username
    echo "${username}:${password}" | chpasswd
    echo -e "Username: $username \nPassword: $password\n" >> vpn.log
    echo -e "Username: $username \nPassword: $password\n" >> vpn.txt
    echo -e "$username\thard\tmaxlogins\t1">> /etc/security/limits.conf
    echo -e "Username: $username \nPassword: $password\n" 
    
done
echo -e "$num acccounts has been created"
python3 bot.py
