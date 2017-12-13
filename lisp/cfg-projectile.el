(require-package 'projectile)
(require-package 'helm)
(require-package 'helm-projectile)

(setq projectile-indexing-method 'native)

(setq projectile-switch-project-action 'helm-projectile-find-file)
(helm-projectile-on)

(projectile-global-mode)

(global-set-key (kbd "C-x C-f") 'helm-find-files)
