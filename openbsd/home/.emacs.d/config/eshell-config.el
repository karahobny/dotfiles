;; eshell
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
                               "\n		~~Theo de Raadt\n")
                     (concat "Welcome to the Emacs shell " user-login-name "\n\n")))))
