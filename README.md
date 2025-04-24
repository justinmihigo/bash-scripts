### Bash Scripting 
- In our daily lives when trying to interact with os there some tasks we do manually everytime and if it's a sequence of command one has to execute it would be frustrating to write them line by line running every single command.
- To help ourselves from spending so much time writing command by command we can create a file that help us run all those sequence by just running the file and it executes those commands even make we can schedule them using crontab. but that's another topic for another day.
- Today our task is to create a bash script that display system information, cpu and memory information, disk and filesystem, and networking

### Description of the task to be achieved
- Our task was to create a bash script and call it info.sh, and write a sequence of the commands that must execute those commands they will be displaying different kinds of information.
#### The requirements
- Having a VM of linux installed for me was ubuntu
- Have a working terminal and know which terminal you are using
- You know this by using ```ECHO $SHELL``` to get a type of shell you are using for me it was bash
- The path to our terminal looks like ```/bin/bash```
- The last thing you need is an editor you can use nano, vim or even vscode or any editor
- After this you will be set for a good scripting
#### Scripting
- It is hard to complete this in one go there some command you have to test on the side and see there output
- But during the creation of info.sh we have different variables and functions and color variables we set using ANSI escape characters.
- The functions that are there is log(), and print_section() that appends color to the text, other are the commands to execute and append to the file called info.txt for full commands check the info.sh
#### Execution
- Clone the repo 
- Change the directory it will be bash-scripts ```cd bash-scripts```
- Grant the permissions to the current user to execute the file using ```sudo chmod u+x info.sh```
- Run the script using ```./info.sh``` or ```bash info.sh```
- Check ```info.txt``` to check if info has been saved using ```cat info.txt```
### The Key takes
- I was impressed with the learning about the shell getting to create variables and functions, argument passing, and the coloring and everything, it has helped me to hone my skills in filtering what I want. Using lots of ```grep``` to get patterns I want and ```awk``` to get the column you want even the rows really impressive, also using ```head -n``` was usefull to get the first lines of the output we want. Apart from that commands like free -h that shows you the free space and used one was also great. 
