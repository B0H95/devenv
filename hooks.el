(add-hook 'before-save-hook 'delete-trailing-whitespace)

(add-hook 'c-mode-hook
          '(lambda ()
             (local-set-key (kbd "C-c b") 'b0h-c-generate-scope)))
