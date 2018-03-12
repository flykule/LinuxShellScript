#!/bin/bash
# 并行处理md5
PIDARRAY=()
for file in File1.iso File2.iso
do
    md5sum $file$ &
    # $!储存进程的ＰＩＤ进数组
    PIDARRAY+=("$!")
done
# 等待所有后台线程结束
wait ${PIDARRAY[@]}


