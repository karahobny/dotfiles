;; fly
(add-hook 'after-init-hook #'global-flycheck-mode)
(eval-after-load 'flycheck '(flycheck-clojure-setup))
(require 'flymake-shell)
(add-hook 'sh-set-shell-hook 'flymake-shell-load)
