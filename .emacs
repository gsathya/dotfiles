;;;-----------
;;; Load Path
;;;-----------

;; All vendor .el(c) files.
(add-to-list 'load-path "~/.emacs.d/vendors")

;; Emacs-w3m default path
(add-to-list 'load-path "/usr/share/emacs/site-lisp/")

;; Magit files path
(add-to-list 'load-path "~/.emacs.d/vendors/magit/")

;;--------
;; Vendors
;;--------

;; Use iPython interpreter
(require 'ipython)

;; Use Python-mode for .py files
(require 'python-mode)

;; Use up, down arrow keys to cycle buffer
(require 'comint)

;; Code completion
(require 'anything)
(require 'anything-ipython)

;; PEP8 and Pylint to check code quality
(require 'python-pep8)
(require 'python-pylint)

;; Enable yasnippet, loads snippets from /my-snippets/
(require 'yasnippet-bundle)

;; Load color-theme
(require 'color-theme)

;; Add Gist support
(require 'gist)

;; Add Git support
(require 'magit)

;; Highlight all occurences of a symbol
(require 'highlight-symbol)

;; Add line numbers to the left
(require 'linum+)

;;;-----------------------
;;; General Customizations
;;;-----------------------


;; Change directory for auto-save files
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Use python-mode for .py files
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))


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

;; Use up, down arrow keys to cycle buffer
(define-key comint-mode-map (kbd "M-") 'comint-next-input)
(define-key comint-mode-map (kbd "M-") 'comint-previous-input)
(define-key comint-mode-map [down] 'comint-next-matching-input-from-input)
(define-key comint-mode-map [up] 'comint-previous-matching-input-from-input)

;; Pylookup for browsing pydocs
(autoload 'pylookup-lookup "pylookup")
(autoload 'pylookup-update "pylookup")
(setq pylookup-program "~/.emacs.d/vendors/pylookup.py")
(setq pylookup-db-file "~/.emacs.d/vendors/pylookup.db")
(global-set-key "\C-ch" 'pylookup-lookup)

;; Add matching parenthesis,single and triple quotes automatically
(autoload 'autopair-global-mode "autopair" nil t)
(autopair-global-mode)
(add-hook 'python-mode-hook
          #'(lambda ()
              (push '(?' . ?')
                    (getf autopair-extra-pairs :code))
              (setq autopair-handle-action-fns
                    (list #'autopair-default-handle-action
                          #'autopair-python-triple-quote-action))))

;; Delete trailing white space - Pylint may shout w/o it
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(yas/initialize)
(yas/load-directory "~/.emacs.d/vendors/my-snippets/")

;; Use emacs-w3m to browse links inside emacs
(setq browse-url-browser-function 'w3m-browse-url)
(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)

;; Don't show the startup screen
(setq inhibit-startup-message t)

;; "y or n" instead of "yes or no"
(fset 'yes-or-no-p 'y-or-n-p)

;; Display line and column numbers
(setq line-number-mode    t)
(setq column-number-mode  t)


;; Prevent the annoying beep on errors
(setq visible-bell t)

;; Gotta see matching parens
(show-paren-mode t)

;; Color-theme-molokai(https://github.com/alloy-d/color-theme-molokai) is set
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-molokai)))


;; Add line numbers to the left
(global-linum-mode t)

;; Transient mark mode for copy
(setq transient-mark-mode t)

;; Use C-u to higlight symbol
(global-set-key [(control u)] 'highlight-symbol-at-point)
(global-set-key [(meta u)] 'highlight-symbol-next)

;; Enable Ido mode
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)


;;---------------------------------
;; Aquamacs Specific Customization
;;---------------------------------

(when (featurep 'aquamacs)
  ;; remove scrollbar, tabs
  (scroll-bar-mode -1)
  (tabbar-mode -1))
