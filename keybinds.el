;; Unbind
(global-unset-key (kbd "C-x o"))
(global-unset-key (kbd "C-_"))
(global-unset-key (kbd "C-x u"))
(global-unset-key (kbd "C-k"))
(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "C-p")) ;; Move up
(global-unset-key (kbd "C-n")) ;; Move down
(global-unset-key (kbd "M-j")) ;; Ghetto newline
(global-unset-key (kbd "C-a")) ;; Move to beginning of line
(global-unset-key (kbd "C-e")) ;; Move to end of line
(global-unset-key (kbd "C-j")) ;; Another ghetto newline
(global-unset-key (kbd "C-o")) ;; Yet another ghetto newline

;; Bind

(global-set-key (kbd "C-c r") 'ruby-eval-region-message)
(global-set-key (kbd "C-c R") 'ruby-eval-region-replace)
(global-set-key (kbd "C-c I") 'ruby-eval-region-insert)

(global-set-key (kbd "M-s") 'ace-jump-char-mode)

(global-set-key (kbd "<tab>") 'dabbrev-expand)
(global-set-key (kbd "<backtab>") 'undo)
(global-set-key (kbd "<C-tab>") 'indent-for-tab-command)

(global-set-key (kbd "M-.") 'other-window)
(global-set-key (kbd "M-,") (lambda () (interactive) (other-window -1)))

(global-set-key (kbd "M-q") 'undo)
(global-set-key (kbd "M-k") 'kill-whole-line)

(global-set-key (kbd "M-j") 'previous-line)
(global-set-key (kbd "M-n") 'next-line)

(global-set-key (kbd "M-m") 'move-beginning-of-line)
(global-set-key (kbd "M-i") 'back-to-indentation)
(global-set-key (kbd "M-o") 'move-end-of-line)

;; Unfuck the minibuffer completion after having rebound TAB
(add-hook 'minibuffer-setup-hook
          (lambda ()
            (local-set-key (kbd "<tab>") 'minibuffer-complete)))
