# Csmap使用环境说明

## Windows环境

#### 直接使用

```yak
yak.exe Csmap.yak --model 模式 语法
```

# 工具使用参数

#### --model  模块选择

#### scan参数信息收集模块/vul参数漏洞扫描模块/quake参数网络空间引擎模块/blapa参数目录爆破模块/crawler参数网站URL爬虫模块



#### 	scan参数信息收集模块：

#### 													--target 目标IP/域名

#### 													--ports 扫描端口(如：80,100-1000，

#### 												默认扫描端口1-100,443,445,1433,1521,3306,5432,6379,8080,8088,8161,27017)

#### --switch 扫描域名时是否启动IP端口扫描(up(默认)/off)

#### --thread 设置线程

#### --proxy 设置代理

#### --det 仅探测主机存活(默认false/true->关闭/开启)

#### --way 设置扫描方式(flase默认/true->被动/主动)

#### --status 设置扫描状态(serve默认/syn->TCP精准扫描/syn半开扫描,syn扫描不稳定)

#### 注意:status参数选择syn半开扫描需要使用admin/root权限,syn模式不能扫描127.0.0.1



#### 	vul参数漏洞扫描模块：

#### 													--target 目标IP/域名(可以带端口)

#### 													--poc 设置单方面漏扫

#### --thread 设置线程

#### --proxy 设置代理(URL,注意:不能是单独的IP/域名)



#### quake网络空间搜索引擎模块

#### 												--inquire 搜索内容

#### 												--ste 选择搜索引擎(FOFA,360Quake,Shodan)

#### 												--count 获取的数据量(默认100条,最大1万条,FOFA/Shodan最低获取100条)



#### blapa目录爆破模块

#### --ua 设置UserAgent参数(默认是百度爬虫头)

#### --target 目标IP/域名

#### --dic 设置爆破字典(默认asp,php,db,jsp,robot)

#### --proxy 设置代理

#### --scode 设置需要收集相应状态码的目录爆破数据

#### --thmod 选择单/多线程(默认单线程single/mult，多线程模式爆破路径精准度比单线程低)

#### 										--thread 设置线程数量(默认10线程)



#### crawler网站URL爬虫模块

#### --ua 设置UserAgent参数(默认是百度爬虫头)

#### --target 目标IP/域名/URL

#### --proxy 设置代理

#### --count 获取的最大数据量(默认1000条)

#### --cur 并发量(设置最多多少http请求发送出去)

#### 注意:此模块是非浏览器模块,如果遇见防非浏览器爬虫的网站,则此模块功能失效,即获取不到URL



#### 功能模块通用参数

#### --dir 设置批量扫描TXT文件路径(相对路径/绝对路径)

#### --unite 设置联动接口文件是否启动(up/off,默认off)

#### 				(vul漏扫模式、blapa目录爆破模式和网站URL爬虫模式没有联动接口文件)



#### 扫描结果存放位置：./日志

#### 网络空间搜索引擎API-KEY配置文件位置：./WSSE-config/config.txt

#### 字典存放路径：./Dictionary



##### 注：nuclei的漏洞库来源于nuclei的共享poc社区，加上2022年护网常见的Ndaypoc

# 声明

#### 此工具仅仅学习使用，不负有相关法律责任。请大家共同遵守法律，维护好网络环境。各位师傅可以关注团队微信公众号——乌托邦安全团队，后续会更新网络安全相关的文章以及Yak编程文章。

###### 																																																																																																													——by 乌托邦安全团队CV





