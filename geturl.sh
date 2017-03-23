#!/usr/bin/env bash
#--------------------------
# desc: 获取文件中所有的URL
# mysite: www.reunicode.com
# author: qingdi
#--------------------------
list_alldir(){
    for file in `find .`
    do
        if test -f $file;
        then
            echo $file 'is file'
            #获取http://
            awk '{ if(match($0, "http:\/\/[0-9A-Za-z\.]+(\s|\/{0,1})")){ print substr($0, RSTART, RLENGTH) } }' $file >> ../rs.log
            #获取www.
            awk '{ if(match($0, "www\.[0-9A-Za-z\.]+(\s|\/{0,1})")){ print substr($0, RSTART, RLENGTH) } }' $file >> ../rs.log
        fi
    done
}
list_alldir

awk '!a[$0]++' ../rs.log > ../re.log
