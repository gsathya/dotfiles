;;-----------
;; Load Path
;;-----------

;; All vendor .el(c) files.
(add-to-list 'load-path "~/.emacs.d/vendors/")

;; All custom .el(c) files.
(add-to-list 'load-path "~/.emacs.d/custom/")

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

;; Anything (Code completion)
(require 'anything)
(require 'anything-ipython)

;; Ido mode for M-x
(require 'smex)

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

;; Rainbow Delimiters
(require 'rainbow-delimiters)

;; Interactively insert from kill ring
(require 'browse-kill-ring)

;; Maximise frame
(require 'maxframe)

;;--------
;; Custom
;;--------

;; mode-line configuration
(load "custom-modeline")

;; UI config
(load "custom-ui")

;; Aquamacs configuration
(load "custom-aquamacs")

;; General stuff
(load "custom-general")

;; Python stuff
(load "custom-python")

;; Yasnippet stuff
(load "custom-yas")


