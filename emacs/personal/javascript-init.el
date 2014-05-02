(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(setq js2-basic-offset 2)
(setq-default js2-auto-indent-p t)

; spidermonkey does not support modules yet
(setq-default js2-mode-show-parse-errors nil)
(require 'flymake-jshint)
(add-hook 'js2-mode-hook 'flymake-mode)
