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

;; Don't show the startup screen
(setq inhibit-startup-message t)


;; Maximise Emacs
(defvar my-fullscreen-p t "Check if fullscreen is on or off")
(defun my-toggle-fullscreen ()
  (interactive)
  (setq my-fullscreen-p (not my-fullscreen-p))
  (if my-fullscreen-p
	  (restore-frame)
	(maximize-frame)))

(global-set-key (kbd "M-RET") 'my-toggle-fullscreen)
