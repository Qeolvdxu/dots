;; melpa repo for packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))
(require 'use-package)
(setq use-package-always-ensure t)

;; remove bars and welcome screen
(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)
;;(setq inhibit-startup-screen t)

;; Display valid key combos in realtime
(use-package which-key)
(which-key-mode)

;; Hide ^M DOS line endings
(defun remove-dos-eol ()
  (interactive)
  (setq buffer-display-table (make-display-table))
  (aset buffer-display-table ?\^M []))

;; Colemak-dh vim bindings for evil
(use-package evil-colemak-basics)
(use-package evil-colemak-basics
:config
(global-evil-colemak-basics-mode))

;; Bind undo to Control Z
(global-unset-key "\C-z")
(global-set-key "\C-z" 'advertised-undo)

;; adds number lines
(global-display-line-numbers-mode)

;; autocomplete ui
(use-package company)
(add-hook 'after-init-hook 'global-company-mode)

;; nyan cat line bar
(use-package nyan-mode)
(define-globalized-minor-mode my-global-nyan-mode nyan-mode
  (lambda () (nyan-mode 1)))
(my-global-nyan-mode 1)

;; vim bindings for text editing
(use-package evil)
(evil-mode 1)

;; tree gui (toggle with f8)
(use-package treemacs)
(global-set-key [f8] 'treemacs)

;; C and C++ language server
(use-package ccls)
(use-package ccls
  :ensure t
  :config
  (setq ccls-executable "ccls")
  (setq lsp-prefer-flymake nil)
  (setq-default flycheck-disabled-checkers '(c/c++-clang c/c++-cppcheck c/c++-gcc))
  :hook ((c-mode c++-mode objc-mode) .
         (lambda () (require 'ccls) (lsp))))

;; Java language server
(use-package lsp-java)
(add-hook 'java-mode-hook #'lsp)

;; GDScript language server
(use-package gdscript-mode)

;; use dracula color scheme
(use-package dracula-theme)
(load-theme 'dracula t)
