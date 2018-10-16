(defun c-generators--insert-before (w)
  (let (p)
    (beginning-of-line)
    (insert " ")
    (beginning-of-line)
    (insert w)
    (setq p (point))
    (forward-word)
    (backward-word)
    (delete-region p (point))))

(defun b0h-c-generate-scope ()
  (interactive)
  (insert "{")
  (indent-for-tab-command)
  (newline)
  (newline)
  (insert "}")
  (indent-for-tab-command)
  (forward-line -1)
  (indent-for-tab-command))

(defun b0h-c-generate-switch-statement ()
  (interactive)
  (c-generators--insert-before "switch")
  (insert " (")
  (end-of-line)
  (insert ") ")
  (b0h-c-generate-scope))

(defun b0h-c-generate-switch-case-statement ()
  (interactive)
  (c-generators--insert-before "case")
  (insert " ")
  (end-of-line)
  (insert ": ")
  (b0h-c-generate-scope)
  (newline)
  (insert "break;")
  (indent-for-tab-command)
  (forward-line -1)
  (indent-for-tab-command))

(defun b0h-c-generate-if-statement ()
  (interactive)
  (c-generators--insert-before "if")
  (insert " (")
  (end-of-line)
  (insert ") ")
  (b0h-c-generate-scope))
