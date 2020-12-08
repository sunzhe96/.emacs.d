(defun my-lookup-cam (&optional @word)
  "lookup php doc of word under cursor"
  (interactive)
  (require 'xah-lookup)
  (xah-lookup-word-on-internet
   @word
   (get 'my-lookup-cam 'xah-lookup-url )
   (get 'my-lookup-cam 'xah-lookup-browser-function )))

(put 'my-lookup-cam 'xah-lookup-url "https://dictionary.cambridge.org/dictionary/english/word02051")
(put 'my-lookup-cam 'xah-lookup-browser-function 'browse-url)

(provide 'init-lookup)
