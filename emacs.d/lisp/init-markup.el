(require 'beancount)
(require-package 'markdown-mode)

(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.beancount\\'" . beancount-mode))

(provide 'init-markup)
