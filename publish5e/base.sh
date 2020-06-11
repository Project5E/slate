#!/bin/bash

# 判断当前分支

echo "step1: 开始打包---->"
yarn build:rollup

echo "step2: 开始推送 slate ---->"
./publish5e/slate.sh

echo "step3: 开始推送 slate-history ---->"
./publish5e/slate-history.sh

echo "step4: 开始推送 slate-hyperscript ---->"
./publish5e/slate-hyperscript.sh

echo "step5: 开始推送 slate-react ---->"
./publish5e/slate-react.sh

echo "step6: 删除temp ---->"
cd packages
rm -rf temp