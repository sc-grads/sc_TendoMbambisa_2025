#!/bin/bash    

pwd #finds the current directory

cd /etc #moves to the /etc directory

cd #moves to the home  directory

ls -l #Lists files in the current directory

ls -R #lists files recurively

cat /etc/shells  # Displays contents of the shells file

man ls # opens manual for ls command

clear #clears your terminal(shell)

exit #exits the session

ls --help #Displays information for commands

man -k ls  #Searches man pages for a keyword. fromat is ma -k <keyword> 

cd .. # moves to parent directory

mkdir dir #creates new directory format is mkdir <directory name>

mkdir -p <dir1/dir2/dir3> #Creates nested directories.

rmdir dir #removes empty directory

rm -rf dir #removes a directory with its contents

echo $VARIABLE_NAME # shows variable name


printenv #shows environments

PS1="\u@\h:\w$ " #changes hwo your username in linux appears

ps #displays process status

alias #List or create aliases.

unalias # Remove aliases.

echo $<variable_name> # Display the value of an environment variable.

export <variable_name> # Create or update an environment variable.

unset <variable_name> #Remove an environment variable.

man <command_name> # View the manual page of a command to learn about environment variables it uses

# ----------------------------------------
# Customizing the Shell Prompt in Linux
# ----------------------------------------

PS1="\u@\h:\w$ " #this displays the username,time,hostname,basename of working directory(eg home) ps look at confluence doc to understand

alias # List or create aliases.

unalias #Remove aliases.

printenv #Display environment variables.

echo $<variable_name> #Display the value of an environment variable.

export <variable_name> #Create or update an environment variable.

unset <variable_name> #Remove an environment variable.

man <command_name> #View the manual page of a command to learn about environment variables it uses

ps #command displays currently running processes.

ps -e  #shows all processes running on the system.

ps -ef #shows full listing of all processes with details.

ps -u username #shows processes of a specific user

ps -e --forest #Show processes in a tree format

ps -eH #Show processes in a tree format

pstree #Show processes in a tree format

top #Interactive process viewer

htop #Alternative interactive process viewer

jobs #lists jobs in your directory

# -----------------------------------
# Installing in ubuntu
# -----------------------------------
sudo apt install nginx #Install Nginx

sudo apt update #refresh the list of available software format: sudo apt install <package>

systemctl status nginx # checks if nginx is running format: systemctl status <service>

curl 127.0.0.1 # test if nginx is installed

sudo apt install mysql-server -y # install mysql

curl #Test web requests or download files.

ip a # Show network info.

mysql -u root #login into mysql

CREATE DATABASE wordpress; #create database in sql

CREATE USER 'wordpress'@'localhost' IDENTIFIED BY 'wordpress123'; #create user in sql

GRANT ALL PRIVILEGES ON wordpress.* TO 'WordPress'@'localhost'; #grant pemrmissions 

exit; #exit SQL

mysql -u wordpress -p wordpress #test user in sql

sudo apt install php-fpm php-mysql php-curl php-mbstring php-imagick php-xml php-zip -y # install php