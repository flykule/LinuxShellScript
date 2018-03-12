#!/bin/bash
# 内容相同的文件会生成相同的校验和，因此比较校验和就可以识别重复文件

ls -lS --time-style=long-iso | awk 'BEGIN {
    getline;getline;
    name1=$8;size=$5
}
{
    name2=$8;
    if(size==$5)
        {
            # 使用"cmd"|get line的格式读取外部命令的输出
            "md5sum "name1 | getline;csum1=$1;
            "md5sum "name2 | getline;csum2=$1;
            if( csum1==csum2)
                {
                    print name1;print name2
                }
        };
        size=$5;name1=name2;
}' | sort -u > duplicate_files

cat duplicate_files | xargs -I {} md5sum {} | sort | uniq -w 32 | awk '{ print
"^"$2"$"}'|sort -u >duplicate_sample

echo Removing
# comm duplicate_files duplicate_sample -2 -3 | tee /dev/stderr |xargs rm
echo Removed duplicates files successfully

