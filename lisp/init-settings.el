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
	(fullscreen . fullboth)
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
(defun my-yes-or-mumble-p (prompt)
  "PROMPT user with a yes-or-no question, but only test for yes."
  (if (string= "yes"
               (downcase
                (read-from-minibuffer
                 (concat prompt "(yes or no) "))))
      t
    "yes"))
(defalias 'yes-or-no-p 'my-yes-or-mumble-p)

;; mode line ;;
(use-package mood-line
  :config
  (mood-line-mode))

;; key bindings ;;
;; (use-package xah-fly-keys
;;   :config
;;   (xah-fly-keys-set-layout "qwerty")
;;   (xah-fly-keys 1))

(global-set-key (kbd "M-s s") 'my-lookup-cam) ;; lookup dictionary
(global-set-key (kbd "M-s g") 'xah-lookup-google)

(provide 'init-settings)

