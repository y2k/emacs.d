;; -*- lexical-binding: t; -*-

(load (locate-user-emacs-file "sanemacs.el") nil t)

(load-theme 'tango-dark t)

;; Установить недостающие из package-selected-packages при первом запуске
(require 'seq)
(unless (seq-every-p #'package-installed-p package-selected-packages)
  (package-refresh-contents)
  (package-install-selected-packages))

(add-hook 'clojure-mode-hook #'paredit-mode)
(add-hook 'tuareg-mode-hook #'lsp-deferred)

(with-eval-after-load 'lsp-mode
  (keymap-set lsp-mode-map "C-l" #'lsp-format-buffer))

(keymap-global-set "M-/" #'complete-symbol)
(with-eval-after-load 'treemacs
  (treemacs-project-follow-mode 1))
(keymap-global-set "M-1" #'treemacs)
