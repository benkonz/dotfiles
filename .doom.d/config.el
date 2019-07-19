;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; enable company autocompletion
(setq company-idle-delay 0.2
      company-minimum-prefix-length 3)
;; ocaml configs
(add-to-list 'auto-mode-alist '("\\.mll\\'" . tuareg-mode))
(add-hook 'tuareg-mode-hook 'rainbow-delimiters-mode)
(map! :localleader
      :map tuareg-mode-map
      "j" #'merlin-jump
      "l" #'merlin-locate
      "p" #'merlin-pop-stack
      "f" #'ocp-indent-buffer
      )
;; add rainbow delimiters to rust-mode
(add-hook 'rust-mode-hook 'rainbow-delimiters-mode)
;; disable showing trailing whitespace
(setq-hook! 'prog-mode-hook show-trailing-whitespace nil)
;; graphviz configs
(map! :localleader
      :map graphviz-dot-mode-map
      "v" #'graphviz-dot-view
      "p" #'graphviz-dot-preview
      )
