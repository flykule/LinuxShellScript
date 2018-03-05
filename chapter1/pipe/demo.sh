#!/bin/bash
# 展示如何组合多个命令以及如何读取其输出

# 组合两个命令
ls | cat -n > out.txt

# 读取由管道相连的命令序列的输出
cmd_output=$(ls | cat -n)
echo $cmd_output

# 反引用
cmd_output=`ls | cat -n`
echo $cmd_output

# 利用子shell生成一个独立的进程,可以使用()操作符来生成一个子shell
# 子shell中进行的任何操作不会影响到主shell
pwd;
(cd /bin; ls);
pwd;

# 通过引用子shell的方式保留空格和换行符
out="$(cat text.txt)"
echo $out

