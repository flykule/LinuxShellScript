#!/bin/bash
# 临时文件命名与随机数

# 创建临时文件
filename=`mktemp`
echo $filename

# 创建临时目录
dirname=`mktemp -d`
echo $dirname

# 仅仅想生成文件名而不生成实际文件或目录
tempfile=`mktemp -u`
echo $tempfile

# 根据模版创建临时文件名
# mktemp工作的前提是模版中最少有3个X
mktemp test.XXX

