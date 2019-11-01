(defun dok-require-packages (packages)
  "Installs a package if it is not already installed."
  (dolist (pkg packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

(provide 'dok-utils)
