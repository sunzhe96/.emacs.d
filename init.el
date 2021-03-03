;; melpa ;;
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

; fetch the list of packages available 
; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))
(dolist (package '(use-package gruber-darker-theme))
  (unless (package-installed-p package)
  (package-install package)))

;; ;; load path 
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; ;; utilities
(require 'init-settings)
(require 'init-lookup)
(require 'init-org)
(require 'init-ivy)

;; ;; programming environment
(require 'init-projectile)
(require 'init-web)
(require 'init-auto-complete)
(require 'init-racket)
(require 'init-golang)
(require 'init-python)
(require 'init-lsp)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("5f824cddac6d892099a91c3f612fcf1b09bb6c322923d779216ab2094375c5ee" default))
 '(package-selected-packages
   '(web-mode lsp-treemacs lsp-ivy lsp-ui xah-lookup xah-fly-keys which-key use-package smex racket-mode projectile org-roam mood-line molokai-theme magit gruber-darker-theme go-mode emmet-mode counsel company-lsp colorless-themes autothemer auto-complete all-the-icons-ivy-rich all-the-icons-ivy all-the-icons-dired)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; end of file
