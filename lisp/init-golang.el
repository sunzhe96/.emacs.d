(use-package go-mode
  :ensure t
  :config (add-hook 'go-mode-hook 'subword-mode)
  :mode ("\\.go\\'" . go-mode))


(provide 'init-golang)
