(autoload 'python-mode "python-mode" "Python Mode." t)
(add-to-list 'interpreter-mode-alist '("python" . python-mode))
;; (autoload 'pymacs-apply "pymacs")
;; (autoload 'pymacs-call "pymacs")
;; (autoload 'pymacs-eval "pymacs" nil t)
;; (autoload 'pymacs-exec "pymacs" nil t)
;; (autoload 'pymacs-load "pymacs" nil t)
;; (pymacs-load "ropemacs" "rope-")
;; (setq ropemacs-enable-autoimport t)
;; (setenv "PYMACS_PYTHON" "python")

;; Use python-mode for .py files
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))

;; Pylookup for browsing pydocs
(autoload 'pylookup-lookup "pylookup")
(autoload 'pylookup-update "pylookup")
(setq pylookup-program "~/.emacs.d/vendors/pylookup.py")
(setq pylookup-db-file "~/.emacs.d/vendors/pylookup.db")
(global-set-key "\C-ch" 'pylookup-lookup)

