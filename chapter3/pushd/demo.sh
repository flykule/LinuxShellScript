#!/bin/bash
# pushd和popd可以用于在多个目录之间进行切换而无需复制并粘贴目录路径,两者都以栈的方式来运作

# 压入并切换路径　
pushd /var/www

# 再压入一个地址
pushd /usr/src

# 查看栈内容
dirs

# 路径从0到n编号，当想切换时:
pushd +3

# 删除最后添加的路径并回到上级目录
popd

# popd +num 可以从列表中移除特定的路径　





