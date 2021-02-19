(use-package auto-complete
  :ensure t
  :commands auto-complete-mode
  :init
  (progn
    (auto-complete-mode t))

  :config
  (progn 
    (use-package auto-complete-config)

    (ac-set-trigger-key "TAB")
    (ac-config-default)

    (setq ac-modes '(org-mode
		     org-roam-mode))))

(provide 'init-auto-complete)
