#!/bin/bash
# 分隔符相关的范例

data="name,sex,rollon,location"

# 使用IFS读取变量中的每一个条目
oldIFS=$IFS
IFS=, # noew,
for item in $data
do
    echo Item:$item
done

IFS=$oldIFS

# 用IFS打印出用户以及他们默认的shell
line="root:x:0:0:root:/root:/bin/bash"
oldIFS=$IFS
IFS=":"
count=0
for item in $line;
do
    [ $count -eq 0 ] && user=$item;
    [ $count -eq 6 ] && shell=$item;
    let count++;
done;
IFS=$oldIFS
echo $user\'s shell is $shell;
