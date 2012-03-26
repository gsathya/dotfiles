;; Ido custom configs

(ido-mode 1)

;(setq
;  ido-save-directory-list-file "~/.emacs.d/cache/ido.last"

;  ido-ignore-buffers ;; ignore these guys
;  '("\\` " "^\*Mess" "^\*Back" ".*Completion" "^\*Ido" "^\*trace"

;     "^\*compilation" "^\*GTAGS" "^session\.*" "^\*")

;  ido-work-directory-list '("~/" "~/Documents" "~src")
;  ido-case-fold  t                 ; Case-insensitive
  ido-everywhere t                 ; Use ido everywhere
;  ido-enable-last-directory-history t ; Remember last used dirs
;  ido-max-work-directory-list 30   ; Should be enough
;  ido-max-work-file-list      50   ; Remember many
;  ido-use-filename-at-point nil    ; Don't use filename at point (annoying)
;  ido-use-url-at-point nil         ; Don't use url at point (annoying)

  ido-enable-flex-matching t       ; Fuzzy match
;  ido-max-prospects 8              ; Don't spam my minibuffer
;  ido-confirm-unique-completion t) ; Wait for RET, even with unique completion

;; when using ido, the confirmation is rather annoying
 (setq confirm-nonexistent-file-or-buffer nil)
