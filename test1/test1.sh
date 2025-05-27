!/bin/bash
echo "*** test1 ***" > example.txt
echo "*** test1 ***" >> example.txt
echo "*** test1 ***" >> example.txt
echo "*** test1 ***" >> example.txt
echo "*** test1 ***" >> example.txt
file_path="example.txt"
cat example.txt

xclip -selection clipboard < "$file_path"
echo "ファイルの内容をクリップボードにコピーしました。"
output_file="output.txt"
echo "copy something to clipboard"
read
xclip -selection clipboard -o > "$output_file"
echo "クリップボードの内容を$output_fileに保存しました。"
cat output.txt
