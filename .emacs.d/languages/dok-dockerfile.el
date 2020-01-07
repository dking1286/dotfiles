(require 'dok-utils)

(dok-require-packages '(dockerfile-mode))

(require 'dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))

(provide 'dok-dockerfile)
