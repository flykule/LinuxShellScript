#!/bin/bash

# 典型的awk语句
# awk 'BEGIN { statements } { statements } END { end statements }'

# 例如
awk 'BEGIN {i=0}{ i++ }END{ print i }' filename
# 或者
awk "BEGIN {i=0}{ i++ }END{ print i }" filename

# 工作原理
# 1. 执行BEGIN{statements}语句块中的语句
# 2. 从文件或流中读取一行，然后执行pattern{statements}.重复这个过程直到文件结束
# 3. 当读到输入流末尾时，执行end{statements}语句块

# print的参数以逗号进行分割，参数打印时则以空格做为定界符，在awk的print中，双引号作为拼接操作符来使用
echo -e "line1\nline2" | awk 'BEGIN{ print "Start"}{ print } END{ print "END" }'

# 以空格进行分割
echo | awk '{ var1="v1";var2="v2";var3="v3";print var1,var2,var3;}'
# 以"-"拼接
echo | awk '{ var1="v1";var2="v2";var3="v3";print var1"-"var2"-"var3;}'

# 使用选项-v,将外部值传递给awk
VAR=10000
echo | awk -v VARIABLE=$VAR '{ print VARIABLE}'

# 传递多个变量
var1="Variable1";var2="Variable2";
echo | awk '{ print v1,v2}' v1=$var1 v2=$var2

# 当输入来自文件时
awk '{ print v1,v2}' v1=$var1 v2=$var2　filename

# 使用getline读取一行
seq 5 | awk 'BEGIN{ getline;print "Read ahead first lien",$0}{print $0}'

# 使用过滤模式对awk处理的行进行过滤
awk 'NR < 5' # 行号小于５的行
awk 'NR==1,NR==4' # 行号在１到４之间的行
awk '/linux/' # 包含样式linux的行（可以用正则来指定模式)
awk '!/linux/' # 不包含样式linux的行（可以用正则来指定模式)

# 设置字段定界符
awk -F: '{ print $NF }' /etc/passwd
# 或者
awk 'BEGIN{FS=":"}'

# 将命令的输出结果读入变量
echo | awk '{"grep root /etc/passwd"| getline cmdout;print cmdout}'

# for循环
for(i=0;i<10;i++){print $i;}
# 或者　
for(i in array){print array[i]}

# 内置函数不详述，自己查手册
