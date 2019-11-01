(require 'dok-utils)

(dok-require-packages '(;; Intero Haskell IDE
                        intero))

;; Use the Intero Haskell IDE
(add-hook 'haskell-mode-hook #'intero-mode)

(provide 'dok-haskell)
