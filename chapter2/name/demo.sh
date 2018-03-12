#!/bin/bash
# 根据扩展名切分文件名

# 提取文件名
file_jpg="sample.jpg"
name=${file_jpg%.*}
echo File name is: $name

# 提取文件扩展名
extension_name=${file_jpg#*.}
echo File extension name is: $extension_name

URL="www.google.com"
echo ${URL%.*} # 移除.*所匹配的最右边的内容
echo ${URL%%.*} # 将从右边开始一直匹配到最左边的.*移除(贪婪操作符)
echo ${URL#*.}  # 移除*.所匹配的最左边的内容
echo ${URL##*.}  # 将从左边开始一直匹配到最右边的*.移除(贪婪操作符)




