;; keybindings
;; => windows & buffers
;; ==> jump to window  in the wanted direction with meta-arrowkeys
(windmove-default-keybindings 'meta)
;; ==> jump to a numbered window
(global-set-key (kbd "M-o")         'ace-window)
;; ==> scrolling in the modeline switches the buffer of the active window
(global-set-key [mode-line mouse-4] 'next-buffer)
(global-set-key [mode-line mouse-5] 'previous-buffer)
;; ==> splitting windows marks the new one active
(global-set-key "\C-x2" (lambda () (interactive)(split-window-vertically) (other-window 1)))
(global-set-key "\C-x3" (lambda () (interactive)(split-window-horizontally) (other-window 1)))

;; => text movement and manipulation
(global-set-key (kbd "<home>") 'beginning-of-line)
(global-set-key (kbd "<end>")  'end-of-line)
(global-set-key (kbd "C-c g") 'goto-line)
(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-a") 'back-to-indentation)
(global-set-key (kbd "C-S-a") 'beginning-of-line)
;; ==> control-tab to insert an actual tab character
(global-set-key (kbd "C-<tab>") "\C-q\t")
;; ==> toggle line numbers
(global-set-key (kbd "M-n") 'nlinum-mode)
;; ==> meta-; to comment/uncomment lines, regions etc.
(global-set-key (kbd "M-;") 'comment-dwim-2)
;; ==> multiple cursors ala sublime
(global-unset-key (kbd "M-<down-mouse-1>"))
(global-set-key (kbd "M-<mouse-1>") 'mc/add-cursor-on-click)

;; => modes
;; ==> parinfer
(global-set-key (kbd "C-t") 'parinfer-toggle-mode)
;; ==> undo-tree
(global-set-key (kbd "C-z") 'undo-tree-undo)
(global-set-key (kbd "C-r") 'undo-tree-redo)
;; ==> magit
(global-set-key (kbd "C-x g")   'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)
(global-set-key (kbd "C-c s")   'magit-stage-file)
(global-set-key (kbd "C-c C-s") 'magit-unstage-file)
(global-set-key (kbd "C-c c")   'magit-commit-popup)
(global-set-key (kbd "C-c p")   'magit-push-popup)
;; ==> company-mode
(define-key company-active-map (kbd "\C-n") 'company-select-next)
(define-key company-active-map (kbd "\C-p") 'company-select-previous)
(define-key company-active-map (kbd "\C-d") 'company-show-doc-buffer)
(define-key company-active-map (kbd "M-.") 'company-show-location)

;; => y/enter or no prompt instead of the longer yes-no -variant
(fset 'yes-or-no-p 'y-or-n-p)
(define-key query-replace-map [return] 'act)
(define-key query-replace-map [?\C-m] 'act)
