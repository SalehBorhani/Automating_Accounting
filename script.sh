#! /bin/bash
##### ENVIRONMENT VARIABLES

DAYS_OF_VALIDATION=38



##### FUNCTIONS

pirnt_header () {
echo -e "$(date +%Y-%m-%d)\n SSH Host:\t$(hostname -I| cut -d' ' -f1)\n $(grep -w Port /etc/ssh/sshd_config)\nexpiration\t$(date -d "$DAYS_OF_VALIDATION days" +"%Y-%m-%d")\n\n"
}


pirnt_config_info () {
    echo -e "Username: $username \tPassword: $password\n" 
}



##### THE BODY OF SCRIPT 

read -p "Enter the number of users to create: " num
pirnt_header >> vpn.txt
pirnt_header 
for i in $(seq 1 $num)
do
    username=$(pwgen -1)
    password=$username
    useradd -s /bin/false -e `date -d "$DAYS_OF_VALIDATION days" +"%Y-%m-%d"` $username
    echo "${username}:${password}" | chpasswd
    pirnt_config_info >> vpn.txt
    echo -e "$username\thard\tmaxlogins\t1">> /etc/security/limits.conf
    pirnt_config_info    
done
echo -e "$num acccounts has been created"
