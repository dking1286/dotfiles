(require 'dok-utils)

(dok-require-packages '(racket-mode))

(require 'dok-paredit)

;; Path to my racket binary. Change this if your racket binary is in a different
;; location.
(setq racket-program "~/racket/bin/racket")

(add-hook 'racket-mode-hook #'paredit-mode)
(add-hook 'racket-repl-mode-hook #'paredit-mode)

(provide 'dok-racket)
