(use-package ivy
  :ensure t
  :defer 0.1
  :diminish
  :bind (("C-c C-r" . ivy-resume)
         ("C-x B" . ivy-switch-buffer-other-window))
  :custom
  (ivy-count-format "(%d/%d) ")
  (ivy-use-virtual-buffers t)
  (ivy-use-selectable-prompt t)
  :config (ivy-mode))

(use-package counsel
  :ensure t
  :after ivy
  :config (counsel-mode)
  :bind (("C-x C-f" . counsel-find-file)))

;; (use-package swiper
;;   :ensure t
;;   :after ivy
;;   :bind (("C-s" . swiper)
;;          ("C-r" . swiper)))

(provide 'init-ivy)
