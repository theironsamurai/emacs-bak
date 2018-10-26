;;; EVIL

(use-package evil
  :ensure t
  :config
  (evil-mode 1))

;; unset C-z from toggle-Evil.
(setq evil-toggle-key "") 

;;; Evil Keybindings

(global-set-key (kbd "C-;") 'evil-force-normal-state)
(global-set-key (kbd "C-u") 'evil-scroll-up)
(evil-define-key 'normal org-mode-map "<tab>" 'org-cycle)

;;;;;;;;;;;;
