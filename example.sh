split -d -l 1000  splitfile  output_prefix
seq -f "%06g"  1  1  100
use "'", not use '"', because some replace occur in '"'

cut -f 1,3  cutfile

join file, will merge file in same field
paste file

head -n 3 aok00 | awk -F '`' '{ printf "\047%s_%s\047\t\047%s\047\n", $1,$2,$4}'
head -n 3 aok00 | awk -F '`' ' $3>=1 {print $2, $3}'


ctrl+v, then tab, to insert tab on linux platform

 2067  cat qiyi_cartnoon | awk -F '     '          '{print $2}'
 2068  cat qiyi_cartnoon | awk -F '     ' '{print $2}'
 2226  history | grep awk
notroot@ubuntu:~/data$ history | grep cut
 2050  cut --help
 2051  cat qiyi_cartnoon | cut -f 1,2
 2052  cat qiyi_cartnoon | cut -f 3,4
 2054  cat qiyi_cartnoon | cut -f 1
 2227  history | grep cut

打印带行号：
awk '{printf("%s`%s\n", NR, $0)}' f > f2
打印第四列小于3的行
awk -F '`' '$4 <3 {print $0}' f2 > f3

打印第四列匹配test的行
awk -F '`' '$4~/test/{print $0}' f2

打印第四列不匹配test的行
awk -F '`' '$4!~/test/{print $0}' f2


delete redis keys which include two charaters
redis-cli -n 9 keys '??' | xargs -n 1 redis-cli -n 9 del 
delete all keys in redis db 9
redis-cli -n 9 keys '*' | xargs -n 1 redis-cli -n 9 del 


cat x | tr '\n' '\000' | xargs -0

paste命令管道输入
paste命令还有一个很有用的选项（-）。意即对每一个（-），从标准输入中读一次数据。使用空格作域分隔符，以一个4列格式显示目录列表。方法如下：
ls | paste –d” ” - - - -
也可以以一列格式显示输出
