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
(global-unset-key (kbd "M-a")) ;; Moves backward unpredictably
(global-unset-key (kbd "M-e")) ;; Moves forward unpredictably
(global-unset-key (kbd "M-g g")) ;; Shitty move-to-line
(global-unset-key (kbd "C-SPC")) ;; Start selection
(global-unset-key (kbd "M-t")) ;; Transpose word (useless)
(global-unset-key (kbd "M-y")) ;; Yank-pop (moved)
(global-unset-key (kbd "M-v")) ;; Scroll up
(global-unset-key (kbd "C-v")) ;; Scroll down
(global-unset-key (kbd "M-f")) ;; Move forward word
(global-unset-key (kbd "C-f")) ;; Move forward char
(global-unset-key (kbd "C-b")) ;; Move backward char
(global-unset-key (kbd "C-d")) ;; Delete char forward

;; Bind

(global-set-key (kbd "C-c r") 'ruby-eval-region-message)
(global-set-key (kbd "C-c R") 'ruby-eval-region-replace)
(global-set-key (kbd "C-c I") 'ruby-eval-region-insert)

(global-set-key (kbd "<tab>") 'dabbrev-expand)
(global-set-key (kbd "<backtab>") 'undo)
(global-set-key (kbd "<C-tab>") 'indent-for-tab-command)

(global-set-key (kbd "M-.") 'other-window)
(global-set-key (kbd "M-,") (lambda () (interactive) (other-window -1)))

(global-set-key (kbd "M-q") 'undo)

(global-set-key (kbd "M-a") 'backward-kill-word)
(global-set-key (kbd "M-s") 'kill-word)
(global-set-key (kbd "M-d") 'kill-whole-line)
(global-set-key (kbd "C-a") 'backward-delete-char-untabify)
(global-set-key (kbd "C-s") 'delete-char)

(global-set-key (kbd "M-i") 'previous-line)
(global-set-key (kbd "M-j") 'next-line)

(global-set-key (kbd "M-k") 'backward-word)
(global-set-key (kbd "M-l") 'forward-word)
(global-set-key (kbd "C-k") 'backward-char)
(global-set-key (kbd "C-l") 'forward-char)

(global-set-key (kbd "M-m") 'ace-jump-char-mode)
(global-set-key (kbd "M-o") 'back-to-indentation)
(global-set-key (kbd "M-p") 'move-end-of-line)

(global-set-key (kbd "M-n") 'isearch-forward)
(define-key isearch-mode-map (kbd "M-n") 'isearch-repeat-forward)
(global-set-key (kbd "M-b") 'isearch-backward)
(define-key isearch-mode-map (kbd "M-b") 'isearch-repeat-backward)

(global-set-key (kbd "M-h") 'scroll-up-command)
(global-set-key (kbd "M-u") 'scroll-down-command)

(global-set-key (kbd "M-g") 'goto-line)

(global-set-key (kbd "M-SPC") 'set-mark-command)

(global-set-key (kbd "M-w") 'kill-ring-save)
(global-set-key (kbd "M-e") 'yank)
(global-set-key (kbd "M-r") 'kill-region)
(global-set-key (kbd "M-t") 'yank-pop)

(global-set-key (kbd "C-p") 'recenter-top-bottom)

(global-set-key (kbd "M-c") 'newline)

(require 'shell) ;; omg why even
(define-key shell-mode-map (kbd "C-i") 'comint-previous-input)
(define-key shell-mode-map (kbd "C-j") 'comint-next-input)
(define-key shell-mode-map (kbd "M-c") 'comint-send-input)

(define-key minibuffer-local-must-match-map (kbd "M-c") 'minibuffer-complete-and-exit)

;; TODO: Where do we put the following?
;; - upcase-word
;; - downcase-word
;; - capitalize-word

;; Unfuck the minibuffer completion after having rebound TAB
(add-hook 'minibuffer-setup-hook
          (lambda ()
            (local-set-key (kbd "<tab>") 'minibuffer-complete)))
