(require 'project-mode)
(project-load-all)

(global-set-key (kbd "C-c o") 'project-open)
(global-set-key (kbd "C-c f") 'project-fuzzy-search)
(global-set-key (kbd "C-c s") 'project-search-text)
(global-set-key (kbd "C-c p") 'project-search-text-previous)
(global-set-key (kbd "C-c n") 'project-search-text-next)
(global-set-key (kbd "C-c C-s") 'project-save)
(global-set-key (kbd "C-c C-n") 'project-new)
