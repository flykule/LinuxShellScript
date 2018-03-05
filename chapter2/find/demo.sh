#!/bin/bash
# 展示find命令的常见用法

# 列出当前目录及子目录下所有的文件和文件夹
find . -print

# 根据文件名或正则表达式进行搜索
# 使用-name选项指定文件名必须匹配的字符串
find /home/castle -name "*.txt" -print

# 选项-iname可以忽略字母大小写

# 使用or来拼接多个条件
find . \( -name "*.txt" -o -name "*.pdf" \) -print

# 使用-path来匹配文件路径
find /home/users -path "*/slynux/*" -print

# 使用-regex进行正则匹配，在-后面添加i忽略大小写
find . -iregex ".*\(\.py\|\.sh\)$"

# 否定参数，使用'!!来否定参数的含义
# 匹配所有不以.txt结尾的文件名
find . ! -name "*.txt" -print

# 限制搜索目录的最大深度，当前目录搜索深度为１
find . -maxdepth 1 -name "f*" -print

# 限制搜索目录的最小深度，用于限制搜索的起始深度
find . -mindepth 2 -name "f*" -print

# 深度限制应该在find命令的第三个参数，这样才能进行最有效的搜索

# 根据文件类型进行搜索
find . -type d -print

# 根据文件时间进行搜索
# -ame 最近一次访问时间
# -mtime 最近一次文件内容被修改的时间
# -ctime 最后一次元数据，例如权限或者所有权改变的时间
# 以上选项基于天

# 打印出最近7天内被访问过的所有文件
find . -type f -atime -7 -print
# 恰好7天
find . -type f -atime 7 -print
# 大于７天
find . -type f -atime +7 -print

# -amin 最近一次访问时间
# -mmin 最近一次文件内容被修改的时间
# -cmin 最后一次元数据，例如权限或者所有权改变的时间
# 以上选项基于分钟

# 使用-newer选项，可以指定一个用于比较时间戳的参考文件，然后找出比
# 参考文件更新的所有文件
find . -type f -newer file.txt -print

# 基于文件大小的搜索

# 大于2kb的文件
find . -type f -size +2k
# 小于2kb的文件
find . -type f -size -2k
# 等于2kb的文件
find . -type f -size 2k

# 删除匹配的文件
find . -type f -name "*.swp" -delete

# 根据文件权限进行搜索

# 找出权限为644的文件
find . -type f -perm 644 -print

# 找出没有设置好执行权限的PHP文件
find . -type f -name "*.php" ! -perm 644 -print

# 根据所有权搜索文件:
find . -type f -user slynux -print

# find命令可以借助-exec与其他命令进行结合
# 找出所有所有权为root的文件，然后修改为另外一个用户
# {}是一个与exec选项搭配使用的特殊字符串,对于每一个匹配的文件
# 他会被替换成匹配到的文件名
# 如果希望使用文件列表作为参数,将;替换为+号即可
find . -type f -user root -exec chown slynux {} \;

# 找出所有的c文件，然后使用cat命令
find . -type f -name "*.c" -exec cat {} \;>all_c_files.txt

# 将多个命令写到一个shell脚本中，就能实现多个命令与exec结合

# 排除指定的目录
find devel/source_path \( -name ".git" -prune \) -o \( -type f -print \)



