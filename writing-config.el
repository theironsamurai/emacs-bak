;;; writing-config.el
;;
;; basic packages to aid the written word
;;

;;; Code:
(use-package olivetti
  :config
  (setq olivetti-body-width 80))

(add-hook 'text-mode-hook 'turn-on-olivetti-mode)

;;; writing-config.el ends here
