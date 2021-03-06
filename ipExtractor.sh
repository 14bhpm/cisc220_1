#!/bin/bash

# Rawan Alsaadi 10081442 
# Omar Toutounji 10169506
# Beltan Michel 10169162

ipadresses=$(ifconfig | grep -e "inet addr" | awk '{print $2}' | sed s/"addr:"// )
for words in $ipadresses ; do
if [[ $words == 192.168* || $words == 10* ]]; then
  echo Local IP $words
 elif [[ $words == 127* ]]; then
  echo Private IP $words
 else
  echo Public IP $words
 fi; done
