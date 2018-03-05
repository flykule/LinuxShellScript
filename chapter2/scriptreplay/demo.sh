#!/bin/bash
# 录制终端会话和回放

# 录制会话
# 第一个参数(timeing.log)用于储存时序信息,描述命令的运行时间
# 第二个参数(output.session)用于储存命令输出,-t选项用于将时序数据
# 导入stderr
# script -t 2> timeing.log -a output.session
# commands;
# exit

# 回放命令执行过程
# scriptreplay timeing.log output.session

