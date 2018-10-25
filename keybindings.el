;;; keybindings.el
;;
;;

;; Code:


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
      ))


;;; Sans-General
;;

;; windows
(global-set-key (kbd "C-9") 'windmove-left)
(global-set-key (kbd "C-0") 'windmove-right)
(global-set-key (kbd "<f3>") 'split-window-vertically)
(global-set-key (kbd "<f2>") 'split-window-horizontally)
(global-set-key (kbd "<f1>") 'delete-other-windows)
(global-set-key (kbd "<f4>") 'delete-window)


;; -- Check word spelling at point
(global-set-key (kbd "<C-tab>") 'ispell-word)

;; Undo
(global-set-key (kbd "C-z") 'undo)

;; text scale increase/decrease (C +/=)(C -)
(define-key global-map (kbd "C-=") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

;; Some bindings for special characters
(global-set-key (kbd "M-l") (lambda () (interactive) (insert "\u03bb"))) ;lambda
(global-set-key (kbd "M-f") (lambda () (interactive) (insert "\u0192"))) ;function
(global-set-key (kbd "M--") (lambda () (interactive) (insert "\u2192"))) ;arrow



;;; Evil

(global-set-key (kbd "<tab>") 'evil-force-normal-state)
(global-set-key (kbd "C-u") 'evil-scroll-up)
(evil-define-key 'normal org-mode-map "<tab>" 'org-cycle)
;;; keybindings.el ends here
