;;;; Enoch's configuration file

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(defun require-package (package)
  (unless (package-installed-p package)
    (package-refresh-contents)
    (package-install package)))

(prefer-coding-system 'utf-8)
(fset 'yes-or-no-p 'y-or-n-p)
(if (eq system-type 'windows-nt)
    (add-to-list 'default-frame-alist '(font . "Consolas-11"))
  (add-to-list 'default-frame-alist '(font . "Source Code Pro-11")))

(require-package 'diminish)
(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'plain-theme)
(require 'init-org)
(require 'init-markup)

(column-number-mode t)
(transient-mark-mode t)
(show-paren-mode t)
(delete-selection-mode t)
(global-auto-revert-mode t)
(blink-cursor-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(horizontal-scroll-bar-mode -1)

(setq custom-file "~/.emacs.d/custom.el")
(setq frame-title-format '(buffer-file-name "%f" ("%b")))
(setq inhibit-splash-screen t)
(setq require-final-newline t)
(setq mouse-yank-at-point t)
(setq save-interprogram-paste-before-kill t)
(setq use-file-dialog nil)
(setq use-dialog-box nil)
(setq visual-line-fringe-indicators '(left-curly-arrow right-curly-arrow))
(setq visible-bell 1)

(setq-default truncate-lines t)
(setq-default fill-column 80)
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)

(setq scroll-margin 1)
(setq scroll-conservatively 10000)
(setq scroll-preserve-screen-position t)
(setq mouse-wheel-progressive-speed nil)

(setq backup-by-copying t)
(setq backup-directory-alist '(("." . "~/.emacs.d/saves")))
(setq delete-old-versions t)
(setq version-control t)

(setq-default show-trailing-whitespace t)
(setq whitespace-style '(face trailing lines newline indentation tab-mark
                              newline-mark))

;; (electric-indent-mode t)
;; (electric-pair-mode t)
;; (setq electric-pair-open-newline-between-pairs t)

(global-set-key (kbd "<f12>") 'toggle-truncate-lines)
(global-set-key (kbd "M-/") 'hippie-expand)

(when (memq window-system '(mac ns))
  (require-package 'exec-path-from-shell)
  (exec-path-from-shell-initialize))

(require-package 'evil)
(evil-mode t)
(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)

(require-package 'company)
(global-company-mode t)
(diminish 'company-mode)

(require-package 'swiper)
(ivy-mode t)
(define-key ivy-minibuffer-map [tab] 'ivy-alt-done)
(global-set-key (kbd "C-s") 'swiper)
(diminish 'ivy-mode)

(require-package 'avy)
(global-set-key (kbd "M-g g") 'avy-goto-line)
(global-set-key (kbd "M-g w") 'avy-goto-word-1)
(global-set-key (kbd "M-g c") 'avy-goto-char)
(setq avy-background t)

(with-eval-after-load "undo-tree" (diminish 'undo-tree-mode))
(with-eval-after-load "hideshow" (diminish 'hs-minor-mode))
(with-eval-after-load "eldoc" (diminish 'eldoc-mode))
(with-eval-after-load "subword" (diminish 'subword-mode))
