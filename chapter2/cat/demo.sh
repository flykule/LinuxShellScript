#!/bin/bash
# 演示cat的使用

# 用cat打印文件的内容
# cat file1 file2 file3...
cat file.txt

#从标准输入中读取
ls | cat -n

#　拼接标准输入和另外一个文件的数据
# -代表stdin的文件名
echo 'Text through stdin' | cat - file.txt

# 删除多余的空白行
cat -s file.txt

# 将制表符显示为＾｜
cat -T file.py

# 显示行号
cat -n file.txt




