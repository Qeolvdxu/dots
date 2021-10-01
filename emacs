(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

(use-package ccls
  :ensure t
  :config
  (setq ccls-executable "ccls")
  (setq lsp-prefer-flymake nil)
  (setq-default flycheck-disabled-checkers '(c/c++-clang c/c++-cppcheck c/c++-gcc))
  :hook ((c-mode c++-mode objc-mode) .
         (lambda () (require 'ccls) (lsp))))

(require 'lsp-java)
(add-hook 'java-mode-hook #'lsp)

(setq neo-theme (if (display-graphic-p) 'icons 'ascii))

(custom-set-variables '(package-selected-packages '(lsp-javacomp use-package neotree lsp-ui lsp-latex lsp-java ccls)))
(custom-set-faces)
