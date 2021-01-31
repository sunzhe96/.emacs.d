(use-package racket-mode
  :ensure t
  :mode "\\.rkt\\'"
  :bind ("C-x C-j" . 'racket-run))

(provide 'init-racket)
