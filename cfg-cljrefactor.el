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
