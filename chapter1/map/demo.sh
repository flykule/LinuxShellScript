#!/bin/bash
# 关联数组的使用

# 声明方式
declare -A ass_array
# 添加元素的方式
# 1 list 
ass_array=([index1]=val1 [index2]=val2)
# 2 assign single vlaue by index
ass_array[index1]=val1

#　打印
echo "value at index1:${ass_array[index1]}"

# print indexs
echo ${!ass_array[*]}
# or
echo ${!ass_array[@]}


