(require 'dok-utils)

(dok-require-packages '(paredit))

(autoload 'enable-paredit-mode
  "paredit"
  "Turn on pseudo-structural editing of Lisp code"
  t)

(provide 'dok-paredit)
