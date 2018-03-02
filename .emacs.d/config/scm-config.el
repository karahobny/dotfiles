;; scheme
(autoload 'scheme-smart-complete "scheme-complete" nil t)
(with-eval-after-load 'scheme
  '(define-key scheme-mode-map "\e\t" 'scheme-smart-complete))
;; => chicken
(require 'chicken-scheme)
(add-hook 'scheme-mode-hook 'setup-chicken-scheme)
(define-key scheme-mode-map (kbd "C-?") 'chicken-show-help)

(provide 'scm-config)
