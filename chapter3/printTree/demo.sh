#!/bin/bash

# 打印目录树
tree ~/unixfs

# tree path -P PATTERN 用通配符描述样式　
tree PATH -P "*.sh"

# 重点标记出符合某种样式之外的文件
tree PATH -I "*.sh"

# 使用-h选项同时打印出文件和目录的大小
tree -h

# 生成一个ＨＴＭＬ输出
tree PATH -H http:://localhost -o out.html
