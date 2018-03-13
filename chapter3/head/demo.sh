#!/bin/bash

# 打印文件前10行
head file

# 从stdin读取数据
cat text | head

# 指定打印的行数
head -n 4 file

# 打印除了最后Ｍ行之外的所有行,-M表示一个负数，并非选项
head -n -M file

# 打印除了最后5行之外的所有行
seq 11 | head -n -5

# 打印出文件的第１行至第５行
seq 11 | head -n 5

# 打印文件最后的10行
tail file

# 打印最后5行
tail -n 5 file

# 打印除了前M行之外的所有行
tail -n +(M+1)

# 从一个内容不断增加的文件中读取数据
# -f选项会使tail密切关注文件中新添加的内容,从而保持更新
tail -f growing_file

# 监视日志文件
tail -f /var/log/alternatives.log
# 或者　
# 使用dmesg查看内核的环形缓冲区消息
dmesg  tail -f

# tail会随着给定进程的结束而结束
PID=$(pidof FOO)
tail -f file --pid $PID
