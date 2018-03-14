#!/bin/bash

# 统计行数
wc -l file

# 接受stdin作为输入
cat file | wc -l

# 统计单词数
wc -w file
cat file | wc -w

#统计字符数
wc -c filF
cat file | wc -c

# 配合echo,-n选项避免产生额外的换行符
wc file

# 使用-L选项打印出文件中最长一行的长度
wc file -L


