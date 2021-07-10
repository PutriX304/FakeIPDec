#!/bin/bash

clear
echo 'FakeIP Deobfuscator'
echo
echo
echo "File & Directory Lists :"
ls --group-directories-first -1 -N
echo
read -p "File Name : " target
if [[ -n $target ]] | [[ -f $target ]]
then
echo
echo 'Result :'
sort -n "$target" | sed '/#/d' && echo # sed -e "s/[^ a-zA-Z1-9']//g" -e 's/ \+/ /' && echo
echo "Total Line : $(wc -l $target | sed 's/[^1-9]//g')"
echo "========================================="
echo 'This Tool Originally By PhynX#4912'
echo
else
clear
echo '[Please Input Correctly]'
exit
fi
