(load "~/.emacs.d/sanemacs.el" nil t)
(load "~/.emacs.d/doom-theme-config.el" nil t)

(xterm-mouse-mode)

(add-hook 'clojurescript-mode-hook #'paredit-mode)
(add-hook 'clojure-mode-hook #'paredit-mode)
(add-hook 'fsharp-mode-hook #'lsp-mode)
(add-hook 'tuareg-mode-hook #'lsp-mode)

(require 'lsp-mode)
(global-set-key (kbd "M-/") 'complete-symbol)
(global-set-key (kbd "M-1") 'treemacs)
(global-set-key (kbd "C-l") 'lsp-format-buffer)

(require 'expand-region)
(load "~/.emacs.d/local.init.el" nil t)
(global-set-key (kbd "M-<up>") 'er/expand-region)
(global-set-key (kbd "M-<down>") 'er/contract-region)

(defun duplicate-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank)
)
(global-set-key (kbd "C-d") 'duplicate-line)

;; ## added by OPAM user-setup for emacs / base ## 56ab50dc8996d2bb95e7856a6eddb17b ## you can edit, but keep this line
;; (require 'opam-user-setup "~/.emacs.d/opam-user-setup.el")
;; ## end of OPAM user-setup addition for emacs / base ## keep this line
