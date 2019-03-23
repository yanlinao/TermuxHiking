# Talk

这就真的是Termux的cookbook了，日常使用Termux是很平常的事，Termux也有能力做很多事。


**wget**
从WebServer上下载文件时常用wget，busybox内置了wget，可用，但是不支持https。还是用GNU wget。

```shell
wget -r -np -nd http://example.com/packages/
```

这条命令可以下载 http://example.com 网站上 packages 目录中的所有文件。其中，-np 的作用是不遍历父目录，-nd 表示不在本机重新创建目录结构。

```shell
wget -r -np -nd --accept=iso http://example.com/debian
```

与上一条命令相似，但多加了一个 --accept=iso 选项，这指示 wget 仅下载 i386 目录中所有扩展名为 iso 的文件。你也可以指定多个扩展名，只需用逗号分隔即可。

```shell
wget -i filename.txt
```

此命令常用于批量下载的情形，把所有需要下载文件的地址放到 filename.txt 中，然后 wget 就会自动为你下载所有文件了。

```shell
wget -c http://example.com/really-big-file.iso
```

这里所指定的 -c 选项的作用为断点续传。

```shell
wget -m -k (-H) http://www.example.com/
```

该命令可用来镜像一个网站，wget 将对链接进行转换。如果网站中的图像是放在另外的站点，那么可以使用 -H 选项。

**lftp**

想交互式地访问ftpserver，用lftp。

```shell
#使用以下命令登录ftp服务器：
lftp ftp://用户名[:密码]@服务器地址[:端口]
#标准方式，推荐
#如果不指定端口，默认21端口
#如果不在命令中使用明文输入密码，连接时会询问密码(推荐)
#可以使用“书签”收藏服务器站点，也可以在lftp中为当前站点定义别名：
lftp >bookmark           #显示所有收藏
lftp >bookmark add <别名>  #使用 别名 收藏当前站点
#使用别名登录 ftp服务器：
lftp <别名>
#文件下载
#单个文件
lftp >get <name>
#目录
lftp >mirror <dirname>
#windows server支持
lftp >set ftp:charset gbk   #设置远程编码为gbk
lftp >set file:charset utf8 #设置本地编码(Linux系统默认使用 UTF-8，这一步通常可以省略)
```

**hub**

**Emacs**

**Vim**

**gitbook**

**git**

**w3m**

**Graphviz**

**cmus**


