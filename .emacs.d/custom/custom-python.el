;; Use anything.el for code completion - Doesn't work
(when (require 'anything-show-completion nil t)
   (use-anything-show-completion 'anything-ipython-complete
                                 '(length initial-pattern)))

(add-hook 'python-mode-hook #'(lambda ()
                                 (define-key py-mode-map (kbd "M-<tab>") 'anything-ipython-complete)))
(add-hook 'ipython-shell-hook #'(lambda ()
                                  (define-key py-mode-map (kbd "M-<tab>") 'anything-ipython-complete)))
(when (require 'anything-show-completion nil t)
  (use-anything-show-completion 'anything-ipython-complete
				'(length initial-pattern)))

;; Use python-mode for .py files
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))

;; Pylookup for browsing pydocs
(autoload 'pylookup-lookup "pylookup")
(autoload 'pylookup-update "pylookup")
(setq pylookup-program "~/.emacs.d/vendors/pylookup.py")
(setq pylookup-db-file "~/.emacs.d/vendors/pylookup.db")
(global-set-key "\C-ch" 'pylookup-lookup)
