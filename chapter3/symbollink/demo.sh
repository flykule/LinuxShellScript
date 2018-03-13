#!/bin/bash

# 创建符号链接
ln -s target symbolic_link_name

# 打印出当前目录下的符号链接
ls -l | grep "^l"

# 使用find打印出当前目录以及子目录下的所有链接
find . -type l -print

# 使用readlink打印出符号链接所指向的目标路径
readlink web



