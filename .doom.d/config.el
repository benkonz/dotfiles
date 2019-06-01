;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-
(require 'company)
(setq company-idle-delay 0.2
      company-minimum-prefix-length 3)
(add-to-list 'auto-mode-alist '("\\.mly$" . tuareg-menhir-mode))
(add-to-list 'auto-mode-alist '("\\.mll$" . tuareg-mode))
