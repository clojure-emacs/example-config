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

;; emacs package management
;; use MELPA stable
(require 'package)

(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)

(setq package-user-dir (concat user-emacs-directory "elpa"))
(add-to-list 'load-path (concat user-emacs-directory "site-lisp"))

(defun require-package (package &optional min-version no-refresh)
  "Install given PACKAGE, optionally requiring MIN-VERSION.
If NO-REFRESH is non-nil, the available package lists will not be
re-downloaded in order to locate PACKAGE."
  (if (package-installed-p package min-version)
      t
    (if (or (assoc package package-archive-contents) no-refresh)
        (package-install package)
      (progn
        (package-refresh-contents)
        (require-package package min-version t)))))

(setq package-enable-at-startup nil) ; Don't initialize later as well

(package-initialize)

;; show opening, closing parens
(show-paren-mode)

(require-package 'epl)

(require-package 'exec-path-from-shell)
;; Sort out the $PATH for OSX
(require 'exec-path-from-shell)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(dolist (file '("cfg-paredit.el"
		"cfg-flycheck.el"
		"cfg-hlsexp.el"
		"cfg-cider.el"
                "cfg-cljrefactor.el"))
  (load (concat dotfiles-dir file)))
