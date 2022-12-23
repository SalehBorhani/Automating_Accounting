# What is Automating Accounting
This is a script written in bash that will creates users with least permission access that can't even interact with server's shell.

This script is written to make accounts for using in ssh injector app as a VPN.
## How to use it ##
First off all you need to install git , pwgen and python (if you want to receive usernames and passwords at telegram) in the remote server 
``` 
$ sudo apt update && sudo apt install git pwgen python3
```
then clone the repository in the server and change directory to the repository
```
$ git clone https://github.com/SalehBorhani/Automating_Accounting.git && cd Automating_Accounting
```
and run the script 
```
sudo bash script.sh
```
then enter the number of user that you wish to be created.
The whole users will be saved in **vpn.log** if you run the script over and over.


## How to receive usernames and passwords in telegram via bot ## 



You have to get an *HTTP API* from [BotFather](https://t.me/BotFather). It's something like below :    
`
8652396160:AHFaNEeiMo8AHq_yK_Bo3KLM5xLqE0jZQJs
`    
And add it to the line 4 in [bot.py](https://github.com/SalehBorhani/Automating_Accounting/blob/master/bot.py) instead of 
`<Token>`

Then create a group in telegram and add the bot to the group then copy the link of the group via *telegram web*. It's something like this : 
`
https://web.telegram.org/z/#-166915027
`
 
And insert 
`
-166915027
`
instead of **chat_id** in the middle of function 
`
 data = {"chat_id": "chat_id", "text": text} 
 `
 and it will send the usernames and passwords to the group   
 
 
### Enjoy ###  
 **star** this repository and if you have any question you can make issue for that.
 
 
 

