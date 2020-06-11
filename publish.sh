#!/bin/bash

# 判断当前分支

echo "开始打包"

yarn build:rollup

currentDate=$(date +%Y-%m-%d\ %H:%M:%S)


echo "推送 5e-slate-react 开始->"
cd packages
mkdir temp
cp -r slate-react temp
cd temp/slate-react
rm -rf tsconfig.json
rm -rf test
git init
git remote add origin git@github.com:Project5E/slate.git
git add .
git commit -am "update slate-react time: $currentDate"
git checkout -b 5e-slate-react
git push origin 5e-slate-react -f
echo "<-推送 5e-slate 结束"
cd ../..
rm -rf temp
