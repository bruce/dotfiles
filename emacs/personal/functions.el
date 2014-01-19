(defun bw-query-replace-old-hash-syntax ()
  "Replace old style hashes with new style hashes"
  (interactive)
  (query-replace-regexp ":\\([a-z0-9_]+\\) =>" "\\1:"))

(global-set-key (kbd "C-:") 'bw-query-replace-old-hash-syntax)

; Ideas: Split hash on commas, sort, line up values vertically
