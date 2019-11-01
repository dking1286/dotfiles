(require 'dok-utils)

(dok-require-packages '(;; Nice looking bottom bar
                        powerline

                        ;; Zenburn color theme
                        zenburn-theme))

(require 'powerline)

;; The all-important color theme
(load-theme 'zenburn t)

;; Hasklig font
(set-face-attribute 'default nil
                    :family "Hasklig"
                    :height 70
                    :weight 'normal
                    :width 'normal)

;; Start Emacs fullscreen
(setq initial-frame-alist '((fullscreen . maximized)))

;; Go straight to the scratch buffer on startup
(setq inhibit-startup-message t)

;; Turn off the menu bar, tool bar, and blinking cursor, but keep the scroll bar
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode 1)
(blink-cursor-mode 0)

;; Show global line numbers
(global-linum-mode)

;; Highlights matching parentheses
(show-paren-mode 1)

;; Highlight current line
(global-hl-line-mode 1)

;; Customize how Emacs interacts with the OS for things like the clipboard
(setq ;; makes killing/yanking interact with the clipboard
      x-select-enable-clipboard t

      ;; I'm actually not sure what this does but it's recommended?
      x-select-enable-primary t

      ;; Save clipboard strings into kill ring before replacing them.
      ;; When one selects something in another program to paste it into Emacs,
      ;; but kills something in Emacs before actually pasting it,
      ;; this selection is gone unless this variable is non-nil
      save-interprogram-paste-before-kill t

      ;; Shows all options when running apropos. For more info,
      ;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Apropos.html
      apropos-do-all t

      ;; Mouse yank commands yank at point instead of at click.
      mouse-yank-at-point t)

;; full path in title bar
(setq-default frame-title-format "%b (%f)")

;; don't pop up font menu
(global-set-key (kbd "s-t") '(lambda () (interactive)))

;; no bell
(setq ring-bell-function 'ignore)

;; Highlight text beyond 80 characters
(setq-default whitespace-line-column 80
              whitespace-style '(face lines-tail))

(add-hook 'prog-mode-hook #'whitespace-mode)

;; Enable Powerline for a nicer bottom bar
(powerline-default-theme)

(provide 'dok-ui)
