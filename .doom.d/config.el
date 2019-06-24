;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

(setq company-idle-delay 0.2
      company-minimum-prefix-length 3)

(add-to-list 'auto-mode-alist '("\\.mll\\'" . tuareg-mode))

(add-hook 'tuareg-mode-hook 'rainbow-delimiters-mode)

(map! :localleader
      :map tuareg-mode-map
      "j" #'merlin-jump
      "l" #'merlin-locate
      "p" #'merlin-pop-stack
      "f" #'ocp-indent-buffer
      )
