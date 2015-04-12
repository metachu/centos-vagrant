(setq dotspacemacs-mode-line-unicode-symbols nil)
(setq-default dotspacemacs-configuration-layers '(python git html go markdown company-mode))



(defun dotspacemacs/config ()
  (setq powerline-default-separator nil)
  )
(setq-default dotspacemacs-themes '(leuven zenburn))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-ispell-requires 4)
 '(ahs-case-fold-search nil)
 '(ahs-default-range (quote ahs-range-whole-buffer))
 '(ahs-idle-interval 0.25)
 '(ahs-idle-timer 0 t)
 '(ahs-inhibit-face-list nil)
 '(custom-safe-themes
   (quote
    ("4dd1b115bc46c0f998e4526a3b546985ebd35685de09bc4c84297971c822750e" default)))
 '(ring-bell-function (quote ignore) t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
