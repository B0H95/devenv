(require 'package)
(add-to-list 'package-archives
             '("MELPA Stable" . "https://stable.melpa.org/packages/") t)

;; File functions that aren't totally broken
(defun get-the-file-name (filename)
  (expand-file-name filename (file-name-directory load-file-name)))
(defun load-the-file (filename)
  (load-file (get-the-file-name filename)))
(defun the-file-exists-p (filename)
  (file-exists-p (get-the-file-name filename)))

;; Packages required to unfuck emacs
(load-the-file "./3rdparty/bind-key.el") ;; The fact that emacs requires a separate package for binding keys is absurd, but here we are
(load-the-file "./3rdparty/simpleclip.el") ;; Non-retarded clipboard management

(load-the-file "./variables.el")
(load-the-file "./keybinds.el")

(add-hook 'before-save-hook 'delete-trailing-whitespace)
