git


#### gitee  采用 微信登录的方式

#### 
```
删除本地分支
git branch -d <BranchName>

删除远程分支
git push origin --delete <BranchName>

将远程分支拉取到本地新分支
 git checkout -b smp_optimization origin/smp_optimization
```

#### [github 加速指南](https://mp.weixin.qq.com/s/DRfeMOingKP4pmRuEbTxWA)

host配置在线方案
```
    打开系统hosts文件编辑即可，帅编的如下
    140.82.114.4   github.com
    199.232.5.194  github.global.ssl.fastly.net
```
配置 github 提交
```
// 配置局部项目的用户名和密码
git config user.name "dreamSeekerYu"
git config user.password "bai18810493057"
git config credential.helper store // 配置记住用户密码
```
```
pass：bai18810493057
name：dreamSeekerYu
or：3024637102@qq.com
```

#### 单独提交部分更改
```
git status
git add 修改的文件
git commit -m ""
```

#### Vs code 单独提交
```
先在代码管理工具里面将想提交的文件添加到暂存更改里面  === git add

然后正常的添加commit 标记并提交推送     === git commit + git push

```

#### 配置ssh key
```
ssh-keygen -t rsa -C "yupeng.bai@ucarinc,com"
Enter file in which to save the key (/c/Users/baiyupeng/.ssh/id_rsa):  点击回车
然后依次输入密码
找到目录，打开文件，将key 复制粘贴到对应的gitlab上面即可
```

#### 配置全局用户名和密码
```js

// 先卸载本地的配置证书
git config --system --unset credential.helper

// 查看配置
git config --list

// 配置全局用户名和密码
git config --global user.name "yupeng.bai"
git config --global user.password "Bai!@#Bai"

// 配置局部项目的用户名和密码
git config user.name "yupeng.bai"
git config user.password "Bai!@#123"
git config credential.helper store // 配置记住用户密码

git config --global user.email ""


执行git init 命令进行初始化

git config user.name "happy"//git config --global 设置全局配置不带--global 为当前项目配置

git config user.email "111@sina.com"

git config credential.helper store// 配置记住用户密码

git remote add origin https://github.com/dreamhappy/mapEdit.git//配置自己的远程代码仓库地地址

//设置错误可以用git remote remove origin 删除设置重新配置或 git remote set-url origin 进行修改

```

#### 回滚操作


#### 缓存区操作
```js
// 暂存当前本地修改的代码
git stash

// 同步代码 
git fetch origin
//
git merge origin master
// 
git push origin master

// 取出暂存区的代码
git stash pop

```

#### 创建分支（在已有仓库的情况下，提交到分支）

	1. git init 在本地建立一个仓库

	2.git add . 将文件提交到暂存区

	3.git status 检查是否提交成功

	4.git commit -m “备注”

	5.git remote add origin  库名（http。。。）//将本地仓库与远程仓库建立连接
	
	6.git branch 查看分支名称

	7.git branch 分支名 //创建新分支

	8.git push origin 分支名 //将分支加到线上

	9.刷新页面看是否成功
	

#### git基本创建

	1.先在gitGub上创建一个仓库

	2.在要上传的文件中，右击git Bash Here

	3.输入命令 git init 在本地建立一个仓库

	4.git status 检查提交文件

	5.git add . 将文件提交到暂存区

	6.git status 检查是否提交成功

	7.git commit -m “备注”（对本次的提交进行备注，以便后期版本回退等操作）

	8.git remote add origin  库名（http。。。）
	      （将之前在github上创建的仓库地址复制，然后使用命令将本地仓库与远程仓库建立连接）

	9.git push -U origin master 上传（将暂存区的文件推送至远程仓库）

#### 更新分支
	1.git checkout 分支名    切换分支

	2.git add . 提交新代码

	3.girl commit -m "备注"

	4.git push origin 分支名


#### git branch                  查看本地所有分支

            branchName      创建分支
            
            -r              查看远程所有分支   
            
            -a  all         查看本地和远程所有分支
            
            -b              创建并切换分支
            
#### 切换分支
```
git checkout branchName     切换到分支

git checkout -b branchName  创建并切换分支

git fetch origin farBranchName:localBranchName 

                            拉取远分支，并创建本地分支

```
#### 合并分支  merge
```

git merge branchName        合并分支
git merge -abort

```


##### 下载仓库
```
git clone  库名（http。。。）
克隆对应的分支
git clone -b origin dev

```


#### 合并到dev分支上
```
	1.git checkout dev  切换到dev分支

	2.git merge 要合并的分支名（如果有冲突 ---> 解决冲突 ---> git commit -m "备注" ---> git push origin dev）
```

#### 从dev放到自己的分支
```
	1.git checkout 自己的分支名

	2.git pull origin dev  将dev分支的代码拉取到本分支
```

#### 版本回退（找回上一次的代码）
```
查看提交记录
git log 
（ID：从git log 中查到的对应ID）
git reset --hard ID

```

## unrelated histories

    版本问题报错  **fatal: refusing to merge unrelated histories**
    
    强行拉去分支  
    git pull origin branchName --allow-unrelated-histories

