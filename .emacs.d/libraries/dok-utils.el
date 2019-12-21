(require 'dok-straight)

(defun dok-require-packages (packages)
  "Installs a package if it is not already installed."
  (dolist (package packages)
    (straight-use-package package)))

(provide 'dok-utils)
