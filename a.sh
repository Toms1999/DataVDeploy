#!/bin/bash
**# 第一次clone项目后，输入一次用户名和密码就可以免密push了
#  
# 使用方法 *source git.sh 仓库地址***
folder="/home/gitworkspace/" #clone项目的存放路径
user_name="用户名"
user_email="用户邮箱"
yum -y install git &> /dev/null
if [ ! -d $folder ];then
  mkdir $folder

fi
cd $folder &> /dev/null || exit
if [ "$1" != '' ];then
  git clone "$1"
  git config --global user.name "$user_name"
  git config --global user.emal "$user_email"
  #这一步会在用户目录下的.gitconfig文件最后添加：
  #
  #[credential]
  #   helper = store
  #
  #push你的代码 (git push), 这时会让你输入用户名和密码, 这一步输入的用户名密码会被记住,
  #下次再push代码时就不用输入用户名密码!这一步会在用户目录下生成文件.git-credential记录用户名密码的信息。
  git config --global credential.helper store 
else :
  echo "please add remote url. eg:https://gitee.com/haojie_xuexi/linux-cloud-computing"
fi
echo OK!

