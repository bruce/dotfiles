(defun turn-on-paredit () (paredit-mode 1))
(add-hook 'clojure-mode-hook 'turn-on-paredit)
(add-to-list 'auto-mode-alist '("\.cljs$" . clojure-mode))
