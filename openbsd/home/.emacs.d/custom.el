(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(browse-url-browser-function (quote eww-browse-url))
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (xresources)))
 '(custom-safe-themes
   (quote
    ("b9e9ba5aeedcc5ba8be99f1cc9301f6679912910ff92fdf7980929c2fc83ab4d" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "de0b7245463d92cba3362ec9fe0142f54d2bf929f971a8cdf33c0bf995250bcf" "721bb3cb432bb6be7c58be27d583814e9c56806c06b4077797074b009f322509" "158013ec40a6e2844dbda340dbabda6e179a53e0aea04a4d383d69c329fba6e6" "e30f381d0e460e5b643118bcd10995e1ba3161a3d45411ef8dfe34879c9ae333" "cf284fac2a56d242ace50b6d2c438fcc6b4090137f1631e32bedf19495124600" "256a381a0471ad344e1ed33470e4c28b35fb4489a67eb821181e35f080083c36" "a94f1a015878c5f00afab321e4fef124b2fc3b823c8ddd89d360d710fc2bddfc" "251348dcb797a6ea63bbfe3be4951728e085ac08eee83def071e4d2e3211acc3" "d21135150e22e58f8c656ec04530872831baebf5a1c3688030d119c114233c24" "3eb93cd9a0da0f3e86b5d932ac0e3b5f0f50de7a0b805d4eb1f67782e9eb67a4" "b59d7adea7873d58160d368d42828e7ac670340f11f36f67fa8071dbf957236a" "065efdd71e6d1502877fd5621b984cded01717930639ded0e569e1724d058af8" default)))
 '(desktop-save-mode t)
 '(indent-tabs-mode nil)
 '(menu-bar-mode nil)
 '(minimap-hide-fringes t)
 '(minimap-highlight-line nil)
 '(minimap-recenter-type (quote middle))
 '(package-selected-packages
   (quote
    (shrink-path w3m smart-mode-line-powerline-theme smart-mode-line flycheck-haskell ac-slime eshell-bookmark eshell-prompt-extras comment-dwim-2 ac-geiser punpun-theme pretty-mode nlinum-relative flymake-shell flylisp flycheck-clojure flycheck flycheck-checkbashisms j-mode helm-core parinfer org-download company clojure-mode-extra-font-locking clj-refactor centered-cursor-mode ampc alchemist aggressive-indent emms-player-mpv pdf-tools ace-window xkcd pelican-mode org-bullets nov mingus md4rd typo twittering-mode sx sicp 4clojure hackernews paredit eshell-up esh-autosuggest company-shell company-go xresources-theme xah-math-input ereader ac-cider slime-company spiral window-jump rc-mode undo-tree smart-comment slime markdown-preview-mode magithub magit cider chicken-scheme align-cljlet scheme-complete sudo-edit nlinum minimap xclip)))
 '(prettify-symbols-unprettify-at-point t)
 '(prog-mode-hook (quote (nlinum-mode)))
 '(scheme-program-name "csi")
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(sml/mode-width
   (if
       (eq
        (powerline-current-separator)
        (quote arrow))
       (quote right)
     (quote full)))
 '(sml/pos-id-separator
   (quote
    (""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (car powerline-default-separator-dir)))
                   (quote powerline-active1)
                   (quote powerline-active2))))
     (:propertize " " face powerline-active2))))
 '(sml/pos-minor-modes-separator
   (quote
    (""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (cdr powerline-default-separator-dir)))
                   (quote powerline-active1)
                   (quote sml/global))))
     (:propertize " " face sml/global))))
 '(sml/pre-id-separator
   (quote
    (""
     (:propertize " " face sml/global)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (car powerline-default-separator-dir)))
                   (quote sml/global)
                   (quote powerline-active1))))
     (:propertize " " face powerline-active1))))
 '(sml/pre-minor-modes-separator
   (quote
    (""
     (:propertize " " face powerline-active2)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (cdr powerline-default-separator-dir)))
                   (quote powerline-active2)
                   (quote powerline-active1))))
     (:propertize " " face powerline-active1))))
 '(sml/pre-modes-separator (propertize " " (quote face) (quote sml/modes)))
 '(tab-always-indent (quote complete))
 '(tool-bar-mode nil)
 '(tooltip-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Fira Code" :foundry "CTDB" :slant normal :weight normal :height 68 :width normal))))
 '(minimap-active-region-background ((t (:background "dark slate gray"))))
 '(mode-line ((t (:background "#151515" :foreground "#806083" :box (:line-width 1 :color "#222222")))))
 '(mode-line-highlight ((t (:box (:line-width 1 :color "#2f2f2f")))))
 '(mode-line-inactive ((t (:background "#151515" :foreground "#806083" :box (:line-width 1 :color "#222222"))))))
