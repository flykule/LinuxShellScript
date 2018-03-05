#!/bin/bash
# 演示如何获取终端数据

# 获取终端的行数和列数
tput cols
tput lines

# 打印出当前终端名
tput longname

# 将光标移动到(100,100)处
tput cup 100 100

# 设置文本前景色,n的范围为０到７
# tputsetf n

# 设置文本为粗体
tput bold

# 设置下划线的起止
tput smul
tput rmul

# 删除当前光标位置到行尾的所有内容
tputed


