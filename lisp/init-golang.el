(use-package go-mode
  :ensure t
  :mode (("\\.go\\'" . go-mode))
  ;;:hook ((before-save . gofmt-before-save))
  )

(provide 'init-golang)
