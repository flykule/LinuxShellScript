#!/bin/bash
# 实现在输入密码时的遮盖
echo -e "Enter password:"
# 禁止将输出发送到终端
stty -echo
read password
# 允许将输出发送到终端
stty echo
echo
echo Password read.


