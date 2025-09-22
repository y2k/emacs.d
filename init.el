(load "~/.emacs.d/sanemacs.el" nil t)

(load-theme 'tango-dark t)

(add-hook 'clojure-mode-hook #'paredit-mode)
(add-hook 'tuareg-mode-hook #'lsp-mode)

(require 'lsp-mode)
(global-set-key (kbd "M-/") 'complete-symbol)
(global-set-key (kbd "M-1") 'treemacs)
(global-set-key (kbd "C-l") 'lsp-format-buffer)

