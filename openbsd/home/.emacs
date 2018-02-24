;; melpa
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos)) (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

;; user configuration
;; => custom-file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

;; => separate configuration
(add-to-list 'load-path "~/.emacs.d/config")
(load-library           "keybindings")
(load-library           "fira-code-ligatures")
(load-library           "eshell-config")
(load-library           "c-config")
(load-library           "scm-config")
(load-library           "fly-config")

;;  modes
(require 'undo-tree)
(global-undo-tree-mode)
(global-magit-file-mode)
(global-visual-line-mode)

(show-paren-mode 1)
(slime-setup '(slime-company))

;; variables
(setq nlinum-format "%4d ┊ ")
(setq show-trailing-whitespace t)

;; => browser
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "chrome")

;; => slime
(setq inferior-lisp-program "/usr/local/bin/sbcl")
(setq slime-contribs '(slime-fancy))

;; => prettified symbols
(setq prettify-symbols-alist
      '(("lambda" . 955)))

;; => parinfer
(setq parinfer-extensions
      '(defaults pretty-parens smart-yank paredit))
(setq parinfer-auto-switch-indent-mode 0)
;; ==> parinfer hooks
(add-hook 'clojure-mode-hook     #'parinfer-mode)
(add-hook 'emacs-lisp-mode-hook  #'parinfer-mode)
(add-hook 'common-lisp-mode-hook #'parinfer-mode)
(add-hook 'lisp-mode-hook        #'parinfer-mode)
(add-hook 'scheme-mode-hook      #'parinfer-mode)
