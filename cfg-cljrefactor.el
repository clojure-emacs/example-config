;; clj-refactor and dependencies

;; available on MELPA stable
(require-package 'multiple-cursors)
(require-package 'dash)

;; manual dependencies
(add-to-list 'load-path (concat user-emacs-directory "site-lisp/" "s-20140910.334"))
(add-to-list 'load-path (concat user-emacs-directory "site-lisp/" "yasnippet-20141223.303"))
(add-to-list 'load-path (concat user-emacs-directory "site-lisp/" "clj-refactor-20150104.1358"))

(require 'clj-refactor)
(add-hook 'clojure-mode-hook
	  (lambda ()
	    (clj-refactor-mode 1)
	    ;; insert keybinding setup here
	    (cljr-add-keybindings-with-prefix "C-c RET")))

(add-hook 'clojure-mode-hook (lambda () (yas/minor-mode 1)))

;; no auto sort
(setq cljr-auto-sort-ns nil)

;; warm artifact cache at REPL start up
(add-hook 'nrepl-connected-hook #'cljr-update-artifact-cache)

;; warm the AST cache at REPL start up
(add-hook 'nrepl-connected-hook #'cljr-warm-ast-cache)
