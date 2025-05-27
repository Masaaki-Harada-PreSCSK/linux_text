#!/bin/bash

# コピーしたいファイル
file_path="example.txt"

# ファイルの内容をクリップボードにコピー
xclip -selection clipboard < "$file_path"

echo "ファイルの内容をクリップボードにコピーしました。"


#!/bin/bash

# 書き出したいファイル名
output_file="output.txt"

# クリップボードの内容をファイルに書き出す
xclip -selection clipboard -o > "$output_file"

echo "クリップボードの内容を $output_file に保存しました。"
ls -1
cat output.txt
