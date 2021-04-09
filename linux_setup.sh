#!/bin/bash
# 换源
echo 'deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal main restricted universe multiverse'>>/etc/apt/sources.list
echo 'deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-updates main restricted universe multiverse'>>/etc/apt/sources.list
echo 'deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-backports main restricted universe multiverse'>>/etc/apt/sources.list
echo 'deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-security main restricted universe multiverse'>>/etc/apt/sources.list

# 更新
apt update -y
apt upgrade -y

# xshell
apt install openssh-server -y
# 检查ssh端口是否开启
#ps -e|grep ssh
# 开启ssh服务
# 确定 #PasswordAuthentication yes 默认为yes，不用修改
# vim /etc/ssh/sshd_config  #PermitRootLogin prohibit-password 修改文 PermitRootLogin yes
# update-rc.d ssh enable # 开机自启动
#/etc/init.d/ssh start

# 经常使用的软件
sudo apt install tree -y
sudo apt install git -y
sudo apt install python3-pip -y
sudo apt install vim -y
# 解决火狐浏览器缺少flash
sudo apt-get install flashplugin-installer
sudo apt install gnome-tweak-tool

# snap安装
sudo snap install vlc
sudo snap install typora

# linux更换主题
# 移除ubuntu原生自带的dock
cd /usr/share/gnome-shell/extensions/
sudo mv ubuntu-dock@ubuntu.com{,.bak}
