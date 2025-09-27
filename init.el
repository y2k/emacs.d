(load "~/.emacs.d/sanemacs.el" nil t)

(load-theme 'tango-dark t)

;; Установить недостающие из package-selected-packages при первом запуске
(require 'seq)
(unless (seq-every-p #'package-installed-p package-selected-packages)
  (package-refresh-contents)
  (package-install-selected-packages))

;;
(add-hook 'clojure-mode-hook #'paredit-mode)
(add-hook 'tuareg-mode-hook #'lsp-mode)

(require 'lsp-mode)
(global-set-key (kbd "M-/") 'complete-symbol)
(global-set-key (kbd "M-1") 'treemacs)
(global-set-key (kbd "C-l") 'lsp-format-buffer)

