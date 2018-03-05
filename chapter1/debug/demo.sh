#!/bin/bash
# 展示调试脚本的使用

# 使用-x选项，开启shell脚本的跟踪调试功能
# bash -x script.sh

# 使用set -x和set +x进行部分调试
for (( i = 0; i < 6; i++ )); do
    set -x
    echo $i
    set +x
done
echo "Script executed"

#传递变量来控制是否调试
function DEBUG() {
    [ "$_DEBUG" == "on" ] && $@ || :
}
for (( i = 0; i < 10; i++ )); do
    DEBUG echo $i
done

# 利用shebang开启调试
# 将第一行改正为#!/bin/bash -xv
