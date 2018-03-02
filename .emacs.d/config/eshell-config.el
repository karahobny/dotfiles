;; eshell
(require 'eshell)
;; => keybindings
(global-set-key (kbd "C-x !") 'eshell)
;; => prompt
(with-eval-after-load "esh-opt"
  (autoload 'epe-theme-lambda "eshell-prompt-extras")
  (setq eshell-highlight-prompt nil
        eshell-prompt-function 'epe-theme-lambda))
;; => bookmarks integration
(add-hook 'eshell-mode-hook 'eshell-bookmark-setup)
;; => banner
(add-hook 'eshell-banner-load-hook
          '(lambda ()
             (setq eshell-banner-message
                   (if (executable-find "theo")
                       (concat (shell-command-to-string "theo")
                               "\n		~~Theo de Raadt\n\n")
                     (concat "Welcome to the Emacs shell " user-login-name "\n")))))
;; => smart display
(require 'em-smart)
(setq eshell-where-to-jump 'begin
      eshell-review-quick-commands nil
      eshell-smart-space-goes-to-end t)

(provide 'eshell-config)
