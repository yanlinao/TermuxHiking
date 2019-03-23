BASE_PKG=linux-man-pages coreutils fish micro texinfo man 

DEV_PKG=clang python emacs vim valgrind make git

.PHONY: style editor-macros vi-improved fish-shell git TREE

TREE:
	@mkdir -p ~/workdir


style:
	@mkdir -p ~/.termux
	@cp font.ttf ~/.termux/font.ttf
	@cp colors.properties ~/.termux/colors.properties

editor-macros:
	@cat Main.el > ~/.emacs
	@mkdir -p ~/.emacs.d/scheme

vi-improved:
	@cat Bash.vim > ~/.vimrc

fish-shell:
	@pkg i fish -y

git: TREE
	@cp Git.sh ~/workdir/Git.sh

