;; visual
(global-visual-line-mode)
(show-paren-mode 1)
;; => nlinum (line numbers)
(require 'nlinum)
(setq nlinum-format "%4d ")
(global-set-key (kbd "M-n") #'nlinum-mode)
(add-hook 'prog-mode-hook   #'nlinum-mode)
;; => prettified symbols [TODO: add more]
(global-prettify-symbols-mode)
(setq prettify-symbols-alist
      '(("lambda" . 955)))
;; => highlight characters going over 80 char limit
(require 'whitespace)
(setq whitespace-line-column 80) ;; limit line length
(setq whitespace-style '(face lines-tail))
(add-hook 'prog-mode-hook 'whitespace-mode)
;; => highlight keywords lke FIXME, TODO etc.
(defun font-lock-comment-annotations ()
  "Highlight a bunch of well known comment annotations.
This functions should be added to the hooks of major modes for programming."
  (font-lock-add-keywords
   nil '(("\\<\\(FIX\\(ME\\)?\\|TODO\\|OPTIMIZE\\|HACK\\|REFACTOR\\):"
          1 font-lock-warning-face t))))
(add-hook 'prog-mode-hook #'font-lock-comment-annotations)

(provide 'visual-config)
