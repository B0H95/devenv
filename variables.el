(global-linum-mode 1)
(global-auto-revert-mode 1)
(setq make-backup-files nil)
(setq auto-save-default nil)
;(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(menu-bar-mode 0)
(setq scroll-step 1)
(setq inhibit-splash-screen t)
(setq c-default-style "linux"
      c-basic-offset 4)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq next-line-add-newlines nil)
(setq-default indent-tabs-mode nil)
(setq ruby-indent-level 4)
(c-set-offset 'case-label 4)
(setq mouse-wheel-progressive-speed nil)
(setq scroll-conservatively 10000 scroll-preserve-screen-position 1)
(set-cursor-color "#fff")
(setq next-screen-context-lines 33)
(add-hook 'html-mode-hook
          (lambda ()
            (set (make-local-variable 'sgml-basic-offset) 4)))

(add-hook 'c++-mode-hook
          (lambda ()
            (c-set-offset 'innamespace [0])))
(setq ace-jump-mode-move-keys
      (loop for i from ?a to ?z collect i))
