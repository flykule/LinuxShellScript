#!/bin/bash
# chattr可以将文件设置为不可修改

# 将一个文件设置为不可修改
chattr +i file

# 移除不可修改状态
chattr -i file


