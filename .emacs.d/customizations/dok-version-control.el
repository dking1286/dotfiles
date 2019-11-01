(require 'dok-utils)

(dok-require-packages '(magit))

(require 'magit)

(global-set-key (kbd "C-x g") 'magit-status)

(provide 'dok-version-control)
