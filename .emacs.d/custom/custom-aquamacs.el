;; Aquamacs specific config
(when (featurep 'aquamacs)
  ;; remove scrollbar, tabs
  (scroll-bar-mode -1)
  (tabbar-mode -1)
  ;; Enable Rainbow delimiters
  (global-rainbow-delimiters-mode t))

