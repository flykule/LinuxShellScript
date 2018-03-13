#!/bin/bash

# 生成差异文件

# 文件一
echo this is the original text > version1.txt
echo line2 >> version1.txt
echo line3 >> version1.txt
echo line4 >> version1.txt
echo happy hacking >> version1.txt

# 文件二
echo this is the original text > version2.txt
echo line2 >> version2.txt
echo line4 >> version2.txt
echo GNU is not UNIX>> version2.txt

# 非一体化形式的diff输出如下
echo 非一体化形式的diff输出如下
diff version1.txt version2.txt

# 一体化形式的diff输出
echo 一体化形式的diff输出
diff -u version1.txt version2.txt

# 生成修补文件
diff -u version1.txt version2.txt > version.patch
# 进行修补
echo 开始修补
patch -p1 version1.txt < version.patch

# 撤销修改
patch -p1 version1.txt < version.patch

# 生成目录小差异信息
# -N 将所有缺少的文件视为空文件
# -a 将所有文件视为文本文件
# -u 生成一体化文件
# -r 遍历目录下的所有文件
diff -Naur directory1 directory2
