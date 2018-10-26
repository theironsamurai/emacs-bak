;;; keybindings.el
;;
;;

;; Code:


;;; Sans-General
;;

;; windows
(global-set-key (kbd "C-9") 'windmove-left)
(global-set-key (kbd "C-0") 'windmove-right)
(global-set-key (kbd "<f3>") 'split-window-vertically)
(global-set-key (kbd "<f2>") 'split-window-horizontally)
(global-set-key (kbd "<f1>") 'delete-other-windows)
(global-set-key (kbd "<f4>") 'delete-window)


;; -- Check word spelling at point
(global-set-key (kbd "<C-tab>") 'ispell-word)

;; Make saving fast and easy
(global-set-key (kbd "C-s") 'save-buffer)

;; CUA mode
(cua-mode 1)

;; text scale increase/decrease (C +/=)(C -)
(define-key global-map (kbd "C-=") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

;; Some bindings for special characters
(global-set-key (kbd "M-l") (lambda () (interactive) (insert "\u03bb"))) ;lambda
(global-set-key (kbd "M-f") (lambda () (interactive) (insert "\u0192"))) ;function
(global-set-key (kbd "M--") (lambda () (interactive) (insert "\u2192"))) ;arrow


;; keybindings.el ends here
