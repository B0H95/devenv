(global-auto-revert-mode 1)
(setq make-backup-files nil)
(setq auto-save-default nil)
(menu-bar-mode 0)
(setq scroll-step 1)
(setq inhibit-splash-screen t)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq next-line-add-newlines nil)
(setq mouse-wheel-progressive-speed nil)
(setq scroll-conservatively 10000)
(setq scroll-preserve-screen-position 1)
(setq next-screen-context-lines 33)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 8)
(setq-default c-default-style "linux")
(setq-default buffer-file-coding-system 'utf-8-unix)
(setq default-buffer-file-coding-system 'utf-8-unix)
(setq initial-major-mode 'fundamental-mode)
(setq initial-scratch-message nil)
(setq line-move-visual nil)
(global-set-key (kbd "C-c p") 'find-lisp-find-dired)

;(defun b0h-format ()
;  (interactive)
;  (let ((line (- (line-number-at-pos) 1))
;        (column (- (point) (line-beginning-position))))
;    (call-process-region (point-min) (point-max) "format --param1 --param2 --etc" t t)
;    (goto-char (point-min))
;    (ignore-errors (forward-line line))
;    (ignore-errors (forward-char column))
;    (if (/= line (- (line-number-at-pos) 1))
;        (progn
;          (goto-char (point-min))
;          (ignore-errors (forward-line line))
;          (move-end-of-line nil)))))
