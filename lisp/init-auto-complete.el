(use-package auto-complete
  :commands auto-complete-mode
  :init
  (progn
    (auto-complete-mode t))

  :config
  (progn 
    (use-package auto-complete-config)

    (ac-set-trigger-key "TAB")
    (ac-config-default)

    ;; (setq ac-delay 0.02)
    ;; (setq ac-use-menu-map t)
    ;; (setq ac-menu-height 50)
    ;; (setq ac-use-quick-help nil) 
    ;; (setq ac-comphist-file  "~/.emacs.d/ac-comphist.dat")
    ;; (setq ac-ignore-case nil)
    ;; (setq ac-dwim  t)
    ;; (setq ac-fuzzy-enable t)

    ;; (use-package ac-dabbrev
    ;;   :config
    ;;   (progn
    ;;     (add-to-list 'ac-sources 'ac-source-dabbrev)))

    (setq ac-modes '(js3-mode
                     emacs-lisp-mode
                     lisp-mode
                     lisp-interaction-mode
                     c-mode
                     c++-mode
                     go-mode
                     python-mode
                     js-mode
                     js2-mode
                     css-mode
                     makefile-mode
                     sh-mode
                     xml-mode
		     web-mode
		     org-mode
		     org-roam-mode
		     html-mode))))

(provide 'init-auto-complete)
