#!/bin/bash
# 批量重命名和移动
# rename命令利用正则表达式修改文件名

# 将*.JPG更名为*.jpg
rename *.JPG *.jpg

# 将文件名中的空格替换成字符"_"
rename 's/ /_/g' *

# 转换文件名的大小写
rename 'y/A-Z/a-z/' *
rename 'y/a-z/A-Z/' *

# 将所有的.mp3文件移动到指定的目录
find path -type f -name "*.mp3" -exec mv {} target_dir \;

# 将所有文件名中的空格替换为字符”_"
find path -type f -exec rename 's/ /_/g' {} \;
