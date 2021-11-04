#!/bin/bash

clear
echo 'FakeIP Deobfuscator'
echo '==================='
echo '           by:PhynX'
echo
read -p "File Name : " target
if [[ -n $target ]] | [[ -f $target ]]
then
echo
echo 'Result #1 (#):'
sort -n "$target" | sed '/^$/d' | sed '/#/d' && echo && echo
echo 'Result #2 (//):'
sort -n "$target" | sed '/^$/d' | sed '/#/d' | sed -e '/^[ \t]*\/\//d' && echo
echo "Total Line : $(wc -l $target | sed 's/[^1-9]//g')"
echo "========================================="
echo 'This Tool Originally By PhynX#0745'
echo
else
clear
echo '[Please Input Correctly]'
exit
fi
