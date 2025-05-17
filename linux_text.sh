#!/bin/bash
# Comment
clear
#
echo "*** ls ***";ls;echo
#
echo "*** ls -1 ***";ls -1;echo
#
echo "*** ls -a | sort ***";ls -a | sort;echo
#
echo "*** ls -1 -a | sort | less ***";ls -1 | sort | less > output.txt;cat  output.txt;echo "output end"
#
echo "*** whoami ***";whoami;echo 
# 
echo "*** ls -l ***";ls -l;echo
#
echo "*** ls -d ***";ls -d;echo
#
echo "*** hostname , hostname -i , hostname -I ***";hostname;hostname -i;hostname -I;echo
#
echo "*** if文のサンプル ***";x=10;y=10
if [ $x -eq $y ]; then
   echo "x と y　は等しい"
else
   echo "x と y　は等しくない"
fi
echo
y=20
if [ $x -eq $y ]; then
   echo "x と y　は等しい"
else
   echo "x と y　は等しくない"
fi
echo
#
echo "*** for loop ***"
j=0
for i in {1..5}
do
  echo "${i}" "$((j++))"
done
echo
echo "*** linux version ***"
cat /etc/os-release
echo
echo "*** kernel version ***"
uname -a
echo
# do loop , execute batch file , stdin/stdout , pause , message box
echo "*** . test1.sh ***";. test1/test1.sh;echo
echo "*** . test2.sh ***";. test2/test2.sh;echo
echo "*** source test1.sh ***";source test1/test1.sh;echo
echo "*** source test2.sh ***";source test2/test2.sh;echo
echo "*** /bin/bash test1.sh ***";/bin/bash test1/test1.sh;echo
echo "*** /bin/bash test2.sh ***";/bin/bash test2/test2.sh;echo
echo "*** message in ***"
echo "### please input your name ###"
read name
echo "Welcome,$name !!"
echo "### Are you ready ? ###"
read responce
if  [ $responce = 'yes' ]; then echo "You are ready."
else echo "You are not ready."
fi