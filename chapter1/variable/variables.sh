#!/bin/bash
# 显示变量的用法

#普通的打印
fruit=apple
count=5
echo "We have $count ${fruit}(s)"
# 单引号的时候不会打印变量"
echo 'We have $count ${fruit}(s)'

# 获取字符串长度
str="Hello World"
length=${#str}
echo $length

# 识别当前的shell
echo $SHELL
# 或者
echo $#

#　检查是否为超级用户
if [ $UID -ne 0 ]; then
    echo Non root user.Please run as root.
else
    echo Root user
fi

# 修改Bash提示字符串

# 查看当前的PS1变量
cat ~/.bashrc | grep PS1
# 修改提示字符串,也可以设置成彩色提示符
# export PS1="WhatEver"
