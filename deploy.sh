#!/usr/bin/env.sh


# 确保脚本本地抛出遇到的异常
set -e

# 构建
npm run build

# 进入生成的文件夹
cd docs/.vuepress/dist

# 如果是发布到自己定义域名
# echo 'www.yourwebsit.com' > CNAME 

git init
git add -A
git commit -m 'deploy'

# 如果你要部署到 https://username.github.io
git push -f git@github.com:dreamSeekerYu/dreamSeekerYu.github.io.git master


