#!/bin/bash

# 使用cat命令创建一个ＩＳＯ镜像
cat /dev/cdrom > image.iso

# 最好还是使用dd
dd if=/dev/cdrom of=image.iso

# mkisofs命令用于创建ISO文件系统
# -V选项指定卷标，－o选项指定ＩＳＯ文件的路径，source_dir指定源目录
mkisofs -V "LABEL" -o image.iso source_dir/

# 通常无法将可引导的ISO文件写如ＵＳＢ设备，可以先把他转换为混合ISO
isohybrid image.iso
# 将该iso写如USB设备
dd if=image.iso of=/dev/sdb1
# 或者使用cat
cat image.iso >> /dev/cdrom  

# 用命令行刻录ＩＳＯ
cdrecord -v dev=/dev/cdrom image.iso

# 使用-speed选项指定刻录速度,n表示几倍速度
cdrecord -v dev=/dev/cdrom image.iso -speed 8
# -multi选项开启多区段刻录
cdrecord -v dev=/dev/cdrom image.iso -multi

# 弹出光驱
eject

# 合上光驱
ejtct -t

