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
;(setq browse-url-browser-function 'w3m-browse-url)
;(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)

;; "y or n" instead of "yes or no"
(fset 'yes-or-no-p 'y-or-n-p)

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

;; Comment region - C-cq
;; Uncomment region - C-u C-cq - Doesn't work
(autoload 'comment-out-region "comment" nil t)
(global-set-key "\C-cq" 'comment-out-region)

;; Effective window switching
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)

;; Go to line
(global-set-key (kbd "M-g")         'goto-line)

                                        ; M-w copies the current line when the region is not active, and
                                        ; C-w deletes it.
(defadvice kill-ring-save (before slick-copy activate compile)
  "When called interactively with no active region, copy a single
line instead."
  (interactive
   (if mark-active (list (region-beginning) (region-end))
     (message "Copied line")
     (list (line-beginning-position)
           (line-beginning-position 2)))))

(defadvice kill-region (before slick-cut activate compile)
  "When called interactively with no active region, kill a single
line instead."
  (interactive
   (if mark-active (list (region-beginning) (region-end))
     (list (line-beginning-position)
           (line-beginning-position 2)))))

;; Don't use Tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
;; Reload files when its changed on disk
(global-auto-revert-mode 1)

(defun uniq-lines (beg end)
  "Unique lines in region.
Called from a program, there are two arguments:
BEG and END (region to sort)."
  (interactive "r")
  (save-excursion
    (save-restriction
      (narrow-to-region beg end)
      (goto-char (point-min))
      (while (not (eobp))
        (kill-line 1)
        (yank)
        (let ((next-line (point)))
          (while
              (re-search-forward
               (format "^%s" (regexp-quote (car kill-ring))) nil t)
            (replace-match "" nil nil))
          (goto-char next-line))))))

(global-auto-complete-mode t)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/vendors/autocomplete/dict")
    (require 'auto-complete-config)
    (ac-config-default)

;; Show errors
(setq stack-trace-on-error t)

;; Use Markdown mode for editing .md files
(autoload 'markdown-mode "markdown-mode.el"
  "Major mode for editing Markdown files" t)
(setq auto-mode-alist
      (cons '("\\.md" . markdown-mode) auto-mode-alist))

;; Set shortcut for Ace-Jump
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

;; Use zencoding-mode
(add-hook 'sgml-mode-hook 'zencoding-mode) ;; Auto-start on any markup modes

;; ACK the c0d3z
(autoload 'ack-same "full-ack" nil t)
(autoload 'ack "full-ack" nil t)
(autoload 'ack-find-same-file "full-ack" nil t)
(autoload 'ack-find-file "full-ack" nil t)

;; use web-mode for html shizz
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(defun web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (local-set-key (kbd "RET") 'newline-and-indent)
)
(add-hook 'web-mode-hook  'web-mode-hook)

(setq debug-on-error nil)
(setq visible-bell nil)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(setq-default cursor-type 'bar)

(delete-selection-mode 1)
