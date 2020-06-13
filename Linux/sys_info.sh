#!/bin/bash
#mkdir ~/reasearch 2> /dev/null
if [ $UID -eq 0 ]
	then
		echo "Please do not run this script with sudo."
	exit
	fi

output=$HOME/research/sys_info.txt
ip=$(ip addr | grep inet | tail -2 | head -1)
suids=$(find / -type f -perm /4000 2> /dev/null)

if [ ! -d $HOME/research ]
	then
		mkdir $HOME/research
	fi

if [ -f $output ]
	then
		> $output
	fi
echo "A Quick System Audit Script" >> $output
date >> $output
echo "" >> $output
echo "Machine Type Info:" >> $output
echo $MACHTYPE >> $output
echo -e "Uname info: $(uname -a) \n" >> $output
#echo -e "IP Info: $(ip addr | head -9 | tail -1) \n" 
echo -e "IP Info:" >> $output
echo -e "$ip \n" >> $output
echo "Hostname: $(hostname -s) " >> $output
echo "DNS Servers: " >> $output
cat /etc/resolv.conf >> $output
echo "Memory Info:" >> $output
free >> $output
echo -e "\nCPU Info:" >> $output
lscpu | grep CPU >> $output
echo -e "\nDisk Usage:" >> $output
df -H | head -2 >> $output
echo -e "\nWho is logged in: \n $(who) \n" >> $output
echo -e "\nSUID Files:" >> $output
#sudo find / -type f -perm /4000 >> $output
echo $suids >> $output
echo -e "\nTop 10 Processes" >> $output
ps aux --sort -%mem | awk {'print $1, $2, $3, $4, $11'} | head >> $output


