(require 'package)
(add-to-list 'package-archives
             '("MELPA Stable" . "https://stable.melpa.org/packages/") t)
;; (package-initialize)

(load-file "./variables.el")
(load-file "./keybinds.el")
(load-file "./hooks.el")

(if (file-exists-p "./package-specific.el")
    (load-file "./package-specific.el"))
