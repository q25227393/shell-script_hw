#!/bin/bash
#Author:Yian-Hen Hsu
#Time:2015.02.05 Thu.
ans=0
correct=false
until [ "$correct" == "true" ]
do
 echo -e "what do you want to know?\n1.The logged of each user.\n2.The logged of each IP address or server address."
 read ans
 if [ "$ans" == 1 ]; then 
  last | awk '{print $1}' | sort | uniq -c | sort -n -r | awk -F " " 'NR==1 {print $2}i'
  correct=true
 elif [ "$ans" == 2 ]; then
  last | awk '{print $3}' | sort | uniq -c | sort -n -r | awk -F " " 'NR==1 {print $2}i'
  correct=true
 else
  echo "Oops!\nPlease enter again."
 fi
done
