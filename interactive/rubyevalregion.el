(defun ruby-eval-region-get (start end)
  (with-output-to-string (shell-command-on-region start end "ruby -ne 'if not defined? $program; $program = \"\"; at_exit do; print eval $program; end; end; $program = $program + $_ + \"\n\";'" standard-output)))

(defun ruby-eval-region-insert (start end)
  "Evaluates the ruby code in region and inserts output after point"
  (interactive "r")
  (insert (ruby-eval-region-get start end))
  (deactivate-mark))

(defun ruby-eval-region-replace (start end)
  "Evaluates the ruby code in region and replaces region with output"
  (interactive "r")
  (let (a)
    (setq a (ruby-eval-region-get start end))
    (delete-region start end)
    (goto-char start)
    (insert a)
    (deactivate-mark)))
