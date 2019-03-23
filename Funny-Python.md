# Python

是的，Python随着数据科学的兴起被带火了,那个关于AI的调侃已经广为人知：

_import tensorflow as tf_

可这也不是学习Python的理由啊。

Python就像_Bash Programming Language_一样，入坑简单，想把脚本写得简单明快又实用，难。不过至少Python的语法很友好，Bash几乎是无语法的。

下面从Python3中文文档截取一些内容，简单介绍一下对于热爱动手的一般用户Python能干些什么。

# Calc

当然了，Python是个非常好的口袋计算器。

`*`代表乘，`/`代表除，加减一如既往，`**`代表幂乘方，()可以提高运算优先级，就像这样

```python
30 * (1 + 2)
#结果为90
```
`//`可以取整，`%`可以取余。

```python
31 // 5   #6

31 % 5    #1
```

`**`的优先级高于加减。也高于乘除,括号的优先级又高于`**`。

**Number**

即使只将Python用于计算，也应该了解一下数字在Python中分为几种。

integer,意为整数。就像3,-5之类的，这部分定义和数学上的没区别。有时简写为int。

float，意为浮点数。其实就是十进制数：|。前段时间复习了一下，，分数都应该算在十进制数内(1/3之类无限循环的小数也算)，不过Python对小数点后的位数是有限制的。对于根号2之类的无理数,python似乎没办法直接表示。用`2 ** (1 / 2)`代替运算结果仍是float。试试吧：D

加减会使数字的类型发生变化，只要运算中有一个float，计算结果就是float。乘除就更奇怪了:

```python
>>> 4 / 2
...2.0
```
结果全是float：|

幂乘方和加减一致。

```python
>>> 2 ** 2
...4
>>> 2 ** 2.0
...4.0
```

**math**

Python有一种名为模块的东西，有自带的，也有额外的。模块一般由_别人_开发，导入一个模块，可以使用这个模块内的Function(函数,有时也叫'方法')。举一个栗子:

```python
import math
math.sqrt(4) #求4的平方根
```
Math这个模块提供了一些方便数学运算的Function，例如sqrt()，它可以求一个数的平方根。


# 手工制作calc

单纯地在python中手动计算，好像是不大方便，编辑一个脚本自动运算可能更好。先举个简单的例子。

```python
import sys
import math
x = int(sys.argv[1])
y = math.e ** x
print(y)
```

这个例子用了int(),print()两个Function，print()的作用是输出一段文本(不管print接收何种参数，输出的是文本)，int()的作用是把合适的字符串和浮点数转换成整数。(int("2.0")是不合适的：D)

但是，`sys.argv[1]`呢?那是什么?`x = int(sys.argv[1])`又有什么作用？

**variable**

变量是一个基本概念，可以类比为一个箱子，爱放什么东西随自己高兴。在Python的世界里，每个箱子有自己独一无二的特点——>变量名。Python的箱子自有地方放，不用人来管理。

箱子由python自己制造出来，数量是有限的，原则上python不造空箱子，总有一点东西在箱子里。

如果Python没找到一个箱子，会像这样:

```python
>>> print(empty)
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
NameError: name 'empty' is not defined
```
python会说变量未定义。

往一个箱子里装东西，这样:

```python
x = 3
#定义变量x的值为整数3
x + 5
#得到8
```
Python自有办法认出`x`是一个变量，为什么呢……



**list**

Python有一种叫列表的数据类型，试一试。

```python
list = [3, 5, 7]
#存入几个数字
#这东西在高中数学中被称为向量
print(list[0])
#输出为3
#试试print(list[2])是什么?
```

求上面那个向量的模，应该这样做。

```python
print((list[0] ** 2 + list[1] ** 2 + list[2] ** 2) ** (1 / 2))
```

求好了。







