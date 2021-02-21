(use-package projectile
  :ensure t
  :init
  (projectile-mode +1)
  (setq projectile-project-search-path '("~/projects/"))
  :config
  (setq projectile-auto-discover t)
  (setq projectile-enable-caching nil)
  (setq projectile-sort-order 'recentf)
  :bind-keymap
  ("C-c p" . projectile-command-map))

(provide 'init-projectile)
