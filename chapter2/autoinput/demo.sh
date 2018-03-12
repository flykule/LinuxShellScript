#!/bin/bash

# 向脚本自动发送输入
# -e表明echo会解释转义序列
echo -e "1\n2\n" | /bin/bash ./interactive.sh

# 使用文件自动发送输入
echo -e "1\n2\n" > input.data
/bin/bash ./interactive.sh < input.data

