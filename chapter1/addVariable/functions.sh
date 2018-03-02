#!/bin/bash
# 展示使用函数修改，添加变量

# 通常方法
export PATH=/opt/myapp/bin:$PATH
export LD_LIBRARY_PATH=/opt/myapp/lib;$LD_LIBRARY_PATH

# 定义一个函数在bashrc中
# 该函数首先检查参数二的目录是否存在，如果存在
# 将第一个参数指定的值设置成第二个参数的值加上:
# 随后再跟上第一个参数的原始值.
prepend() { [ -d "$2" ] && eval $1=\"$2':'\$$1\" && export $1; }

# 用法:
# prepend PATH /opt/myapp/bin
# prepend LD_LIBRARY_PATH /opt/myapp/lib


