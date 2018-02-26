;; emacs

;; commented out because package-initializing is handled in melpa-config.el
;; (package-initialize)

;; system
(add-to-list 'load-path "~/.emacs.d/config")
;; => package-management
(load-library "melpa-config")

;; user configuration
;; => custom-file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)
;; => separate configuration
;; ==> general settings, variables and functions
(load-library "browser-config")
(load-library "fira-code-ligatures")
(load-library "keybindings")
(load-library "visual-config")
(load-library "y-or-n-config")
;; ==> programming hooks
(load-library "c-config")
(load-library "lisp-config")
(load-library "scm-config")
;; ==> M-x make-life-easier
(load-library "company-config")
(load-library "eshell-config")
(load-library "fly-config")
(load-library "magit-config")
(load-library "mingus-config")
(load-library "parinfer-config")
(load-library "undo-tree-config")
