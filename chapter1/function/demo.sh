#!/bin/bash
# 展示函数的创建和使用

# define function
function function_name() {
    echo $1,$2; #访问参数1和参数2
    echo "$@";#以列表的方式一次性打印所有参数
    echo "$*"#类似于$@,但是参数被作为单个实体
    return 0;#返回值
}

# call function
function_name ;

# pass params to funtion
funtion_name arg1 arg2;

# export function
# export -f funtion_name

# get return value,$? == 0 if success,otherwise $? != 0
cmd;
echo $?;

# success_test
cmd
if [[ $? -eq 0 ]]; then
    echo "success"
else
    echo "failed"
fi




