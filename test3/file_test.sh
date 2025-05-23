# if \r added at the end of word, execute sed -i 's/\r//' file_test.sh
clear
echo "@@@@@ file_test.sh start @@@@@"
#
echo "*** file_test.txt,ls ***";touch file_test.txt;ls;read;
#
echo "*** file_test1.txt,ls -1 ***";touch file_test1.txt;ls -1;read;
#
echo "*** touch file_test2.txt,ls -1 ***";touch file_test2.txt;ls -1;read
#
echo "*** "abc" >  file_test.txt ==> cat file_test.txt ***";echo "abc" >  file_test.txt;cat file_test.txt;read
#
echo "@@@@@ "abc" >> file_test.txt ==> cat file_test.txt @@@@@";echo "abc" >> file_test.txt;cat file_test.txt;read
#
echo "@@@@@ ls -l file_test.txt , ls -l file_test.txt , chmod u+x file_test.txt @@@@@";ls -l file_test.txt;chmod u+x file_test.txt;read
#
echo "***  ***"
ls -l         file_test.txt
chmod 777     file_test.txt
read
echo "***  ***"
ls -l
echo "***  ***"
mv            file_test.txt file_test2.txt
ls
read
echo "***  ***"
cp                          file_test2.txt file_test3.txt
ls
read
echo "***  ***"
cat                         file_test2.txt >> file_test3.txt
read
echo "***  ***"
ls -l -1
read
echo "***  ***"
rm -f file_test1.txt
rm -f file_test2.txt
rm -f file_test3.txt
ls -l -1
