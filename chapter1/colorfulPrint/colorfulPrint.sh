#!/bin/bash
# 实现用echo进行彩色打印

# \e[1;${RGB}m开启想要的着色，\e[0m甚至文本为初始颜色
echo -e "\e[1;31m This is red text \e[0m"

