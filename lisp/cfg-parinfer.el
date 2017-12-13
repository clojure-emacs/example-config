(require-package 'parinfer)

;; Parinfer
(require 'parinfer)
(add-hook 'lisp-mode-hook #'parinfer-mode)
(add-hook 'emacs-lisp-mode-hook #'parinfer-mode)
(add-hook 'clojure-mode-hook #'parinfer-mode)
(add-hook 'cider-repl-mode-hook #'parinfer-mode)

