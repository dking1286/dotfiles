(require 'dok-utils)

(dok-require-packages '(;; edit html tags like sexps
                        tagedit))

(require 'tagedit)

(eval-after-load 'sgml-mode
  '(progn
     (tagedit-add-paredit-like-keybindings)
     (tagedit-add-experimental-features)
     (add-hook 'html-mode-hook (lambda () (tagedit-mode 1)))))

(provide 'dok-html)
