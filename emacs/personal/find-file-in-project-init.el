(require 'find-file-in-project)
(global-set-key (kbd "C-x f") 'find-file-in-project)
(set 'ffip-patterns (append ffip-patterns '("*.rl" "*.txt" "*.md")))
(setq default-directory "~/")
