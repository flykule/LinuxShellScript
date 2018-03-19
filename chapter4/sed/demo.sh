#!/bin/bash
# 使用sed进行文本替换的命令

# 替换给定文本中的字符串
sed 's/pattern/replace_string' file
# 或者
cat file | sed 's/pattern/replace_string'  

# 默认情况下，只会打印替换后的文本，如果需要保存结果，那么可以使用-i选项
sed -i 's/pattern/replace_string' file

# 要替换所有内容,增加g选项，会替换掉所有匹配的部分
sed -i 's/pattern/replace_string/g' file

# 指定从第Ｎ个匹配的地方开始替换
echo thisthisthisthis | sed 's/this/THIS/2g'
echo thisthisthisthis | sed 's/this/THIS/3g'
echo thisthisthisthis | sed 's/this/THIS/3g'

# 使用任意定界符
sed 's:text:replace:g'
sed 's|text|replace|g'

# 当定界符出现在样式内部时，必须进行转义
sed 's|te\|xt|replace|g'

# 移除空白行,末尾的d选项会移除匹配的行
sed '/^$/d' file

# 用指定的数字替换文件中所有３位数的数字
sed -i 's/\b[0-9]\{3\}\b/NUMBER/g' filename

# 执行文件内容替换的同时，创建备份文件
sed -i .bak 's/abc/def/' file

# 引用之前匹配到的内容可以使用＆符号
echo this is an example | sed 's/\w\+/[&]/g'

# 引用匹配到的子串
echo this is digit 7 in a number | sed 's/digit \([0-9]\)/\1/'

# 组合多个表达式
sed 'expression' | sed 'expression'
# 等价于
sed -e 'expression' -e 'expression'
# 等价于
sed 'expression;expression'

#　例如
echo abc | sed 's/a/A/' | sed 's/c/C/'
echo abc | sed 's/a/A/;s/c/C/'
echo abc | sed -e 's/a/A/' -e 's/c/C/'

# 在sed表达式中使用变量
text=hello
echo hello world |sed "s/$text/HELLO/"
