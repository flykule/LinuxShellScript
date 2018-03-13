#!/bin/bash

# 创建一个1GB的文件
dd if=/dev/zero of=loopbackfile.img bs=1G count=1

# 将文件格式化为ext4文件系统
mkfs.ext4 loopbackfile.img

# 检查文件系统
file loopbackfile.img

# 挂载环回文件
# -o选项用来挂载环回系统
mkdir /mnt/loopback
mount -o loop loopbackfile.img /mnt/loopback

# 手动挂载
losetup /dev/loop1 loopbackfile.img
mount /dev/loop1 /mnt/loopback

# 卸载
unmount mount_point
# 使用设备文件的路径作为参数
unmount /dev/loop1

# 在环回镜像中创建分区
# 分区教程: http://www.tldp.org/HOWTO/Partition/
losetup /dev/loop1 loopbackfile.img
fdisk /dev/loop1

# 使用kpartx挂载带有分区的环回磁盘镜像
kpartx -v -a diskimage.img
# 挂载第一个分区
mount /dev/mapper/loop0p1 /mnt/disk1

# 移除映射关系
kpartx -d diskimage.img

# 挂载iso文件
mkdir /mnt/iso
mount -o loop linux.iso /mnt/iso

# 使用sync即刻应用更改
sync
