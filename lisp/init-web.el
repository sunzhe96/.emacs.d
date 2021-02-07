(use-package web-mode
  :mode "\\.html\\'"
  :config
  (setq
   web-mode-markup-indent-offset 2
   web-mode-css-indent-offset 2
   web-mode-code-indent-offset 2
   web-mode-enable-auto-closing t
   web-mode-enable-auto-opening t
   web-mode-enable-auto-pairing t
   web-mode-enable-auto-indentation t)
  (emmet-mode)
  :bind
  ("C-c C-v" . browse-url-of-buffer))

(use-package emmet-mode
  :ensure t
  :commands emmet-mode
  :config
  (add-hook 'web-mode-hook #'emmet-mode)
  (add-hook 'html-mode-hook #'emmet-mode))

(provide 'init-web)
