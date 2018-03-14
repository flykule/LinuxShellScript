#!/bin/bash

# 搜索包含匹配行的文本
grep pattern filename
grep "pattern" filename

# 配合stdin
echo -e "this is a word\nnext line" | grep word

# 搜索多个文件
grep "match_text" file1 file2 file3

# 高亮匹配到的部分
grep word filename --color

# grep命令只解释match_text中的某些特殊字符，使用-E选项开启正则
grep -E "[a-z]+" filename
egrepE "[a-z]+" filename

# 只输出匹配到的文本部分，可以使用选项-o
echo this is a line | egrep -o "[a-z]+\."

# 统计文件中匹配到的行数
grep -c "text" filename

# 统计文件中匹配的数量
echo -e "this is a word\nnext line" | grep -o "word" | wc -l

# 要打印出包含匹配字符串的行号
grep linux -n sample1.txt
# 或者　
cat sample1.txt | grep linux -n

# 当涉及多个文件时，它会打印出文件名
grep linux -n sample1.txt sample2.txt

# 打印模式匹配所位于的字符或字节偏移
# -b和－o选项总是配合使用
echo gun is not unix | grep -b -o "not"

# -l选项返回匹配文件列表
# -L是它的相反选项
# 搜索多个文件并找出匹配文件列表
grep -l linux sample1.txt sample2.txt

# 递归搜索文件
grep "text" . -R -n

# -i忽略大小写
echo hello world | grep -i "HELLO"

# 匹配多个样式
grep -e "pattern1" -e "pattern1"

# 使用-f样式文件提供多个样式
grep -f pattern_filesource_filename

# 在grep搜索中指定或排除文件

# 目录中递归搜索所有的.c和.cpp文件
grep "main()" . -r --include *.{c,cpp}

# 排除所有的README文件
grep "main()" . -r --exclude "README" 

# grep使用-Z选项输出以0值字节做为终结符的文件名
grep "text" file* -lZ | xargs -0 rm

# 要打印匹配某个结果之后的３行
seq 10 | grep 5 -A 3

# 要打印匹配某个结果之前的３行
seq 10 | grep 5 -B 3

# 要打印匹配某个结果之前以及之后的３行
seq 10 | grep 5 -C 3

# 如果有多个匹配，那么使用--作为各部分之间的定界符
echo -e "a\nb\nc\na\nb\nc" | grep a -A 1
