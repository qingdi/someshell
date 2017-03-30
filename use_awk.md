
 desc: 获取文件中所有的URL
 mysite: www.reunicode.com
 author: qingdi

awk usage
=========

查找去重复
---------
通过数组判断
```
awk '!($0 in a){a[$0];print}' a.txt > b.txt
```
