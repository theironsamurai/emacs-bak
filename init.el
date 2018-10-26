;;; init.el --- ScribEmacs configuration
;;
;; A config geared primarily towards the needs of
;; a writer who just happens to also be a geek.
;; 
;;
;; 

;;; Code:

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;; BOOTSTRAP   ;;;;;;;;;;
;;;;;;; use-package ;;;;;;;;;;
;;;;;;; org-mode    ;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'package)
(setq user-emacs-directory "~/.emacs.d/")
(setq package-user-dir (concat user-emacs-directory "packages"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(when (>= emacs-major-version 25) (setq package-archive-priorities '(("org" . 3)
								     ("melpa" . 2)
								     ("gnu" . 1))))
(setq package-load-list '(all))
(package-initialize)
(setq package-enable-at-startup nil)

;;; Now bootstrap use-package
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(setq use-package-always-ensure t)
(add-hook 'package-menu-mode-hook 'hl-line-mode)


;;; org-mode 
;;;;;;;;;;;;;
;;; Load org mode early to ensure that the orgmode ELPA version gets picked up, not the
;;; shipped version

(use-package org
  :ensure org-plus-contrib
  :pin org)

;; Custom File: don't dirty up me init!
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load "~/.emacs.d/custom.el")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;; MAIN CONFIG ;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; inspired by: https://dev.to/huytd/emacs-from-scratch-1cg6
;;
;; a Spacemacs-based config:
;;
;; I split it into multiple files to keep it
;; neat and tidy.
;;

(load "~/.emacs.d/basic-config.el")
;;; Package configs
(load "~/.emacs.d/helm-config.el")
(load "~/.emacs.d/evil-config.el")
(load "~/.emacs.d/packages-config.el")
(load "~/.emacs.d/writing-config.el")
(load "~/.emacs.d/org-mode-config.el")
;; Themes
(load "~/.emacs.d/themes.el")
;; Keybindings
(load "~/.emacs.d/general-keybindings.el")
(load "~/.emacs.d/keybindings.el")
;; Extras
(load "~/.emacs.d/trans.el")


;;; init.el ends here
 

