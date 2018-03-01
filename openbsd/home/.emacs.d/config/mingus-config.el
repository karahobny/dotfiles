;; mingus
(require 'mingus)
(require 'mingus-stays-home)

(defadvice mingus (after organize ())
  "Refresh and goto current song after
entering mingus."
  (mingus-refresh)
  (mingus-goto-current-song))
(ad-activate 'mingus)

(add-hook 'mingus-playlist-hooks
          (lambda ()
            (setq truncate-lines t)
            (local-set-key (kbd "C-c t") #'toggle-truncate-lines)))

;; => keybindings
(global-set-key (kbd "C-c m") #'mingus)

(provide 'mingus-config)
