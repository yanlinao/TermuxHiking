# Talk

我有两部爪机，一部是红米1s，另一部充话费送的。

红米1s只安装emacs,fish等工具，保持Termux环境整洁，用于学习。话费机瞎整。

### Breakdown again shell

没说的，Shell就用Bash，zsh太大个了。

简单整个bashrc

```shell


#dotfile隔离
#wd func
function wd()
{
if [ -d ~/workdir ]; then
    cd ~/workdir
else
    rm -rf ~/workdir 2> /dev/null
    mkdir ~/workdir
    cd ~/workdir
fi
#jump
alias up="cd .."
alias back="cd $OLDPWD"
}

function edel {
rm *~
}
```

Prompt用gbt配置。

### Change $PREFIX/bin/sh

拒绝dash。

```shell
ln -fs /data/data/com.termux/files/usr/bin/bash /data/data/com.termux/files/usr/bin/sh
```

### vi configure

使用[Bash.vim](PKGFILE/Bash.vim)做为vimrc，别笑我，我是vi轻度用户。我只用vi写Bash脚本和Markdown文档。

### git configure

安装hub

```shell
pkg i git hub -y
```

配置git

```shell
startgit()
{
printf "Email:"
read email
printf "git用户名:"
read gituser
git config --global user.name "$gituser"
git config --global user.email "$email"
echo "git初始化完成"
echo "开始学习git吧。但是，这次又会坚持多久呢……"
}
```

### Gawk

应当用Gawk作为默认awk。

```shell
ln -fs /data/data/com.termux/files/usr/bin/gawk /data/data/com.termux/files/usr/bin/awk
```

### Micro

首先micro这名字太长。

```shell
ln -fs /data/data/com.termux/files/usr/bin/micro /data/data/com.termux/files/usr/bin/io
```

按下ctrl-e,设置配色。


```
> set colorscheme darcula
```

### Graphviz

我喜欢玩这个，绘图渣的画板。

### Emacs

Emacs os可好玩，一起整。

### Python

不工作时：Funny Python!

工作之后：Fucking Python!

### lftp

爱用的ftp client.




