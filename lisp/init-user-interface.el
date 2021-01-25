;; appearance
(set-frame-font "Hack 14" nil t) 	; font
(global-display-line-numbers-mode t)	; line numbers
(global-visual-line-mode t)		; wrap line
(menu-bar-mode -1)			; hide menu bar
(tool-bar-mode -1)			; hide tool bar
(scroll-bar-mode -1)			; hide scroll bar
(show-paren-mode 1)			; parenthesis matching

;; interactive 

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

(provide 'init-user-interface)
