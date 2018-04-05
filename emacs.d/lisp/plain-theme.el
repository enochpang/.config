(deftheme plain)

(custom-theme-set-faces
 'plain
 `(default ((t (:foreground "black"))))
 `(font-lock-builtin-face ((t (:foreground "black"))))
 `(font-lock-comment-face ((t (:foreground "gray38"))))
 `(font-lock-constant-face ((t (:foreground "black"))))
 `(font-lock-function-name-face ((t (:foreground "black"))))
 `(font-lock-keyword-face ((t (:foreground "black"))))
 `(font-lock-type-face ((t (:foreground "black"))))
 `(font-lock-variable-name-face ((t (:foreground "black"))))

 `(markdown-code-face ((t (:inherit unspecified))))
 `(racket-keyword-argument-face ((t (:foreground "black"))))
 `(racket-selfeval-face ((t (:foreground "black"))))
 `(mode-line ((t (:box (:line-width 1))))))

(when load-file-name
  (add-to-list
   'custom-theme-load-path
   (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'plain)
