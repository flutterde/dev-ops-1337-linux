# dev-ops-1337-linux
The linux session, s1

## Basic Commands
```bash
cd # navigate between directories
ls # list files in the current directory
mkdir # create a new directory
rm # remove files or directories
cp # copy files or directories
mv # move or rename files or directories
env #dispaly envirements
export KEY=VALUE #add something to your env
unset <KEY> #remove from env
```

## File Permissions
```bash
chmod # change file permissions
chown # change file ownership
ls -l # view file permissions
```

## Networking Commands
```bash
ping # check connectivity to a host
curl # send requests to servers
wget # download files from the web
ifconfig/ip # view or configure network interfaces
netstat # view network connections
```

## Process Management
```bash
ps # display currently running processes
top # monitor system processes in real-time
htop # interactive process viewer (requires installation)
kill # terminate a process by PID
pkill # terminate processes by name
jobs # list background jobs
bg # resume a background job
fg # bring a background job to the foreground
```

## Package Management (Debian-based Systems)
```bash
apt update # update package list
apt upgrade # upgrade installed packages
apt install <package> # install a package
apt remove <package> # remove a package
dpkg -i <package_file> # install a local package file
```

## Disk Management
```bash
df -h # display disk space usage
du -sh <directory> # display directory size
mount # mount a filesystem
umount # unmount a filesystem
fdisk # partition management
```

## Shell Scripting
```bash
#!/bin/bash
# This is a basic shell script example

echo "Hello, World!"
for i in {1..5}
do
  echo "Number $i"
done
```

## User Management
```bash
adduser <username> # create a new user
passwd <username> # set or change a user's password
usermod -aG <group> <username> # add a user to a group
whoami # display the current user

#----------------------------------
sudo useradd -m <username> && echo "<username>:<password>" | sudo chpasswd # create a new user and set password in one command
```

## Logs and Monitoring
```bash
tail -f /var/log/syslog # view system logs in real-time
dmesg # view kernel messages
uptime # display system uptime
free -h # show memory usage
```

## Task Scheduling
```bash
crontab -e # edit crontab for scheduling tasks
# Example: Schedule a script to run at midnight
0 0 * * * /path/to/script.sh
```

## Redirections
```bash
>  # redirect output to a file (overwrite)
>> # redirect output to a file (append)
<  # take input from a file
|  # pipe output of one command as input to another

# Examples:
echo "Hello, World!" > file.txt   # write to file.txt (overwrite)
echo "Another line" >> file.txt  # append to file.txt
cat < file.txt                   # read input from file.txt
ls -l | grep "test"              # pass ls output to grep
```