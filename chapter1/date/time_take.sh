#!/bin/bash
# 检查一组命令所花的时间
start=$(date +%s)
ls
end=$(date +%s)
difference=$(( end - start))
echo Time take to execute commands is $difference seconds.

# 另一种方法，使用time<scriptpath>来得到执行脚本所花费的时间



