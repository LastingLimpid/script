 RAILS_ENV='production' bundle exec rake db:migrate
 RAILS_ENV='development' bundle exec rake db:migrate
 RAILS_ENV='test' bundle exec rake db:migrate

Ruby on Rails编程入门
创建项目
rails new demo：创建一个名为demo的新项目
cd demo：进入项目文件夹
rails server：启动Rails内置服务器（可略写为rails s）
启动浏览器，输入http://127.0.0.1:3000即可访问该项目
每次新建项目时Rails都会自动执行bundle install检查更新需要的模块，需要耗费较长的时间

除了第一次必须联网外，以后可以使用下面的命令直接从本地cache进行检查更新

rails new demo --skip-bundle：跳过更新检查
cd demo
bundle install --local：使用本地cache（路径在Ruby1.9.2\lib\ruby\gems\1.9.1\cache）
rails server
每次修改Gemfile文件都需要重新执行一次bundle

Rails基本架构
Gemfile：设定Rails应用需要使用的Gems模块
Rakefile：用来载入可以被命令行执行的一些Rake任务
config.ru：用来启动应用的Rack服务器设置
script/：存放Rails的系统指令
app/：存放Controllers、Models、Views，开发时的主要工作目录
config/：存放Rails应用、URL、数据库等的设置文件
db/：存放数据库的结构纲要
lib/：自定义模块存放处
public/：唯一可以通过网址直接访问的目录，存放图片、JS、CSS等文件
test/：存放测试程序
vendor/：插件目录
doc/：存放自己的文件
log/：日志文件夹
tmp/：存放临时性文件
数据库
config/database.yml是Rails的数据库配置文件，包括开发、测试、生产三个模式

YAML格式严格要求缩排，且冒号后必须有一个空格，对于数值或多行的内容，最好加上引号，以防字符串解析错误

Rails的ORM（Object-relational mappong）规则

一个表格对应一个类
类方法用来对表格进行操作
数据表的一个记录对应一个对象
实例方法用于执行针对单条记录上的操作
数据表的字段映射到对象属性
Calss
obj-attribute	obj-attribute	obj-attribute
object	 	 	 
object	 	 	 
Rails系统命令
rails generate controller contro_name：创建一个Controller（简写为rails g controller contro_name）
bundle exec rake db:create：创建数据库文件
rails g model event name:string description:text is_public:boolean capacity:integer：数据库建表
bundle exec rake db:migrate：真正执行数据库写入
rails console：进入Rails主控制台（简写为rails c）

