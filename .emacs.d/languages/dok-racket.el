(require 'dok-utils)

(dok-require-packages '(racket-mode
                        aggressive-indent))

(require 'dok-paredit)

;; Path to my racket binary. Change this if your racket binary is in a different
;; location.
(setq racket-program "~/racket/bin/racket")

;; Structural editing for racket
(add-hook 'racket-mode-hook #'paredit-mode)
(add-hook 'racket-repl-mode-hook #'paredit-mode)

;; Keeps code indented properly after every change
(add-hook 'racket-mode-hook #'aggressive-indent-mode)

(provide 'dok-racket)
