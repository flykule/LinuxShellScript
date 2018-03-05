#!/bin/bash
# tr可以对来自stdin的内容进行字符替换，删除，以及重复字符压缩

# 调用格式 tr [options] set1 set2
# 将来自stdin的输入字符从set1映射到set2,然后将输出写到stdout
# 如果set2的长度小于set1,会不断重复其最后一个字符，直到长度相等
# 如果相反，那么超出set1长度的部分会被忽略

# 将输入字符由大写转换成小写
echo "HELLO WHO IS THIS" | tr 'A-Z' 'a-z'

#加密和揭秘
echo 12345 | tr '0-9' '9876543210'
echo 87654 | tr '9876543210' '0-9' 
echo "tr came, tr saw, tr conquered." | tr 'a-zA-Z' 'n-za-mN-ZA-M'
echo ge pnzr, ge fnj, ge pbadhrerq. | tr 'a-zA-Z' 'n-za-mN-ZA-M'

# 用tr删除字符，-d选项制定要删除的字符集
echo "Hello 123 world 456" | tr -d '0-9'

# 使用-c选项使用补集
echo hello 1 char 2 next 4 | tr -d -c '0-9 \n'

# 使用-s选项压缩空白字符
echo "GNU is not    UNIX"| tr -s ' '

# 可以使用字符集,例如
tr '[:lower:]' '[:upper:]'


