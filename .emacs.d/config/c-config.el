;; c
(defun my-c-mode-hook ()
  (setq c-basic-offset 4)
  (setq tab-width 4)
  (define-key c-mode-map "\C-m" 'reindent-then-newline-and-indent)
  (define-key c-mode-map "\C-ce" 'c-comment-edit)
  (setq c-auto-hungry-initial-state 'none)
  (setq c-delete-function 'backward-delete-char)
  ;; => bsd-style
  (setq c-tab-always-indent t)
  (setq indent-tabs-mode t)
  (setq c-default-style "bsd")
  (setq c-indent-level 4)
  (setq c-continued-statement-offset 4)
  (setq c-brace-offset -4)
  (setq c-argdecl-indent 0)
  (setq c-label-offset -4))

(add-hook 'c-mode-hook 'my-c-mode-hook)

(provide 'c-config)
