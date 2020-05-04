(require-package 'auctex)
(require-package 'company-auctex)
(require-package 'cdlatex)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq TeX-close-quote "")
(setq TeX-open-quote "")
(setq TeX-PDF-mode t)
(setq TeX-view-evince-keep-focus t)

(setq-default TeX-master nil)

(defun latex-mode-setup ()
  ;; (turn-on-cdlatex)
  (company-auctex-init))

(add-hook 'LaTeX-mode-hook 'latex-mode-setup)

(provide 'init-latex)
