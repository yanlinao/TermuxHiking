(put 'erase-buffer 'disabled nil)
;;行号
(global-linum-mode t)
;;十秒保存一次文件
(setq-default auto-save-timeout 10)
;;50字符自动保存
(setq-default auto-save-interval 100)
;;取消备份
(setq make-backup-files nil)
;;用paredit写scheme
(add-to-list 'load-path "~/.emacs.d/scheme")
(autoload 'paredit-mode "paredit"
  "Minor mode for pseudo-structurally editing Lisp code."
  t)
