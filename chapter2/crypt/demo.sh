#!/bin/bash
#  加密工具与散列

# crypt是一个简单的加密工具，他从stdin接受一个文件以及口令作为输入
# 然后将加密数据输出到stdout(因此要对输入，输出文件使用重定向)
# cyrpt <input_file >output_file

# 他会要求输入一个口令．我们也可以通过命令行参数来提供口令
# crypt PASSPHRASE <input_file >encrypted_file

# 如果需要解密文件，那么
# crypt PASSPHRASE -d <encrypted_file >output_file

# gpg(GNU隐私保护)是另外一种加密工具，确保数据在到达目的地之前无法被读取
# 生成gpg文件
# gpg -c filename

# 解密gpg文件
# gpg filename.gpg

# Base64是一组相似的编码方案，它将ASCII字符转换成以６４为基数的形式(radix-64)
# ,以可读的ＡＳＣＩＩ字符串来描述二进制数据，base64命令可以用来编码/解码Base
# 64字符串.

# 将文件编码为base64格式:
# base64 filename > outputfile
# 或者
# cat file | base64 > outputfile

# 解码Base64字符串
# base64 -d filename > outputfile
# 或者
# cat file | base64 -d > outputfile

# md5sum与sha1sum都是单向散列算法，均无法逆推出原始数据．他们通常
# 用于验证数据完整性或为特定数据生成唯一的密钥

# md5sum file
# sha1sum file

# shadow-like散列
# opensslpasswd -1 -salt SALT_STRING PASSWORD
