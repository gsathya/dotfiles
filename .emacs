;;-----------
;; Load Path
;;-----------

;; All vendor .el(c) files.
(add-to-list 'load-path "~/.emacs.d/vendors/")

;; All custom .el(c) files.
(add-to-list 'load-path "~/.emacs.d/custom/")

;; Emacs-w3m default path
;(add-to-list 'load-path "/usr/share/emacs/site-lisp/")

;; Magit files path
;(add-to-list 'load-path "~/.emacs.d/vendors/magit/")

;; Emms file path
;(add-to-list 'load-path "~/.emacs.d/vendors/emms/lisp/")

;; Autocomplete
(add-to-list 'load-path "~/.emacs.d/vendors/autocomplete")

;; RoR
;; (add-to-list 'load-path "~/.emacs.d/vendors/rinari")
;; (add-to-list 'load-path "~/.emacs.d/vendors/rhtml")

;; Cedet 
;(load-file "~/.emacs.d/vendors/cedet/common/cedet.el")

;; ECB load path
;; (setq stack-trace-on-error t)
;; (add-to-list 'load-path "~/.emacs.d/vendors/ecb")
;; Fix version bug in ecb
;; (setq ecb-cedet-required-version-max '(1 1 0 0))
;; (add-to-list 'load-path "~/.emacs.d/vendors/cedet/cedet/common")

;;--------
;; Vendors
;;--------

;; Use iPython interpreter
;(require 'ipython)

;; Use Python-mode for .py files
(require 'python-mode)

;; Use Pymacs
;(require 'pymacs)

;; Use up, down arrow keys to cycle buffer
(require 'comint)

;; Rust support
(require 'rust-mode)

;; Anything (Code completion)
(require 'anything)
;(require 'anything-ipython)

;; Ido mode for M-x
(require 'smex)

;; PEP8 and Pylint to check code quality
;(require 'python-pep8)
;(require 'python-pylint)

;; Enable yasnippet, loads snippets from /my-snippets/
(require 'yasnippet-bundle)

;; Load color-theme
(require 'color-theme)

;; Add Gist support
;(require 'gist)

;; Add Git support
;(require 'magit)

;; Add line numbers to the left
(require 'linum+)

;; Interactively insert from kill ring
(require 'browse-kill-ring)

;; Emms for music stuff
;(require 'emms-setup)

;; Autocomplete mostly py 
(require 'auto-complete)

;; Crazy jumping foo
(require 'ace-jump-mode)

;; Markup -> HTML
;(require 'zencoding-mode)

;; Coffee
;(require 'coffee-mode)

;; RoR foo
;(require 'rinari)
;(require 'rhtml-mode)

;; Web dev
;(require 'sass-mode)
;(require 'yaml-mode)

;; Code browser
;(require 'ecb)

;; Mark multiple strings
;(require 'mark-more-like-this)

;; slim makes html
;(require 'slim-mode)

;; Web-mode for html major-mode
(require 'web-mode)

;;--------
;; Custom
;;--------

;; mode-line configuration
(load "custom-modeline")

;; UI config
(load "custom-ui")

;; Aquamacs configuration
;(load "custom-aquamacs")

;; General stuff
(load "custom-general")

;; Python stuff
(load "custom-python")

;; Yasnippet stuff
(load "custom-yas")

;; Emms stuff
;(load "custom-emms")

;; Escreen mods
;(load "custom-escreen")

;; Coffee stuff
;(load "custom-coffee")

;; Ruby stuff
;(load "custom-ruby")

;; ecb 
;(load "custom-cedet")

(define-key global-map (kbd "RET") 'newline-and-indent)
(put 'autopair-newline 'disabled nil)
(put 'upcase-region 'disabled nil)
(setq ns-use-native-fullscreen nil)
