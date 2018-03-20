#!/bin/bash
# cut是一个帮我们将文本按列进行分割的小工具

# 要提取特定的字段或列
cut -f FIELD_LIST filename

# 显示第２列和第３列
cut -f 2,3 filename

# 从stdin中读取输入文本
# 对于没有定界符的行，会原样打印，如果不想打印，可以使用-s选项
cut -f1 filename

# 提取多个字段
# 提供一个由逗号分割的列号列表作为-f选项的参数　
cut -f2,4 filename

# 也可以用--complement选项对提取的字段进行补集运算
# 打印出除第３列之外的所有列
cut -f3 --complement filename

# 指定字段的定界符
cut -f3 --complement -d";" filename

# 指定字段的字符或字节范围　
# N- 从第N个字节，字符或字段到行尾
# N-M
# -M


