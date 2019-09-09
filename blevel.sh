#!/bin/bash

blevel() {
    catPassword() {
         local index=$(($1-1));
     
         if [ $index -lt 10 ]
         then
             local regex="0$index";
     
         else
             local regex="$index";
     
         fi
         
        password="$(grep "$regex" ~/Aevkeqi/dktgiwtlxgt/Dcpfkv.md | cut -c 4-40)";
    }

    catPassword $1;
    
    sshpass -p $password ssh -p 2220 bandit$1@bandit.labs.overthewire.org;
}
