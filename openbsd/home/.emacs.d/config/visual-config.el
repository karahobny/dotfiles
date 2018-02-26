;; visual
(global-visual-line-mode)
(show-paren-mode 1)

;; => nlinum (line numbers)
(require 'nlinum)
(add-hook 'prog-mode-hook 'nlinum-mode)
(setq nlinum-format "%4d || ")
;; ==> keybindings
(global-set-key (kbd "M-n") 'nlinum-mode)

;; => prettified symbols [TODO: add more]
(setq prettify-symbols-alist
      '(("lambda" . 955)))

(provide 'visual-config)
