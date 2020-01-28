(defun dok-init-scss ()
  (electric-pair-mode)
  (setq css-indent-offset 2))

(add-hook 'scss-mode-hook #'dok-init-scss)

(provide 'dok-scss)
