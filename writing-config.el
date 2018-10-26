;;; writing-config.el
;;
;; basic packages to aid the written word
;; (Doesn't include Org-Mode... that beast
;; is complicated, and so, in its own file.)

;;; Code:

;; markdown-mode

(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . gfm-mode)
         ("\\.markdown\\'" . gfm-mode))
  :init (setq markdown-command "multimarkdown"))

(add-hook markdown-mode-hook 'markdown-toggle-wiki-links)


;; Deft - the ultimate Note-taker!

(use-package deft
  :config
	(setq deft-extensions '("org" "md" "markdown" "adoc" "asciidoc" "txt" "tex"))
  (setq deft-text-mode 'org-mode)
  (setq deft-use-filename-as-title t)
  (setq deft-file-naming-rules '((noslash . "-")
                                 (nospace . "-")))
  (setq deft-directory "~/Dropbox/orgwiki")
  :bind
	("<f5>" . deft))

;; If at somepoint I feel inspired, I can steal more DEFT goodness from here:
;; https://github.com/kaushalmodi/.emacs.d/blob/master/setup-files/setup-deft.el

;;; Asciidoc via Adoc-Mode

(use-package adoc-mode)

(add-to-list 'auto-mode-alist (cons "\\.txt\\'" 'adoc-mode))
(add-to-list 'auto-mode-alist (cons "\\.adoc\\'" 'adoc-mode))
(add-to-list 'auto-mode-alist (cons "\\.asciidoc\\'" 'adoc-mode))

;(add-hook 'adoc-mode-hook (lambda() (buffer-face-mode t)))


;; Olitvetti - writing in style

(use-package olivetti
  :config
  (setq olivetti-body-width 90))

(add-hook 'text-mode-hook 'turn-on-olivetti-mode)

;;; writing-config.el ends here
