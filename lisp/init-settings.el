;; appearance
(set-frame-font "Hack 14" nil t) 	; font
(global-display-line-numbers-mode 1)	; line numbers
(global-visual-line-mode 1)		; wrap line
(menu-bar-mode 0)			; hide menu bar
(tool-bar-mode 0)			; hide tool bar
(scroll-bar-mode 0)			; hide scroll bar
(show-paren-mode 1)			; parenthesis matching

;; auto-safe dir
(setq backup-directory-alist
       `(("." . ,(concat user-emacs-directory "backups"))))

;; Empty response (hitting RET) return "yes" to 'yes-or-no-p'
(defun my-yes-or-mumble-p (prompt)
  "PROMPT user with a yes-or-no question, but only test for yes."
  (if (string= "yes"
               (downcase
                (read-from-minibuffer
                 (concat prompt "(yes or no) "))))
      t
    "yes"))
(defalias 'yes-or-no-p 'my-yes-or-mumble-p)

;; melpa
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; (package-initialize)

(provide 'init-settings)
