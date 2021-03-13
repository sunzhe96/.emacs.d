;; calls flymake-show-diagnostics-buffer when there is only one frame
;; kill the buffer if the buffer has been opened in a frame
(defun toggle-flymake-show-diagnostics-buffer()
  (interactive)
  (let ((mode "flymake-diagnostics-buffer-mode"))
  (if (= (count-windows) 1)
      (progn
	(flymake-show-diagnostics-buffer)
	(delete-other-windows)
	(split-window-below)
	(balance-windows)
	(other-window 1)
	(switch-to-buffer (find-flymake-buffer (buffer-list))))
    (progn
      (if (eq (string= (with-current-buffer (buffer-name) major-mode) mode)
	      nil)
	  (other-window 1))
      (kill-buffer)
      (delete-other-windows)))))

;; find-flymake-buffer returns the name of opened buffer which majoe
;; mode is flymake-diagnostics-buffer-mode 
(defun find-flymake-buffer(list)
  (let ((mode "flymake-diagnostics-buffer-mode"))
  (if (null list)
      nil
    (if (string= mode
		 (with-current-buffer (buffer-name (car list))
		   major-mode))
	(car list)
      (find-flymake-buffer (cdr list))))))

;; in returns t when s match one of the element in the list
;; otherwise in returns nil
(defun in(s list)
  (if (null list)
      nil
    (if (string= s (car list))
	t
      (in s (cdr list)))))

;; open-lsp-treemacs-symbols will call lsp-treemacs-symbols
;; if "*LSP Symbols List*" is not opened
;; otherwise open-lsp-treemacs-symbols will kill the buffer
(defun toggle-lsp-treemacs-symbols()
  (interactive)
  (let ((target "*LSP Symbols List*"))
    (if (in  target (mapcar 'buffer-name (buffer-list)))
	(kill-buffer target)
     (lsp-treemacs-symbols))))
  
(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :init
  (setq lsp-keymap-prefix "C-c l")
  :config
  (define-key lsp-mode-map (kbd "C-c l") lsp-command-map)
  :hook
  ((go-mode . lsp-deferred)
   (lsp-mode . lsp-enable-which-key-integration))
  :bind 
  ("<f6>" . 'toggle-flymake-show-diagnostics-buffer)
  ("<f7>" . 'toggle-lsp-treemacs-symbols))

(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))
(add-hook 'go-mode-hook #'lsp-go-install-save-hooks)

(use-package lsp-treemacs
  :ensure t
  :commands lsp-treemacs-errors-list)

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

