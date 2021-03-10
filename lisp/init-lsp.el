;; calls flymake-show-diagnostics-buffer when there is only one frame
;; kill the buffer if the buffer has been opened in a frame
(defun open-flymake-show-diagnostics-buffer()
  (interactive)
  (if (= (count-windows) 1)
      (progn
	(split-window-below)
	(balance-windows)
	(flymake-show-diagnostics-buffer))
    (progn
      (if (eq (string= (with-current-buffer (buffer-name) major-mode)
		       "flymake-diagnostics-buffer-mode")
	      nil)
	  (other-window 1))
      (kill-buffer)
      (delete-other-windows))))

(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :init
  (setq lsp-keymap-prefix "C-c l")
  :config
  (define-key lsp-mode-map (kbd "C-c l") lsp-command-map)
  (bind-key "<f6>" 'open-flymake-show-diagnostics-buffer)
  :hook
  ((go-mode . lsp-deferred)
   (lsp-mode . lsp-enable-which-key-integration)))

(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))
(add-hook 'go-mode-hook #'lsp-go-install-save-hooks)

(use-package company
  :ensure t
  :config
  (setq company-idle-delay 0.2)
  (setq company-minimum-prefix-length 1))

(use-package company-lsp
  :ensure t
  :commands company-lsp)

(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(provide 'init-lsp)

