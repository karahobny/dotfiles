;; emacs

;; TODO: check out use-package.el
;; commented out due to pkg-config.el handling package-initializing
;; (package-initialize)

;; system
(add-to-list 'load-path "~/.emacs.d/config")
;; => package-management
(load-library "pkg-config")
(setq initial-scratch-message "
;;                    _       _
;; ___  ___ _ __ __ _| |_ ___| |__
;;/ __|/ __| '__/ _` | __/ __| '_ \
;;\__ \ (__| | | (_| | || (__| | | |
;;|___/\___|_|  \__,_|\__\___|_| |_|
;;\n")

;; user configuration
;; => custom-file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)
;; => separate configuration
;; ==> general settings, variables and functions
(load-library "backup-config")
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
