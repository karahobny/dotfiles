;; undo-tree
(require 'undo-tree)
(global-undo-tree-mode)

;; => keybindings
(global-set-key (kbd "C-z") 'undo-tree-undo)
(global-set-key (kbd "C-r") 'undo-tree-redo)

(provide 'undo-tree-config)
