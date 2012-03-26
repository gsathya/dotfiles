;; Use escreen for window management
(load "escreen")
(escreen-install)

;; Use C-\ l to list all screens
(defun escreen-get-active-screen-numbers-with-emphasis ()
  "what the name says"
  (interactive)
  (let ((escreens (escreen-get-active-screen-numbers))
        (emphased ""))

    (dolist (s escreens)
      (setq emphased
            (concat emphased (if (= escreen-current-screen-number s)
                                 (propertize (number-to-string s)
                                             ;;'face 'custom-variable-tag) " ")
                                             'face 'info-title-3)
                               ;;'face 'font-lock-warning-face)
                               ;;'face 'secondary-selection)
                               (number-to-string s))
                    " ")))
    (message "escreen: active screens: %s" emphased)))

(global-set-key (kbd "C-\\ l") 'escreen-get-active-screen-numbers-with-emphasis)

