(setq org-log-done t)

(setq org-export-with-sub-superscripts '{})
(setq org-export-with-smart-quotes t)
(setq org-export-with-toc nil)

(setq org-html-preamble nil)
(setq org-html-postamble nil)
(setq org-html-doctype "html5")
(setq org-html-html5-fancy t)
(setq org-html-mathjax-options
      '((path "https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.1/MathJax.js")
        (scale "100")
        (align "left")
        (indent "2em")
        (mathml nil)))

(provide 'init-org)
