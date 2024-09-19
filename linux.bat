echo "start build....."
:: 转中文输出
chcp 65001

SET OutFile=acra-go

if exist bin/"%OutFile%" (
    echo "删除旧文件"
    del  bin/"%OutFile%"
)

echo 当前盘符和路径：%~dp0

SET CGO_ENABLED=0
set GOARCH=amd64
set GOOS=linux


go build -o bin/"%OutFile%" ./cli/main.go

SET CGO_ENABLED=0
SET GOOS=windows
SET GOARCH=amd64

