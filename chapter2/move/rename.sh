#!/bin/bash

# 重命名当前目录下所有的jpg和png文件
count=1;
for img in `find . -iname '*.png' -o -iname '*.jpg' -type f -maxdepth 1` do
    new=image-$count.${img##*.}

    echo "$img to $new"
    mv "$img" "$new"
    let count++
done



