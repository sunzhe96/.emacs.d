(use-package go-mode
  :init (add-hook 'go-mode-hook 'subword-mode)
  :ensure t
  :mode (("\\.go\\'" . go-mode)))


(provide 'init-golang)
