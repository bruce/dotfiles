;; whitespace-mode for Ruby code
;; helps with cleaning out unnecessary white space
(load "ruby-mode")

(require 'rbenv)
(add-hook 'ruby-mode-hook (lambda () (rbenv-use-corresponding)))
