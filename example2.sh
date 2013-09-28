find / -type f 2>/dev/null 
find / ! -name a -delete //删除非a文件
man ascii 打开ascii 表
lsof -i tcp:80  //打开80端口进程

//输出多行到文件，去掉>aa可以直接输出到屏幕
cat >aa <<EOF
line1
line2
EOF
