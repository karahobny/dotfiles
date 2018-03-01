;; parinfer
(setq parinfer-extensions
      '(defaults pretty-parens smart-yank paredit))
(setq parinfer-auto-switch-indent-mode 0)
;; => keybindings
(global-set-key (kbd "C-t") 'parinfer-toggle-mode)
;; => parinfer hooks
(add-hook 'clojure-mode-hook     #'parinfer-mode)
(add-hook 'emacs-lisp-mode-hook  #'parinfer-mode)
(add-hook 'common-lisp-mode-hook #'parinfer-mode)
(add-hook 'lisp-mode-hook        #'parinfer-mode)
(add-hook 'scheme-mode-hook      #'parinfer-mode)

(provide 'parinfer-config)