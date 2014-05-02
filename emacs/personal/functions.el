(defun bw-query-replace-old-hash-syntax ()
  "Replace old style hashes with new style hashes"
  (interactive)
  (query-replace-regexp ":\\([a-z0-9_]+\\) =>" "\\1:"))

(global-set-key (kbd "C-:") 'bw-query-replace-old-hash-syntax)

; Ideas: Split hash on commas, sort, line up values vertically


(defun count-words (start end)
    "Print number of words in the region."
    (interactive "r")
    (save-excursion
      (save-restriction
        (narrow-to-region start end)
        (goto-char (point-min))
        (count-matches "\\sw+"))))
