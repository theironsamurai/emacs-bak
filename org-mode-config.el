;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; ORG-MODE ;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;

;; Olivetti Mode

(defun my/org-mode ()
  "My custom configuration for 'org-mode'."
  (olivetti-mode)
  (olivetti-set-width 120)
  )
(add-hook 'org-mode-hook 'me/org-mode)

