;; Emms config for music
(emms-standard)
(emms-default-players)

(global-set-key (kbd "C-c e <up>") 'emms-start)
(global-set-key (kbd "C-c e <down>") 'emms-stop)
(global-set-key (kbd "C-c e <left>") 'emms-previous)
(global-set-key (kbd "C-c e <right>") 'emms-next)
