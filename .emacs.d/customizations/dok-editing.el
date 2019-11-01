(require 'dok-utils)

(dok-require-packages '(company
                        company-quickhelp))

(require 'saveplace)

(defun dok-toggle-comment-on-line ()
  "comments or uncomments the current line"
  (interactive)
  (comment-or-uncomment-region (line-beginning-position) (line-end-position)))

;; No need for ~ files when editing
(setq create-lockfiles nil)

;; Key binding to use "hippie expand" for text autocompletion
;; http://www.emacswiki.org/emacs/HippieExpand
(global-set-key (kbd "M-/") 'hippie-expand)

;; Lisp friendly hippie expand
(setq hippie-expand-try-functions-list
      '(try-expand-dabbrev
	try-expand-dabbrev-all-buffers
	try-expand-dabbrev-from-kill
	try-complete-lisp-symbol-partially
	try-complete-lisp-symbol))

;; Interactive search key bindings. By default, C-s runs
;; isearch-forward, so this swaps the key bindings
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)

;; Use spaces instead of tabs
(setq-default indent-tabs-mode nil)

;; When you visit a file, point goes to the last place where it
;; was when you previously visited the same file.
;; http://www.emacswiki.org/emacs/SavePlace
(setq-default save-place t)
;; keep track of saved places in ~/.emacs.d/places
(setq save-place-file (concat user-emacs-directory "places"))

;; Emacs can automatically create backup files. This tells Emacs to
;; put all backups in ~/.emacs.d/backups. More info:
;; http://www.gnu.org/software/emacs/manual/html_node/elisp/Backup-Files.html
(setq backup-directory-alist `(("." . ,(concat user-emacs-directory
                                               "backups"))))
(setq auto-save-default nil)

(global-set-key (kbd "C-;") 'dok-toggle-comment-on-line)
(global-set-key (kbd "C-/") 'comment-or-uncomment-region)

;; Enable global popups for code completion
(global-company-mode)
(company-quickhelp-mode)

;; Make completions case sensitive
(setq company-dabbrev-downcase 0)

;; Reduce delay on attempting code completion
(setq company-idle-delay 0.3)

;; Reduce delay on showing documentation
;; for the current completion candidate
(setq company-quickhelp-delay 0.3)

;; Try to complete after 1 character
(setq company-minimum-prefix-length 1)

;; Cycle through code completion suggestions
(setq company-selection-wrap-around t)

;; Navigate completion suggestions with C-n and C-p
(define-key company-active-map (kbd "C-n") 'company-select-next-or-abort)
(define-key company-active-map (kbd "C-p") 'company-select-previous-or-abort)

(provide 'dok-editing)
