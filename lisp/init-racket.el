(use-package racket-mode
  :ensure t)

(add-hook 'racket-mode-hook
	  (lambda ()
	    (define-key racket-mode-map (kbd "C-x C-j") 'racket-run)))

(provide 'init-racket)
