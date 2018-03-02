;; backup
;; => directory
(setq backup-directory-alist `(("." . "~/.emacs.d/backup")))
;; => settings (version control, auto-saving)
(setq backup-by-copying-when-linked t
      version-control t
      delete-old-versions t
      kept-old-versions 4
      kept-new-versions 4
      auto-save-default t
      auto-save-interval 200)
;; => backup file names
(defun my-backup-file-name (filename)
  (expand-file-name
   (concat "." (file-name-nondirectory filename) "~")
   (file-name-directory filename)))
(setq make-backup-file-name-function 'my-backup-file-name)
;; => autosave to temp directory
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(provide 'backup-config)
