(require 'dired-x)
(require 'pcre2el)

(defun dired-mark-readable ()
  "Mark readable files in a dired buffer"
  (interactive)
  (dired-mark-sexp '(not (string-match (pcre-to-elisp "^((pkg|tmp|\.git)\/.*|.*?\.(log|gem|gz))$") name))))

(defun find-grep-dired-do-sexp (dir regexp sexp)
  "First perform `find-grep-dired', and wait for it to finish.
Then perform a sexp on all files in the *Find* buffer."
  (interactive "DFind-grep (directory): \nsFind-grep (grep regexp): \nsSexp: ")
  (find-grep-dired dir regexp)
  (while (get-buffer-process (get-buffer "*Find*"))
    (sit-for 1))
  (with-current-buffer "*Find*"
    (dired-mark-readable)
        (eval sexp)))

(defun find-grep-dired-do-search (dir regexp)
  "First perform `find-grep-dired', and wait for it to finish.
Then, using the same REGEXP as provided to `find-grep-dired',
perform `dired-do-search' on all files in the *Find* buffer."
  (interactive "DFind-grep (directory): \nsFind-grep (grep regexp): ")
  (find-grep-dired-do-sexp dir regexp '(dired-do-search regexp)))

(defun find-grep-dired-do-replace-regexp (dir from to)
  "First perform `find-grep-dired', and wait for it to finish.
Then, using the same REGEXP as provided to `find-grep-dired',
perform `dired-do-query-replace-regexp' on all files in the *Find* buffer."
  (interactive "DFind-grep (directory): \nsFind-grep (grep regexp): \nsReplace-regexp (replacement): ")
  (find-grep-dired-do-sexp dir from '(dired-do-query-replace-regexp from to)))
