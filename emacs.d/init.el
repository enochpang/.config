;;;; Enoch's configuration file

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(defun require-package (package)
  (unless (package-installed-p package)
    (package-refresh-contents)
    (package-install package)))

(require-package 'benchmark-init)
(benchmark-init/activate)

(prefer-coding-system 'utf-8)
(fset 'yes-or-no-p 'y-or-n-p)

(if (eq system-type 'windows-nt)
   (add-to-list 'default-frame-alist '(font . "Consolas-11")))

(column-number-mode t)
(show-paren-mode t)
(delete-selection-mode t)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(horizontal-scroll-bar-mode -1)

(setq custom-file "~/.emacs.d/custom.el")
(setq frame-title-format '(buffer-file-name "%f" ("%b")))
(setq inhibit-splash-screen t)
(setq mouse-yank-at-point t)
(setq save-interprogram-paste-before-kill t)
(setq use-file-dialog nil)
(setq use-dialog-box nil)
(setq visual-line-fringe-indicators '(left-curly-arrow right-curly-arrow))
(setq visible-bell t)
(setq load-prefer-newer t)
(setq ring-bell-function 'ignore)
(setq gc-cons-threshold 20000000)

(setq-default truncate-lines t)
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)

(setq scroll-margin 1)
(setq scroll-conservatively 10000)
(setq scroll-preserve-screen-position t)

(setq backup-directory-alist '(("." . "~/.emacs.d/saves")))
(setq backup-by-copying t)
(setq delete-old-versions t)
(setq version-control t)

(setq-default show-trailing-whitespace t)
(setq whitespace-style '(face trailing lines newline indentation tab-mark
                              newline-mark))

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(when (memq window-system '(mac ns))
  (require-package 'exec-path-from-shell)
  (exec-path-from-shell-initialize))

(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'init-org)

(require-package 'diminish)
(with-eval-after-load "eldoc" (diminish 'eldoc-mode))
(with-eval-after-load "hideshow" (diminish 'hs-minor-mode))
(with-eval-after-load "subword" (diminish 'subword-mode))

(require-package 'doom-themes)
(setq doom-themes-enable-bold t)
(setq doom-themes-enable-italic t)
(load-theme 'doom-nord t)

(require-package 'evil)
(setq evil-want-keybinding nil)
(evil-mode t)

(require-package 'evil-collection)
(evil-collection-init)

(require-package 'which-key)
(which-key-mode)
(diminish 'which-key-mode)

(require-package 'selectrum)
(selectrum-mode)

(require-package 'selectrum-prescient)
(selectrum-prescient-mode t)
(prescient-persist-mode t)

(global-set-key (kbd "<f12>") 'toggle-truncate-lines)
(global-set-key (kbd "M-/") 'hippie-expand)
