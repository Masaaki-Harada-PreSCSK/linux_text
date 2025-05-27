#!/bin/bash

# クリップボードにコピーするテキスト
text="Hello, clipboard!"

# xclip を使ってクリップボードにコピー
echo -n "$text" | xclip -selection clipboard

echo "コピーが完了しました！"


#!/bin/bash

# クリップボードからテキストを取得
clipboard_text=$(xclip -selection clipboard -o)

echo "クリップボードの内容: $clipboard_text"
