# if \r added end of word, execute sed -i 's/\r//' file_test.sh
touch file_test.txt
ls
read
touch file_test1.txt
ls
read
touch file_test2.txt
ls
read
echo "abc" >  file_test.txt
cat           file_test.txt
read
echo "abc" >> file_test.txt
cat           file_test.txt
read
ls -l         file_test.txt
chmod u+x     file_test.txt
read
ls -l         file_test.txt
chmod 777     file_test.txt
read
ls -l
mv            file_test.txt file_test2.txt
ls
read
cp                          file_test2.txt file_test3.txt
ls
read
cat                         file_test2.txt >> file_test3.txt
read
ls -l -1
read
rm -f file_test.txt
rm -f file_test2.txt
rm -f file_test3.txt
ls -l -1
