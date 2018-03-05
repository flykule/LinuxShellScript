#!/bin/bash
# 展示如何处理日期以及延时

# get date
date

# print UTC time
date +%s

# turn date string to UTC string
# option --date to input date string 
date --date "Thu Nov 18 08:07:21 IST 2010" +%s

# get day of week
date --date "Nov 18 2010" +%A

# format print
date "+%d %B %Y"

# set date 
# date -s "formatted date string"






