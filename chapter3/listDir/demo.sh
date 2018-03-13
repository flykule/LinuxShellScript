#!/bin/bash
# 展示了如何只列出目录的几个方法

ls -d */

# 该选项代表所有的输出项都会添加上一个代表文件类型的字符
ls-F | grep "/$"
# 以起始字符过滤出所有目录类型
ls -l | grep "^d"

find . -type d -maxdepth 1 -print


