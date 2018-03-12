#!/bin/bash
# 生成空白文件

# 生成一个空白文件
touch filename

# 批量生成空白文件
for name in {1..100}.txt
do
    touch $name
done

# 修改文件时间戳
touch -d ‘"Fri Jun 25 20:50:14 IST 1999" filename



