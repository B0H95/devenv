(require 'package)
(add-to-list 'package-archives
             '("MELPA Stable" . "https://stable.melpa.org/packages/") t)
;; (package-initialize)

;; <FUCK GNU AND FUCK THE FREE SOFTWARE FOUNDATION>
(defun get-the-file-name (filename)
  (expand-file-name filename (file-name-directory load-file-name)))
(defun load-the-file (filename)
  (load-file (get-the-file-name filename)))
(defun the-file-exists-p (filename)
  (file-exists-p (get-the-file-name filename)))
;; </FUCK GNU AND FUCK THE FREE SOFTWARE FOUNDATION>

(load-the-file "./interactive/ruby-eval-region.el")
(load-the-file "./interactive/c-generators.el")

(load-the-file "./variables.el")
(load-the-file "./keybinds.el")
(load-the-file "./hooks.el")

(if (the-file-exists-p "./package-specific.el")
    (load-the-file "./package-specific.el"))
