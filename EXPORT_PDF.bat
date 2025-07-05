@echo off
if not exist node_modules (
    echo 初回セットアップ中...
    call npm install
)
echo PDF生成中...
call npm run export
echo.
echo 完了: slides-export.pdf
pause