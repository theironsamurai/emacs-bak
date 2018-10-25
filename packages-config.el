;;; packages-config.el
;;
;; More advanced configuration of packages
;; using "use-package", etc.
;;

;;; Code:


;;; Vim-mode: Evil
;;
;; Because modal-style editing is sub-ob-jectively better.
;;

(use-package evil
  :ensure t
  :config
  (evil-mode 1))

;;; Doom Themes
;;
;; Because when your evil, what do you expect?
;;
;; When this is loaded, all you need to do to switch themes
;; is do: `M-x customize-themes`.
;; WARNING: you need to UNCHECK the theme you have on
;; BEFORE you load the theme you want. Emacs is weird about themes.
;;

(use-package doom-themes
  :ensure t)

;;; More themes

(use-package zenburn-theme
	:ensure t)

(use-package gruvbox-theme
	:ensure t)

(use-package base16-theme
	:ensure t)

(use-package badwolf-theme
	:ensure t)

(use-package sunburn-theme
	:ensure t)



;; Switch Themes function
;; from Daniel Mai:
;; https://www.reddit.com/r/emacs/comments/30b67j/how_can_you_reset_emacs_to_the_default_theme/

(defun switch-theme (theme)
  ;; This interactive call is taken from `load-theme'
  (interactive
   (list
    (intern (completing-read "Load custom theme: "
                             (mapcar 'symbol-name
                                     (custom-available-themes))))))
  (mapcar #'disable-theme custom-enabled-themes)
  (load-theme theme t))

(switch-theme 'doom-nord)

;; Global settings (defaults)
(setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
      doom-themes-enable-italic t) ; if nil, italics is universally disabled

;; Enable flashing mode-line on errors
(doom-themes-visual-bell-config)

;; Enable custom neotree theme (all-the-icons must be installed!)
;(doom-themes-neotree-config)
;; or for treemacs users
;(doom-themes-treemacs-config)

;; Corrects (and improves) org-mode's native fontification.
(doom-themes-org-config)


;;; Helm
;;
;; Find things
;;
;; See example config: https://github.com/senny/emacs.d/blob/master/init.el
;;

(use-package helm
  :init
  (custom-set-variables '(helm-command-prefix-key "C-t"))
  (setq helm-mode-fuzzy-match t)
  (setq helm-completion-in-region-fuzzy-match t)
  (setq helm-candidate-number-list 50)
  :bind (("M-x" . helm-M-x)
         ("C-x C-f" . helm-find-files)
         ("C-x f" . helm-recentf)
         ("M-y" . helm-show-kill-ring)
         ("C-x b" . helm-buffers-list))
  :bind (:map helm-map
	      ("M-j" . helm-previous-line)
	      ("M-k" . helm-next-line)
	      ("M-J" . helm-previous-page)
	      ("M-K" . helm-next-page)
	      ("M-h" . helm-beginning-of-buffer)
	      ("M-H" . helm-end-of-buffer))
  :config (progn
	    (setq helm-buffers-fuzzy-matching t)
            (helm-mode 1))
	)

;;; Helm Swoop
;;

(use-package helm-swoop
  :bind (("M-m" . helm-swoop)
	 ("M-M" . helm-swoop-back-to-last-point))
  :init
  (bind-key "M-m" 'helm-swoop-from-isearch isearch-mode-map))


;;; ag
;;
;; The Silver Searcher
;;

(use-package ag
  :ensure t
  :commands (ag ag-regexp ag-project))

;;; Helm Ag
;;

(use-package helm-ag
  :ensure helm-ag
  :bind ("M-p" . helm-projectile-ag)
  :commands (helm-ag helm-projectile-ag)
  :init (setq helm-ag-insert-at-point 'symbol
	      helm-ag-command-option "--path-to-ignore ~/.agignore"))


;;; Drag stuff!
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

;;; NeoTree & some Icons
;;

;; All The Icons
(use-package all-the-icons :ensure t)

;; NeoTree
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



;;; packages-config.el ends here
