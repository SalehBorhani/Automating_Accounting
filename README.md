# what is Automating Accounting
this is a script written in bash that will creates users with least permission access that can't even interact with server's shell.

this script is wriiten to make accounts for using in ssh injector app as a VPN.
## how to use it ##
first off all you need to install git , pwgen and python (if you want to receive usernames and passwords at telegram) in the remote server 
``` 
$ sudo apt update && sudo apt install git pwgen python3
```
then clone the repository in the server and change directory to the repository
```
$ git clone https://github.com/ArmanTaheriGhaleTaki/Automating_Accounting.git && cd Automating_Accounting
```
and run the script 
```
sudo bash script.sh
```
then enter the number of user that you wish to be created.
the whole users will be saved in **vpn.log** if you run the script over and over.


## how to receive usernames and passwords in telegram via bot ## 



you have to get *HTTP API* from [BotFather](https://t.me/BotFather) it's something like     
`
8652396160:AHFaNEeiMo8AHq_yK_Bo3KLM5xLqE0jZQJs
`    
and add it to the line 4 in [bot.py](https://github.com/ArmanTaheriGhaleTaki/Automating_Accounting/blob/master/bot.py) instead of 
`<Token>`

then create a group add the bot then copy the link of the group via *telegram web* it's something like this 
`
https://web.telegram.org/z/#-166915027
`
 
and insert 
`
-166915027
`
instead of **chat_id** in the middle of function 
`
 data = {"chat_id": "chat_id", "text": text} 
 `
 and it will send the usernames and passwords to the group   
 
 
### enjoy ###  
 **star** this repository and if you have nay question you can send me message [@ArmanTaheriGhaleTaki](https://t.me/ArmanTaheriGhaleTaki)
 
 
 

