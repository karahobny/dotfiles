;; magit
(require 'magit)
(global-magit-file-mode)

;; => keybindings
(global-set-key (kbd "C-x g")   'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)
(global-set-key (kbd "C-c s")   'magit-stage-file)
(global-set-key (kbd "C-c C-s") 'magit-unstage-file)
(global-set-key (kbd "C-c c")   'magit-commit-popup)
(global-set-key (kbd "C-c p")   'magit-push-popup)

(provide 'magit-config)
