
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;; KEYBINDINGS ;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; General (literally & figuratively) keybindings
;;
;; Prefix is SPC, except in Insert-mode where it's M-SPC
;;

;; GENERAL
(use-package general
  :ensure t
  :config (general-define-key
    :states '(normal visual insert emacs)
    :prefix "SPC"
    :non-normal-prefix "M-SPC"
    "TAB" '(switch-to-prev-buffer :which-key "previous buffer")
    "SPC" '(helm-M-x :which-key "M-x")
    "ff"  '(helm-find-files :which-key "find files")
    "ss"  '(helm-swoop :which-key "helm swoop")
    ;; Buffers
    "bb"  '(helm-buffers-list :which-key "buffers list")
    ;; Window
    "wl"  '(windmove-right :which-key "move right")
    "wh"  '(windmove-left :which-key "move left")
    "wk"  '(windmove-up :which-key "move up")
    "wj"  '(windmove-down :which-key "move bottom")
    "w/"  '(split-window-right :which-key "split right")
    "w-"  '(split-window-below :which-key "split bottom")
    "wx"  '(delete-window :which-key "delete window")
		"wd"  '(delete-other-windows :which-key "delete other windows")
		"ww"  '(evil-window-next :which-key "next window")
    ;; Others
    "ta"  '(ansi-term :which-key "open ansi terminal")
    ;; Org-mode
    "olt" '(org-toggle-link-display :which-key "org-toggle-link-display")
		"oli" '(org-insert-link :which-key "org-insert-link")
		"ols" '(org-store-link :which-key "org-store-link")
		;; Themes
		"Th"  '(helm-themes :which-key "helm theme")
		;; evaluate
		"eb"  '(eval-buffer :which-key "eval buffer")
		"es"  '(eval-last-sexp :which-key "eval last sexp")
		"ef"  '(eval-defun :which-key "eval defun")
		"er"  '(eval-region :which-key "eval region")
		"ex"  '(eval-expression :which-key "eval expression")
      ))

