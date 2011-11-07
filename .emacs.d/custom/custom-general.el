;; Change directory for auto-save files
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Use up, down arrow keys to cycle buffer
(define-key comint-mode-map (kbd "M-") 'comint-next-input)
(define-key comint-mode-map (kbd "M-") 'comint-previous-input)
(define-key comint-mode-map [down] 'comint-next-matching-input-from-input)
(define-key comint-mode-map [up] 'comint-previous-matching-input-from-input)

;; Use emacs-w3m to browse links inside emacs
(setq browse-url-browser-function 'w3m-browse-url)
(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)

;; "y or n" instead of "yes or no"
(fset 'yes-or-no-p 'y-or-n-p)

;; Use C-u to higlight symbol
(global-set-key [(control u)] 'highlight-symbol-at-point)
(global-set-key [(meta u)] 'highlight-symbol-next)

;; Enable Ido mode
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; Smex customizations
(smex-initialize)
(global-set-key (kbd "\C-x\C-m") 'smex)
(global-set-key (kbd "\C-c\C-m") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; Use C-c k invoke browse-kill-ring
(global-set-key (kbd "C-c k") 'browse-kill-ring)
