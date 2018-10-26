;;; packages-config.el
;;
;; More advanced configuration of packages
;; using "use-package", etc.
;;

;;; Code:

;; Drag stuff!
;;

(use-package drag-stuff
  :ensure t
  :config
  (progn
      (drag-stuff-global-mode 1)
      (drag-stuff-define-keys)
      )
  :bind (("M-<up>" . drag-stuff-up)
	 ("M-<down>" . drag-stuff-down)
	 ("M-<left>" . shift-left)
	 ("M-<right>" . shift-right)))


;;; Projectile
;;

(use-package projectile
  :ensure t
  :init
  (setq projectile-require-project-root nil)
  :config
  (projectile-mode 1))


;; All The Icons
(use-package all-the-icons :ensure t)

;;; NeoTree
;;
(use-package neotree
  :ensure t)

;;; Which-Key
;;
;; What was that keybinding again?
;;

(use-package which-key
  :ensure t
  :init
  (setq which-key-separator " ")
  (setq which-key-prefix-prefix "+")
  :config
  (which-key-mode))

;;; Company Mode
;;
;; Auto-complete
;;

(use-package company
  :ensure t
  :init (global-company-mode)
  :config
  (progn
    (delete 'company-dabbrev company-backends)
    (setq company-tooltip-align-annotations t
	  company-tooltip-minimum-width 27
	  company-idle-delay 0.3
	  company-tooltip-limit 10
	  company-minimum-prefix-length 3
	  company-tooltip-flip-when-above t))
  :bind (:map company-active-map
              ("M-k" . company-select-next)
              ("M-j" . company-select-previous)
              ("TAB" . company-complete-selection))
  :diminish company-mode)


;;; Smart Parens
;;

(use-package smartparens
  :ensure t
  :init
  (smartparens-global-mode)
  (show-smartparens-global-mode)
  (dolist (hook '(inferior-emacs-lisp-mode-hook
                  emacs-lisp-mode-hook))
    (add-hook hook #'smartparens-strict-mode))
  :config
  (require 'smartparens-config)
  (setq sp-autoskip-closing-pair 'always)
  :bind
  (:map smartparens-mode-map
	("C-c s u" . sp-unwrap-sexp)
	("C-c s w" . sp-rewrap-sexp))
  :diminish (smartparens-mode))

;;; Rainbow!
;;

(use-package rainbow-delimiters
  :ensure t
  :defer t
  :init
  (dolist (hook '(text-mode-hook prog-mode-hook emacs-lisp-mode-hook))
    (add-hook hook #'rainbow-delimiters-mode)))


;; PACKAGE: smooth-scrolling
(use-package smooth-scrolling
  :init
  (setq smooth-scroll-margin 5
        scroll-conservatively 101
        scroll-preserve-screen-position t
        auto-window-vscroll nil)
  :config
  (setq scroll-margin 5))

;;; packages-config.el ends here
