;; ---------------------------------------------------
;; Sample emacs config focusing on clojure development
;; ---------------------------------------------------

;; installed packages
;; - exec-path-from-shell (not from stable!)
;; - hl-sexp
;; - paredit
;; - clojure-mode
;; - cider
;; - company
;; - clj-refactor (not from stable!)

;; Add .emacs.d to load-path
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path dotfiles-dir)

;; don't use tabs for indent
(setq-default indent-tabs-mode nil)

;; MELPA stable
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(setq package-user-dir (concat user-emacs-directory "elpa"))
(package-initialize)

;; show opening, closing parens
(show-paren-mode)

;; Sort out the $PATH for OSX
(require 'exec-path-from-shell)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(dolist (file '("cfg-paredit.el"
		"cfg-hlsexp.el"
		"cfg-cider.el"
                "cfg-cljrefactor.el"))
  (load (concat dotfiles-dir file)))
