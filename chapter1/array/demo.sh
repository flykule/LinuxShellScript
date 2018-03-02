#!/bin/bash
# 演示数组的使用

# 定义，可以使用一列值来单独定义
array_var=(1 2 3 4 5 6)
# 使用key索引定义
array_var[0]="test1"
array_var[1]="test2"
array_var[2]="test3"
array_var[3]="test4"

# 打印出特定索引的数组元素内容
echo ${array_var[0]}
index=4
echo ${array_var[$index]}

# 以清单形式打印出数组中的所有值
echo ${array_var[*]}
# another way
echo ${array_var[@]}

#打印数组长度
echo ${#array_var[*]}



