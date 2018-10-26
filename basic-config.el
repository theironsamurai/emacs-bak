;;; basic-config.el
;;


;;; Code:

;;; Simple Stuff
;;

(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(global-visual-line-mode t)
(fset 'yes-or-no-p #'y-or-n-p)
(delete-selection-mode t)
(transient-mark-mode t)
;(setq x-select-enable-clipboard t)
;(setq x-select-enable-primary t)
(set-default 'tab-width 2)



;; Disable backup files
(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files

;;; Fonts
;;

(set-face-attribute 'default nil
                    :family "Source Code Pro")
(set-face-attribute 'variable-pitch nil
                    :family "Fira Sans")

;;; Screen size
;;

(add-to-list 'initial-frame-alist '(fullscreen . maximized))

;;; UTF-8
;;

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)




;;; basic-config.el ends here
