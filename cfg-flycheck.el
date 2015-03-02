;; manual dependencies
(add-to-list 'load-path (concat user-emacs-directory "site-lisp/" "flycheck-20150207.329"))

(require-package 'let-alist)
(require-package 'flycheck-clojure)

(require 'flycheck)

(eval-after-load 'flycheck '(flycheck-clojure-setup))

(add-hook 'after-init-hook #'global-flycheck-mode)
