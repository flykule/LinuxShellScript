#!/bin/bash
# 通常使用md5和sha1进行校验,两者类似

# 生成md5码并储存
md5sum filename > file_sum.md5

# 校验
md5sum -c *.md5

# 使用md5deep进行目录的校验，-r使用递归,-l使用相对路径
md5deep -rl directory_path > directory.md5

# 使用find来完成同样的事情
find directory_path -type f -print0 | xargs -0 md5sum >> directory.md5

