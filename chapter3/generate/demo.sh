#!/bin/bash

# 生成一个1MB大小的文件junk.data
# if代表输入文件
# of代表输出文件
# bs代表以字节为单位的块大小
# count代表需要被复制的块数
dd if=/dev/zero of=junk.data bs=1M count=1


