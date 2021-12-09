;; remove bars and welcome screen
(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)
;;(setq inhibit-startup-screen t)

;; Display valid key combos in realtime
(add-to-list 'load-path "path/to/which-key.el")
(require 'which-key)
(which-key-mode)

;; Bind undo to Control Z
(global-unset-key "\C-z")
(global-set-key "\C-z" 'advertised-undo)

;; adds number lines
(global-display-line-numbers-mode)

;; autocomplete ui
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

;; nyan cat line bar
(require 'nyan-mode)
(define-globalized-minor-mode my-global-nyan-mode nyan-mode
  (lambda () (nyan-mode 1)))
(my-global-nyan-mode 1)

;; vim bindings for text editing
(require 'evil)
(evil-mode 1)

;; melpa repo for packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; tree gui (toggle with f8)
(require 'treemacs)
(global-set-key [f8] 'treemacs)

;; C and C++ language server
(require 'ccls)
(use-package ccls
  :ensure t
  :config
  (setq ccls-executable "ccls")
  (setq lsp-prefer-flymake nil)
  (setq-default flycheck-disabled-checkers '(c/c++-clang c/c++-cppcheck c/c++-gcc))
  :hook ((c-mode c++-mode objc-mode) .
         (lambda () (require 'ccls) (lsp))))

;; Java language server
(require 'lsp-java)
(add-hook 'java-mode-hook #'lsp)

;; GDScript language server
(require 'gdscript-mode)
(use-package gdscript-mode)
