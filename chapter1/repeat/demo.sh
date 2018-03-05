#!/bin/bash
# run until success

# 该函数以参数形式传入函数的命令，如果命令执行成功，则返回
# while后面的:代表总是返回为０的退出码
repeat()
{
    while :; do
        $@ && return
        # 延时
        # sleep 30;
    done
}


