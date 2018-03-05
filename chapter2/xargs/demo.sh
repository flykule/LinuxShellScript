#!/bin/bash
# 命令xargs的使用
# xargs命令把从stdin接受到的数据重新格式化，再将其作为参数提供给其他命令

# 将多行输入转换成单行输出
cat example.txt | xargs

# 将单行输入转换成多行输出
# -n选项指定最大参数
cat example.txt | xargs -n 3

# 使用自定义定界符来分隔参数
echo "splitXsplitXsplitXsplit" | xargs -d X

# 与find命令结合使用时，必须将-print0选项与其结合使用，以字符null为界定符
find . -type f -name "*.txt" -print0 | xargs -0 rm -f

# 统计所有代码的行数
find source_code_dir_path -type f -name "*.c" -print0 | xargs -0 wc -l

# 结合while语句和子shell
cat files.txt | ( while read arg; do cat $arg; done )
# 等同于cat files.txt | xargs -I {} cat {}

