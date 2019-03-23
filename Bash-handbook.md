# Zero

Bash,史称Breakdown again shell。

# Command

```shell
echo hello
```

# Syntax

### I/O

+ 标准输出的流ID是1。

```shell
echo 1 > /dev/null
```

+ 标准错误输出的流ID是2。

```shell
grep 2 /null.conf 2> /dev/null
grep 2 /null.conf
```

+ 从文件获得标准输入

```shell
xargs -n1 -I{} axel -n 10 {} < url.txt
```

+ 将stdout作为文件

```shell
cat <(echo hello)
```
+ 

### \

+ 规避bash的字符转义

```shell
echo \$HOME
echo \#HOME
```
+ 连接字符串

```shell
cp -r /sdcard/ehviewer \
      ~/workdir/ehviewer
```

### ;

+ 连接命令

```shell
echo 1; echo 2; echo 3; echo ready\!
```

### Variables

+ 常规赋值

```shell
var=foo
echo $var
```

+ 二次赋值

```shell
var=foo
var+=foo
echo "$var"
```

+ 控制变量展开

```shell
var=foo
varfoo=foo
echo $varfoo
echo ${var}foo
```
目前我们所见到的变量类型被称为标量变量；也就是说，只能包含一个值的变量。且值的类型为字符串。

### Pipe

管道可以将上一进程的标准输出作为下一进程的标准输出。

```shell
ps | awk '{print $4}'
```

管道两边的命令同时被执行。

```shell
ps | grep $(whoami)
```

### Array

+ 数组元素赋值

```shell
array=(one two three)
array[3]=four
array[4]=five
```
+ 访问数组元素

```shell
echo ${array[0]}
echo ${array[4]}
#全部元素
echo ${array[@]}
```
+ 声明关联数组

```shell
declare -A sheet
```
+ 关联数组赋值

```shell
sheet[length]=5
sheet[value]="Hello,World"
```
+ 访问关联数组元素

```shell
echo ${sheet[length]}
echo ${sheet[value]}
```

### $[]

```shell
echo $[ 150 % 5 ]
0
---------------------
% ==> 取余

+ ==> 相加

- ==> 减

* ==> 乘

/ ==> 除

** ==> 乘方
---------------------------

```



### Function

+ 常规函数

```shell
function hello
{
echo hello
}

function hello() {
echo hello
}

hello() {
echo hello
}

eval "hello"
```
**$#**

参数数量

**$@**

所有参数

**$**

上一进程退出码


### if/elif

```shell
if false; then
      echo "fucks"
else
      echo "无fuck说"
fi
```


### case
```shell
case $HOME in
         *com.termux*)
          echo "Termux"
          ;;
         *io.neoterm*)
         echo "Neoterm"
         ;;
esac
```


### Subshell

```shell
(false; echo $?)
```


### for


```shell
for i in {1..100}; do
     echo $i
done
```


### while/until


```shell
while true; do
     echo '$?=0'
     break
done
```
### &&

```shell
true && echo '$?=0'
```


### ||

```shell
false || echo '$?=1'
```


### {}

```shell
echo {1..10}
```

```shell
echo {1,2,3}
```

```shell
{ cd ~; if [ -x $(which emacs) ]; then; mkdir -p ~/.emacs.d; fi;}
```



### here doc

```shell
cat <<EOF
Are you ok?
EOF
```

```shell
cat <<< "Are you ok?"
```


# builtin


### Alias

设定别名

```shell
alias up="cd .."
eval "up"
```
规避别名

```shell
alias ls="echo *"
\ls -la
```

### source

```shell
source ~/.bashrc
```


### dot
```shell
if [ -f ~/config.sh ]; then
         cd ~
         .config.sh
fi
```

### test

```shell
test -d $HOME&&echo "Home:${HOME}"
```


# Toolchains

### grep

### egrep

就是grep -E啦。

### xargs

### kill

### ps

### sed

### awk

```shell
ps | awk '{ print $4 }'
```
