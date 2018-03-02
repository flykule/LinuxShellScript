#!/bin/bash
# 展示文件描述符以及重定向流的用法

# 将输出文本重定向或者保存到一个文件中
echo "This is a sample text 1" > temp.txt
# append text to file end
echo "This is sample text 2" >> temp.txt

# 当有错误时将输出错误信息,如果一个命令发生错误，它会
# 返回一个非0的退出状态，当命令成功时，它会返回数字０
# 退出状态可以从变量$?中获得
# ls +

# 下面的命令不会输出到文本里，因为stdout里面没有内容
# ls + > out.txt

# 重定向stderr
ls + 2>out.txt
# 将stderr与stdout分开重定向
cmd 2>stderr.txt 1>stdout.txt

# 将stderr转换成stdout,使得他和stdout重定向到一个文件中
cmd 2>&1 output.txt
# 简化
cmd &> output.txt

# 如果将stderr重定向到/dev/null中，可以清除一切错误信息
cmd 2>/dev/null

# 重定向加继续传输数据
# command | tee FILE! FILE2
ls -al | tee temp.txt | cat -n
# 添加而不是覆盖
ls -al | tee -a temp.txt | cat -n

# 可以使用stdin做为命令参数，只需将-作为命令的文件名参数即可
echo who is this | tee -

# 将文件重定向到命令
# cmd < file

# 将脚本内部的文本重定向
# 第一行和最后一行之间的文本都会被当做stdin数据
cat<<EOF>log.txt
LOG FILE HEADER
This is a test log file
Fuction: System statistics
EOF

#自定义文件描述符
exec 3<input.txt #使用文件描述符３来打开并读取文件
exec 4>output.txt #打开文件进行写入
exec 5>>input.txt #追加模式　

