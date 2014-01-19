(setq multi-term-program "/opt/boxen/homebrew/bin/zsh")
(add-hook 'term-mode-hook
          (lambda ()
            (setq term-buffer-maximum-size 10000)))
(add-hook 'term-mode-hook
          (lambda ()
            (setq show-trailing-whitespace nil)
            (autopair-mode -1)))
