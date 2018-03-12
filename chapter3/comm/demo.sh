#!/bin/bash
# comm命令可用于两个文件之间的比较
# 交集：打印出两个文件共有的行
# 求差：打印出两个文件不同的行
# 差集：打印出包含在文件A中，但是不在其他文件中的行

# comm命令必须使用排序完成的文件作为输入
sort A.txt -o A.txt ; sort B.txt -o B.txt

# 不带任何选项
# 第一列只在Ａ中出现，第二列只在Ｂ中出现，第三列是共同行
comm A.txt B.txt

# 打印交集
comm A.txt B.txt -1 -2

# 求差
comm A.txt B.txt -3
# 生成规范输出
comm A.txt B.txt -3｜sed 's/^\t//'

# 生成Ａ的差集
comm A.txt B.txt -2 -3

# 生成B的差集
comm A.txt B.txt -1 -3



