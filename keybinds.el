(global-set-key (kbd "C-c r") 'ruby-eval-region-message)
(global-set-key (kbd "C-c R") 'ruby-eval-region-replace)
(global-set-key (kbd "C-c I") 'ruby-eval-region-insert)

(global-set-key (kbd "M-s") 'ace-jump-char-mode)

(global-set-key (kbd "<tab>") 'dabbrev-expand)
(global-set-key (kbd "<backtab>") 'undo)
(global-set-key (kbd "<C-tab>") 'indent-for-tab-command)

(global-set-key (kbd "M-.") 'other-window)
(global-set-key (kbd "M-,") (lambda () (interactive) (other-window -1)))

;; Unfuck the minibuffer completion after having rebound TAB
(add-hook 'minibuffer-setup-hook
          (lambda ()
            (local-set-key (kbd "<tab>") 'minibuffer-complete)))
