#!/bin/bash
set -eoux pipefail
###
# @Github: https://github.com/Certseeds/MA212_2018F
# @Organization: SUSTech
# @Author: nanoseeds
# @Date: 2020-09-06 16:15:05
# @LastEditors: nanoseeds
# @LastEditTime: 2020-09-06 17:59:18
###
old_IFS=${IFS}
IFS=$'\n'
for file in $(ls | grep .jpg); do
    new_file=$(echo "${file}" | sed "s/ /_/g")
    echo "${new_file}"
    mv "${file}" "${new_file}"
done
IFS=${old_IFS}
temp=1
for i in $(ls -lrt | awk -F ' ' '{print $9}'); do
    mv "${i}" ${temp}.jpg
    echo ${i}
    temp=$((temp + 1))
done
