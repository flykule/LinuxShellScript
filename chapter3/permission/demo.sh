#!/bin/bash

# 使用chmod设置权限
chmod u=rgx g=rw o=r filename

# 给others增加执行权限
chmod o+x filename

# 给所有类型用户增加执行权限
chmod a+x filename

# 删除权限使用-
chmod a-x filename

# 使用八进制设置权限
chmod 764 filename

# 更改所有权
chown  user.group filename

# 设置粘滞位，只有目录的所有者才能删除目录中的文件
chmod a+t directory_name

# 以递归方式修改权限
chmod 777 . -R

# 以递归方式设置所有权
chown user.group . -R



