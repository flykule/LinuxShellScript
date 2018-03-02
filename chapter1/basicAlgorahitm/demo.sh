#!/bin/bash
# 展示使用shell进行基本数学运算

#　变量可以储存数字
no1=4;
no2=5;
echo $no1
echo $no2

# let命令可以直接执行基本的算数操作，当使用let时
# 变量之前不需要再添加$
let result=no1+no2
echo $result
# increment
let no1++
# decrement
let no1--
# short way
let no1+=6
let no2-=6
# other way
result=$[ no1 + no2 ]
# add prefix $
result=$[ $no1 + $no2 ]
# use (())
result=$(( no1 + 40 ))
# use expr
result=`expr 3 + 4`
result=$( expr 3 + 4 )
# bc是一个数学运算的高级工具，可以使用他执行浮点数运算并应用高级函数
echo "4 * 0.56" | bc

# another bc example
no=54
result=`echo "$no * 1.5"| bc`
echo $result

# 设定精度
echo "scale=2;3/8" | bc

# 进制转换
no=100
echo "obase=2;$no" | bc
no=1100100
echo "obase=10;ibase=2;$no" | bc

# 计算平方根
echo "sqrt(100)" | bc #Square root
echo "10^20" | bc #Square
