# Emacs击键约定

Emacs 自身的文档有独特的方式来描述用于定义操作的击键，如下：
C-<chr> == Ctrl + 字符，同时按。
M-<chr> == Meta + 字符，同时按。
但是，什么是 Meta？Meta 可以是一个专用键（有时这样标记），它可能是 Alt 键，它也可能在系统所用的键映射表（keymap）中根本不存在。那没关系；Meta 有替代键，就是先按 Esc 键，再按后面的字符键（而不是一起按）。这样产生的结果和 M-<chr> 相同。

# EmacsLisp


To the untutored eye, Lisp is a strange programming language.  In Lisp code there are parentheses everywhere.Some people even claim that the name stands for _Lots of Isolated Silly Parentheses_.  But the claim is unwarranted.

Lisp向来不缺像_Lots of Isolated Silly Parentheses_这样的讽刺。

# Eww

这是Emacs内置的WebBrowser，M-x `eww`即可打开。eww会请求一条url或关键字，Over。

按q退出，按g刷新，按w把url发送到Emacs的`kill ring`(然后按C-y可以在其他地方粘贴：| )，

M-x eww-open-file可以打开一个文件。

# Eshell


# Emacs calc


# Org-Mode
