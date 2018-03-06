#!/bin/bash
# 展示sort和uniq命令的常见用法

# 对一组文件进行排序
# sort file1.txt file2.txt2 file3.txt > sorted.txt
# 或者
# sort file1.txt file2.txt2 file3.txt -o sorted.txt

# 按数字顺序进行排序
# sort -n file.txt

# 按照逆序进行排序
# sort -r file.txt

# 按照月份进行排序
# sort -M file.txt

# 合并两个已排序过的文件
# sort -m sorted1 sorted2

# 找出已排序文件中不重复的行:
# sort file1.txt file2.txt | uniq

# 检查文件是否已经排序过:
sort -C filename;
if [[ $? -eq 0 ]]; then
    echo Sorted;
else
    echo Unsorted;
fi

# 依据第1列，以逆序形式排序
# sort -nrk 1 data.txt

# 依据第2列进行排序
# sort -k 2 data.txt

# 用字符在行内的起止位置作为依据排序
# sort -nk 1,1 data.txt

# 与以\0作为终止符的xargs命令相兼容
# sort -z data.txt | xargs -0

# 忽略空白以字典序进行排序
# sort -bd unsorted.txt

# uniq命令通过消除重复内容，从给定输入中找出唯一的行，它也可以用来找出输入中
# 出现的重复行.
# uniq命令只能作用于排过序的数据输入，因此，要么使用管道，要么将排过序的文件
# 作为输入，与sort命令结合使用.

# 打印唯一的行
# uniq sorted.txt

# 先sort
# sort unsorted.txt | uniq

# 只显示唯一的行
# uniq -u sorted.txt
# 或者
# sort unsorted.txt | uniq -u

# 统计各行在文件中出现的次数
# sort unsorted.txt | uniq -c

# 找出文件中重复的行:
# sort unsorted.txt | uniq -d

# -s 指定可以跳过前n个字符
# -w 指定用于比较的最大字符数

# 忽略前两个字符指定用于比较的２个字符
# sort data.txt | uniq -s 2 -w 2

# 使用uniq命令生成包含0值字节终止符的输出:
# uniq -z file.txt

# 删除所有指定的文件，uniq命令过滤掉了重复的名字
# uniq -z file.txt | xargs -0 rm

