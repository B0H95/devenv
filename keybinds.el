;; Various helper functions that unfuck emacs default behavior
(defun kill-word-without-fucking-up-the-clipboard (_)
  (interactive "p")
  (delete-region
   (point)
   (progn
     (forward-word)
     (point))))

(defun backward-kill-word-without-fucking-up-the-clipboard (_)
  (interactive "p")
  (delete-region
   (point)
   (progn
     (forward-word -1)
     (point))))

(defun kill-whole-line-without-fucking-up-the-clipboard ()
  (interactive)
  (let (p1 p2)
    (beginning-of-line)
    (setq p1 (point))
    (end-of-line)
    (setq p2 (point))
    (delete-region p1 p2)
    (delete-char 1)))

;; Unbind
(unbind-key "C-x o")
(unbind-key "C-_")
(unbind-key "C-x u")
(unbind-key "C-k")
(unbind-key "C-z")
(unbind-key "M-<")
(unbind-key "M->")
(unbind-key "C-z")
(unbind-key "C-p") ;; Move up
(unbind-key "C-n") ;; Move down
(unbind-key "M-j") ;; Ghetto newline
(unbind-key "C-a") ;; Move to beginning of line
(unbind-key "C-e") ;; Move to end of line
(unbind-key "C-j") ;; Another ghetto newline
(unbind-key "C-o") ;; Yet another ghetto newline
(unbind-key "M-a") ;; Moves backward unpredictably
(unbind-key "M-e") ;; Moves forward unpredictably
(unbind-key "M-g g") ;; Shitty move-to-line
(unbind-key "C-SPC") ;; Start selection
(unbind-key "M-t") ;; Transpose word (useless)
(unbind-key "M-y") ;; Yank-pop (moved)
(unbind-key "M-v") ;; Scroll up
(unbind-key "C-v") ;; Scroll down
(unbind-key "M-f") ;; Move forward word
(unbind-key "C-f") ;; Move forward char
(unbind-key "C-b") ;; Move backward char
(unbind-key "C-d") ;; Delete char forward
(unbind-key "C-x C-c") ;; Biggest source of frustration I have ever seen
(unbind-key "C-M-q") ;; Whatever this is, I don't need it
(unbind-key "C-x C-z") ;; Why would anyone need this?
(unbind-key "C-x f")

;; Bind
(bind-key* "<tab>" (lambda () (interactive) (if (minibufferp) (call-interactively 'minibuffer-complete) (call-interactively 'dabbrev-expand))))
(bind-key* "<backtab>" 'undo)
(bind-key* "M->" 'indent-for-tab-command)
(bind-key* "M-," 'backward-char)
(bind-key* "M-." 'forward-char)
(bind-key* "M-q" 'undo)
(bind-key* "M-a" 'backward-kill-word-without-fucking-up-the-clipboard)
(bind-key* "M-s" 'kill-word-without-fucking-up-the-clipboard)
(bind-key* "M-d" 'kill-whole-line-without-fucking-up-the-clipboard)
(bind-key* "M-z" 'backward-delete-char-untabify)
(bind-key* "M-x" 'delete-char)
(bind-key* "M-i" 'previous-line)
(bind-key* "M-j" 'next-line)
(bind-key* "M-k" 'backward-word)
(bind-key* "M-l" 'forward-word)
(bind-key* "M-o" 'back-to-indentation)
(bind-key* "M-p" 'move-end-of-line)
(bind-key* "M-n" 'isearch-forward)
(bind-key* "M-b" 'isearch-backward)
(bind-key* "M-h" 'scroll-up-command)
(bind-key* "M-u" 'scroll-down-command)
(bind-key* "M-g" 'goto-line)
(bind-key* "M-SPC" 'set-mark-command)
(bind-key* "M-w" (lambda () (interactive) (call-interactively 'simpleclip-copy) (call-interactively 'keyboard-quit)))
(bind-key* "M-e" 'simpleclip-paste)
(bind-key* "M-r" 'simpleclip-cut)
(bind-key* "M-ö" 'recenter-top-bottom)
(bind-key* "M-c" (lambda () (interactive) (if (minibufferp) (call-interactively 'minibuffer-complete-and-exit) (call-interactively 'newline))))
(bind-key* "C-M-q" 'save-buffers-kill-terminal)
(bind-key* "M-§" 'execute-extended-command)
(bind-key* "M--" 'previous-buffer)
(bind-key* "C--" 'next-buffer)
(bind-key* "C-u" 'beginning-of-buffer)
(bind-key* "C-h" 'end-of-buffer)
(bind-key* "C-z" 'downcase-word)
(bind-key* "C-x" 'upcase-word)
(bind-key* "C-c" 'capitalize-word)
(bind-key* "C-M-s" 'save-buffer)
(bind-key* "C-M-w" 'write-file)
(bind-key* "C-M-f" 'find-file)
(bind-key* "C-M-q" 'kill-this-buffer)
(bind-key* "C-M-b" 'switch-to-buffer)
(bind-key* "<backspace>" 'delete-other-windows)
(bind-key* "C-?" 'describe-key)
(bind-key* "<f1>" (lambda () (interactive)
                     (let (frame1 frame2)
                       (setq frame1 (selected-frame))
                       (switch-to-buffer-other-frame (current-buffer))
                       (setq frame2 (selected-frame))
                       (select-frame-set-input-focus frame1)
                       (call-interactively 'previous-buffer)
                       (select-frame-set-input-focus frame2))))

(bind-key "M-b" 'isearch-repeat-backward isearch-mode-map)
(bind-key "M-n" 'isearch-repeat-forward isearch-mode-map)
(bind-key "M-c" 'isearch-exit isearch-mode-map)
