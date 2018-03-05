#!/bin/bash
# 展示别名的用法

# create a alias
alias new_command='command sequence'

# alias install='sudo apt install'
# 可以使用install name代替sudo apt install name

# alias的作用时间只在当前终端中生效，如果要一直生效，可以放入~/.bashrc文件
# 可以这样添加
# echo 'alias install='sudo apt install' >> ~/.bashrc

# 删除alias命令
unalias new_command='command sequence'

# 创建一个别名rm,能够删除原始文件的同时在backup目录中保存副本
alias rm='cp $@ ~/backup && rm $@'

# 别名的安全使用
# 攻击者可能使用别名伪装成特权命令，可以对别名进行转义来确保执行原来的命令
# \command


