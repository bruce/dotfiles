(require 'sr-speedbar)
(global-set-key (kbd "C-c s") 'sr-speedbar-toggle)
(setq speedbar-use-images nil)
; Ruby
(speedbar-add-supported-extension ".rb")
; Elixir
(speedbar-add-supported-extension ".ex")
(speedbar-add-supported-extension ".exs")
