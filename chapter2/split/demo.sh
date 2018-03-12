#!/bin/bash
# 分隔文件

# 将文件分割为多个大小为10kb的文件
split -b 10k data.file
ls

# 如果想用数字做后缀名，可以另外使用-d选项
# 可以使用-a选项指定后缀长度
# 除了k(kb)选项以外，还可以使用m(MB),G(GB)等选项
split -b 10k data.file -d -a 4
ls

# 可以指定自己的前缀
# split[COMMAND_ARGS] PREFIX
split -b 10k data.file -d -a 4 split_file
ls

# 可以按照行数来分割文件
split -l 10 data.file

# csplit是split的一个变体，可以根据文本内容来实现分行
# 将日志文件分割为server1.log,server2.log,server3.log，可以如此实现
# /SERVER/用来匹配某一行，标记分割位置
# /REGEX/表示文本样式，包括从当前行直到匹配行的前一行
# -s 静默模式
# {*}表示根据匹配重复执行分割，直到文件末尾,可以用{N}来指定分割的次数
# -n 指定分割后的文件后绉的数字个数，例如01,02等
# -f 指定分割后的文件前缀
# -b 指定后缀格式
# 因为分割后的第一个文件没有任何内容，所以删除了该文件
csplit server.log /SERVER/ -n 2 -s {*} -f server -b "%02d.log"
rm server00.log
ls







