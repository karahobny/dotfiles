;; emms
(require 'emms-setup)
(emms-standard)
;; => emms players
(require 'emms-player-mpv)
(setq emms-player-list
      '(emms-player-mpg321
        emms-player-ogg123
        emms-player-mpv))

(setq emms-playlist-default-major-mode 'emms-playlist-mode)
(when (fboundp 'emms-cache)
  (emms-cache 1))
(setq emms-playlist-buffer-name "*Music*")

;; => emms default directory
(setq emms-source-file-directory-tree-function 'emms-source-file-directory-tree-find)
(setq emms-source-file-default-directory "~/music")
;; (add-hook 'emms-player-started-hook 'emms-show)

;; emms-playlist-mode keybindings
(define-key emms-playlist-mode-map (kbd "SPC") 'emms-pause)
(define-key emms-playlist-mode-map (kbd "+") 'emms-volume-raise)
(define-key emms-playlist-mode-map (kbd "-") 'emms-volume-lower)

(provide 'emms-config)
