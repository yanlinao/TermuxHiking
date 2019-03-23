#致谢：
#ezprompt.net



#bash easy agnoster
export PS1="\[\e[30;42m\]\w\[\e[m\]\[\e[32;40m\]▶\[\e[m\] "


#zsh prompt
autoload -U colors && colors
PROMPT="[%{$fg[blue]%}%~%{$reset_color%}]▶ "
RPROMPT=[%{$fg[blue]%}%n%{$reset_color%}]


#Go Bullet -- Go编写的bash prompt配置工具
export GBT_CARS='Hostname, Dir, Sign'
#设定Prompt块
#Dir指目录
#Hostname指本机信息
#Sign指Prompt前的箭头和用户信息
#还有一些块我不需要，没写

export GBT_CAR_DIR_FG='black'
#Dir块字体色为黑色
export GBT_CAR_DIR_BG='blue'
#Dir块背景色为蓝色
#BG为背景色
#FG为字体色
export GBT_CAR_HOSTNAME_FG='light_gray'
export GBT_CAR_HOSTNAME_BG='dark_gray'
#Hostname块配色
export GBT_CAR_HOSTNAME_FORMAT=' ghost@github '
#Hostname块输出文本
#自己随便写

[ -x $(which gbt) ]&&export PS1='$(gbt)'
#这是bash应有的内容
#zsh略有不同
#export PROMPT='$(gbt)'
#zsh这样做
#我用bash，懒得关心zsh用户，oh-my-zsh挺好的……