##  no upstream
#### Git master branch has no upstream branch的解决
```

在push代码时，出现“git master branch has no upstream branch”问题的原因是没有将本地的分支与远程仓库的分支进行关联

第一种如上图中的提示：
git push --set-upstream origin master

其中的origin是你在clone远程代码时，git为你创建的指向这个远程代码库的标签，它指向repository。为了能清楚了解你要指向的repository，可以用命令git remote -v进行查看。master是你远程的branch，可以用git branch -a查看所有分支，远程分支是红色的部分。然后确定好这两个值后，将值换掉即可。

另一种方法是：
git push -u origin master

同样根据自己的需要，替换origin和master。
两个命令的区别是第一条命令是要保证你的远程分支存在，如果不存在，也就无法进行关联。而第二条指令即使远程没有你要关联的分支，它也会自动创建一个出来，以实现关联。

```
### git push远程分支error: src refspec xxx does not match any.


```

git push origin HEAD:branchName

```
	
#### 删除新建的本地分支
```
 git branch -d branch_name
```
#### 删除新建的远程分支
```
git branch -r -d origin/branch_dev 
or
git push origin :branch_dev
```


#### 撤销操作  
```
撤销所有文件
git checkout head .

复位到对应的版本
git reset --hard commitID

```

####    重命名分支
```
不会覆盖已有的分支   会导致命名失败
git branch -m oldName newName

强行命名并覆盖
git branch -M oldName newName
```
####    删除分支
```
删除已经合并过的分支
如果分支没有被合并  删除失败
git branch -d branchName

不管分支合并与否  直接删除
git branch -D branchName

```

#### 查看分支的历史记录
```
git log 
gitk 查看当前分支的历史记录
gitk branchName 查看某分支的历史记录
gitk --all 查看所有分支

查看每个分支最后的提交
git branch -v

```
#### git pull的merge问题
```
使用 git pull: 更新代码，git 会自动merge不同的更新，

   a.  如果git 自动merge成功，再进行 git push操作就会成功。

   b.  如果git 自动merge失败，使用git status可以查看哪个文件 merge失败，需要手动修改冲突地方，再进行git add git commit操作，之后再git push
   
But，这种方法提交后，就会在提交记录里显示 merge: *********************，而git rebase就能解决这种问题，解决方法如下
```
**解决**
```

```
#### 配置 SSH-agent
```


```


#### git rebase
```
    假如先前推送过代码分支到Gitlab服务器，再执行rebase，
    那么在推送时候，可能服务器会报错。为了克服这个问题，可以使用-f参数

    git push origin rebase -branch –f

```

#### 提交代码到没有权限的git 仓库  fork

#### git入门（7）-Git tags----为版本打上tags

本文链接：https://blog.csdn.net/codectq/article/details/51569549

有时候，在项目开发过程中，版本的发布可能会一直持续，在版本发布的过程中，可能用户更新的步调不一致导致在某个特定版本上，用户出现问题。当需要版本追溯时，如果版本中存在tag，则可以直接定位到版本，并确认问题是否存在。

可以通过git tag查看目前有哪些tag，因为tag的命名或者标注通常都会使用版本号信息。如果想看某个标签的具体信息，可以使用
```
git show tag-name
如果看到我们想要的版本号tag，则可以直接使用

git checkout tag-name
将工程定位到相应的tag处。

那么如果进行打tag和提交呢？

git tag -a V-1.02.003 -m “v-1.02.003 xxx”
通常情况下，我们会使用上面的方法为当前版本添加附注

提交可以有两种方式，单独提交本次tag

git push origin V-1.02.003
提交所有的tags

git push –tags
另外，如果想为之前的提交提交tag，可以使用

git tag -a V-0.02.005 commit-id

```

#### git commit 提交规范
[传送门](https://www.jianshu.com/p/201bd81e7dc9)

    每次提交，Commit message 都包括三个部分：header，body 和 footer
    
    header 是必需的，body 和 footer 可以省略

    不管是哪一个部分，任何一行都不得超过72个字符（或100个字符）。这是为了避免自动换行影响美观。
    
    Header部分只有一行，包括三个字段：type（必需）、scope（可选）和subject（必需）
    
        type 用于说明 commit 的类别，只允许使用下面7个标识。
            
            feat：新功能（feature）
            
            fix：修补bug
            
            docs：文档（documentation）
            
            style： 格式（不影响代码运行的变动）
            
            refactor：重构（即不是新增功能，也不是修改bug的代码变动）
            
            test：增加测试
            
            chore：构建过程或辅助工具的变动
            
                如果type为feat和fix，则该 commit 将肯定出现在 Change log 之中
                其他情况（docs、chore、style、refactor、test）由你决定，要不要放入 Change log，建议是不要
                
#### Vs code 配置 commit 规范插件  主要有两款

##### 1. git-commit-plugin

[传送门](https://www.v2ex.com/t/654391)Git-commit-plugin For Vscode 一款自动生成规范 git 提交信息的插件

     ctrl + Shift + P 呼出 指令行，并键入指令 show git commit template 或者点击 git 插件栏上的小图标唤醒插件界面
##### 2. git-commit-lint-vscode

配置好之后直接在提交工具里面点击按钮即可触发 commit 配置选项

  