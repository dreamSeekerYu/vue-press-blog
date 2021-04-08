#!/usr/bin/env.sh


# 确保脚本本地抛出遇到的异常
set -e

#  如果有 dist 目录，先删除
rm -rf docs/.vuepress/dist

# 构建
npm run build

# 进入生成的文件夹
cd docs/.vuepress/dist

# 如果是发布到自己定义域名
# echo 'www.yourwebsit.com' > CNAME 

git init
git add -A
git commit -m 'deploy'

git config user.name "dreamSeekerYu"
git config user.password "bai18810493057"
git config credential.helper store

# 如果你要部署到 https://username.github.io
git push -u -f https://github.com/dreamSeekerYu/dreamSeekerYu.github.io.git master

cd - # 退回开始所在目录
rm -rf docs/.vuepress/dist