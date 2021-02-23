;; Forcing UTF-8 encoding
(set-language-environment "UTF-8")

;; disable GUN Emacs buffer
(setq inhibit-startup-screen t)

;; env variables
(setenv "PATH" (concat (getenv "PATH") ":/home/sz96/go/bin"))
(setq exec-path (append exec-path '("/home/sz96/go/bin")))

;; Appearance ;;
(setq default-frame-alist
      '(
	(font . "Hack-14")
	(height . 45)
        (width . 80)
        (left . 550)
        (top . 300)
	(background-color . "honeydew")
	;;(fullscreen . fullboth)
        (vertical-scroll-bars . nil)
        (horizontal-scroll-bars . nil)
        (tool-bar-lines . 0)
	(menu-bar-lines . 0)))

(global-display-line-numbers-mode 1)	; line numbers
(global-visual-line-mode 1)		; wrap line

;; parenthesis ;;
(electric-pair-mode t)
(show-paren-mode 1)			; parenthesis matching

;; auto-safe dir ;;
(setq backup-directory-alist
      `(("." . ,(concat user-emacs-directory "backups"))))

;; Empty response (hitting RET) return "yes" to 'yes-or-no-p' ;;
(defalias 'yes-or-no-p 'y-or-n-p)

;; mode line ;;
(use-package mood-line
  :ensure t
  :config
  (mood-line-mode))

;;;; key bindings ;;
(use-package xah-fly-keys
  :config
  (xah-fly-keys-set-layout "qwerty")
  (xah-fly-keys 1)
  (define-key xah-fly-key-map (kbd "a") 'counsel-M-x)
  (define-key key-translation-map (kbd "ESC") (kbd "<home>")))

(global-set-key (kbd "M-s s") 'my-lookup-cam) ;; lookup dictionary
(global-set-key (kbd "M-s g") 'xah-lookup-google) ;; lookup google

(provide 'init-settings)

