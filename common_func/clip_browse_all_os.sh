#このスクリプトは、実行しているOSを判別し、適切なクリップボード参照コマンドを実行します。
#!/bin/bash

case "$(uname -s)" in
    Darwin)
        # macOS
        pbpaste
        ;;
    Linux)
        # Linux (X Window System環境)
        if command -v xclip &> /dev/null; then
            xclip -o -selection clipboard
        elif command -v xsel &> /dev/null; then
            xsel -b -o
        else
            echo "xclip or xsel not found. Please install one of them for clipboard access." >&2
            exit 1
        fi
        ;;
    CYGWIN*|MINGW32*|MSYS*|MINGW*)
        # Windows (Git BashなどのMinGW環境)
        powershell.exe -Command "Get-Clipboard"
        ;;
    *)
        echo "Unsupported OS." >&2
        exit 1
        ;;
esac
