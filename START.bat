@echo off
if not exist node_modules (
    echo 初回セットアップ中...
    call npm install
)
echo.
echo ChoiAcaプレゼンテーション起動中...
echo ブラウザで http://localhost:3030 を開いてください
echo.
npm run dev