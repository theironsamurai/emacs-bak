;;; EVIL

;; NOTE: I have to put the "(setq evil-toggle-key "")"
;; BEFORE emacs loads evil, or else it doesn't work.
;; That's what the :init section of the use-package is for.

(use-package evil
	:init
	(setq evil-toggle-key "")
  :ensure t
	:config
	(evil-mode 1))

;; remove all keybindings from insert-state keymap, use emacs-state when editing
(setcdr evil-insert-state-map nil)

;; ESC to switch back normal-state
(define-key evil-insert-state-map [escape] 'evil-force-normal-state)

;;; Evil Keybindings

(global-set-key (kbd "C-;") 'evil-force-normal-state)
(global-set-key (kbd "C-u") 'evil-scroll-up)
(evil-define-key 'normal org-mode-map "<tab>" 'org-cycle)

;;;;;;;;;;;;
