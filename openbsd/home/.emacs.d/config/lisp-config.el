;; lisp
(defun eval-and-replace ()
  "Replace the preceding sexp with its value."
  (interactive)
  (backward-kill-sexp)
  (condition-case nil
      (prin1 (eval (read (current-kill 0)))
             (current-buffer))
    (error (message "Invalid expression")
           (insert (current-kill 0)))))
(global-set-key (kbd "C-c e") #'eval-and-replace)
;; => aliases
(defalias 'eb  #'eval-buffer)
(defalias 'er  #'eval-region)
(defalias 'ee  #'eval-expression)
(defalias 'elm #'emacs-lisp-mode)
(defalias 'lim #'lisp-interaction-mode)
(defalias 'eis #'elisp-index-search)
;; => slime
(require 'slime-autoloads)
(setq slime-lisp-implementations
      '((sbcl ("/usr/local/bin/sbcl"))
        (clisp ("/usr/local/bin/clisp"))))
(setq slime-contribs '(slime-fancy))
;; ==> slime autocomplete
(require 'slime-company)
(slime-setup '(slime-company))

(provide 'lisp-config)
