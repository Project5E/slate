#!/bin/bash

currentDate=$(date +%Y-%m-%d\ %H:%M:%S)

echo "推送 5e-slate-hyperscript 开始 --->"
cd packages
mkdir temp
cp -r slate-hyperscript temp
cd temp/slate-hyperscript
rm -rf tsconfig.json
rm -rf test
git init
git remote add origin git@github.com:Project5E/slate.git
git add .
git commit -am "update slate-hyperscript time: ${currentDate}"
git checkout -b 5e-slate-hyperscript
git push origin 5e-slate-hyperscript -f
echo "推送 5e-slate-hyperscript 结束 --->"