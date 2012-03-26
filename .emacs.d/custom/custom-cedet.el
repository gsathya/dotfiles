;; cedet
;; See cedet/common/cedet.info for configuration details.
;(load-file "~/.emacs.d/plugins/cedet/common/cedet.el")
; Enable EDE (Project Management) features
;(global-ede-mode 1)
;; * This enables the database and idle reparse engines
;(semantic-load-enable-minimum-features)
;(setq semantic-load-turn-everything-on t)


;; ecb
(require 'ecb)
(setq ecb-tip-of-the-day nil)
(setq ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))
(ecb-activate)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-layout-name "left3")
 '(ecb-source-file-regexps (quote ((".*" ("\\(^\\(\\.\\|#\\)\\|\\(~$\\|\\.\\(elc\\|obj\\|o\\|class\\|lib\\|pyc\\|a\\|so\\|cache\\)$\\)\\)") ("^\\.\\(emacs\\|gnus\\)$")))))
 '(ecb-layout-window-sizes (quote (("left8" (ecb-directories-buffer-name 0.23671497584541062 . 0.29310344827586204) (ecb-sources-buffer-name 0.23671497584541062 . 0.22413793103448276) (ecb-methods-buffer-name 0.23671497584541062 . 0.25862068965517243) (ecb-history-buffer-name 0.23671497584541062 . 0.20689655172413793)))))
; '(ecb-options-version "2.40"))
;; resize the windows on emacs and run ecb-store-window-sizes
 '(show-paren-mode t))

(set-face-foreground (quote ecb-default-highlight-face) "DimGrey")
(set-face-background (quote ecb-default-highlight-face) "grey70")
