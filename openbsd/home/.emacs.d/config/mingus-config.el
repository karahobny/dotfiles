;; mingus
(require 'mingus)
(require 'mingus-stays-home)
(add-hook 'mingus-mode-hook (lambda () (setq truncate-lines t)))
;; => keybindings
(global-set-key (kbd "C-c m") 'mingus)

(provide 'mingus-config)
