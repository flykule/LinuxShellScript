#!/bin/bash
# 展示read命令的用法

# 从输入中读取n个字符并存入变量
# read -n number_of_chars variable_name
read -n 2 var
echo $var

# 用无回显的方式读取密码
read -s var

# 显示提示信息
read -p "Enter input: " var

# 在特定时限内读取输入
# read -t timeout var
read -t 2 var
echo $var

# 用特定的定界符作为输入行的结束
# read -d delim_char var
read -d ":" var
echo  $var


