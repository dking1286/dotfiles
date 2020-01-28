(require 'dok-utils)

(dok-require-packages '(cider
                        clojure-mode
                        clojure-mode-extra-font-locking
                        clj-refactor
                        aggressive-indent))

(require 'dok-paredit)

(defun dok-clojure-check-all ()
  "Runs generative testing on all instrumented symbols"
  (cider-interactive-eval (format "(clojure.spec.test.alpha/check)")))

(defun dok-cider-refresh ()
  "Refreshes the Clojure project in the REPL, to facilitate the
   the 'reloaded workflow'.
   See http://thinkrelevance.com/blog/2013/06/04/clojure-workflow-reloaded"
  (interactive)
  (cider-interactive-eval (format "(user/reset)")))

(defun dok-cider-jack-in ()
  (interactive)
  (let ((cider-lein-parameters (concat "with-profile +dev,+dev-local repl "
                                       ":headless :host localhost"))
        (cider-clojure-cli-global-options "-A:dev"))
    (cider-jack-in '())))

(defun dok-cider-jack-in-cljs ()
  (interactive)
  (let ((cider-clojure-cli-global-options "-A:dev:shadow-cljs"))
    (cider-jack-in-cljs '())))

;; Paredit for Clojure
(add-hook 'clojure-mode-hook #'enable-paredit-mode)
(add-hook 'cider-repl-mode-hook #'enable-paredit-mode)

;; This is useful for working with camel-case tokens, like Java class names
(add-hook 'clojure-mode-hook #'subword-mode)

;; syntax hilighting for midje
(add-hook 'clojure-mode-hook
          (lambda ()
            (setq inferior-lisp-program "lein repl")
            (font-lock-add-keywords
             nil
             '(("(\\(facts?\\)"
                (1 font-lock-keyword-face))
               ("(\\(background?\\)"
                (1 font-lock-keyword-face))))
            (define-clojure-indent (fact 1))
            (define-clojure-indent (facts 1))))

;; Enable clj-refactor
(add-hook 'clojure-mode-hook
          (lambda ()
            (clj-refactor-mode 1)
            (yas-minor-mode 1) ; for adding require/use/import statements
            (cljr-add-keybindings-with-prefix "C-c C-m")))

;; Aggressive indent mode keeps code indented properly after every change.
(add-hook 'clojure-mode-hook #'aggressive-indent-mode)

;; Provides minibuffer documentation for the code you're typing into the
;; Cider REPL
(add-hook 'cider-mode-hook #'eldoc-mode)

;; Go right to the Cider buffer when it's finished connecting
(setq cider-repl-pop-to-buffer-on-connect t)

;; When there's a cider error, show its buffer and switch to it
(setq cider-show-error-buffer t)
(setq cider-auto-select-error-buffer t)

;; Where to store the cider history.
(setq cider-repl-history-file "~/.emacs.d/cider-history")

;; Wrap when navigating history.
(setq cider-repl-wrap-history t)

;; Use clojure mode for other extensions
(add-to-list 'auto-mode-alist '("\\.edn$" . clojure-mode))
(add-to-list 'auto-mode-alist '("\\.boot$" . clojure-mode))
(add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode))
(add-to-list 'auto-mode-alist '("lein-env" . enh-ruby-mode))

(eval-after-load 'cider
  '(progn (define-key clojure-mode-map (kbd "C-c C-r") 'dok-cider-refresh)
          (define-key clojure-mode-map (kbd "C-c C-s c") 'dok-clojure-check-all)
          (define-key cider-mode-map (kbd "C-c C-r") 'dok-cider-refresh)
          (define-key cider-mode-map (kbd "C-c C-s c") 'dok-clojure-check-all)))

;; Enable "fuzzy matching" on code completion
(add-hook 'cider-repl-mode-hook #'cider-company-enable-fuzzy-completion)
(add-hook 'cider-mode-hook #'cider-company-enable-fuzzy-completion)

(provide 'dok-clojure)
