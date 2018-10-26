;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;; THEMES ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; Doom Themes
;;
;; Because when your evil, what do you expect?
;;
;; When this is loaded, all you need to do to switch themes
;; is do: `M-x customize-themes`.
;; WARNING: you need to UNCHECK the theme you have on
;; BEFORE you load the theme you want. Emacs is weird about themes.
;;

(defadvice load-theme (before theme-dont-propagate activate)
 (mapc #'disable-theme custom-enabled-themes))

(use-package doom-themes
	:disabled t)

;;; More themes
(use-package zenburn-theme
	:disabled t)

(use-package gruvbox-theme
	:disabled t)

(use-package base16-theme
	:disabled t)

(use-package badwolf-theme
	:disabled t)

(use-package sunburn-theme
	:disabled t)

;;(load-theme 'gruvbox)

;; Switch Themes function
;; from Daniel Mai:
;; https://www.reddit.com/r/emacs/comments/30b67j/how_can_you_reset_emacs_to_the_default_theme/

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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

