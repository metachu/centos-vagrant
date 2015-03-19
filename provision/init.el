;;;REQUIRED BASICS
(global-set-key (kbd "C-z") 'undo)
(setq visible-bell t)
(setq backup-inhibited t)
(setq auto-save-default nil)
(setq make-backup-files nil)
(setq transient-mark-mode t)
(fset 'yes-or-no-p 'y-or-n-p)
(setq column-number-mode t)
(setq initial-scratch-message nil)
(setq inhibit-startup-message t)
(setq-default cursor-type 'bar)

(setq-default tab-width 4)
	

;;custom vars leave these here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#303030" "#ff4b4b" "#d7ff5f" "#fce94f" "#5fafd7" "#d18aff" "#afd7ff" "#c6c6c6"])
 '(custom-safe-themes (quote ("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "4e262566c3d57706c70e403d440146a5440de056dfaeb3062f004da1711d83fc" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "756597b162f1be60a12dbd52bab71d40d6a2845a3e3c2584c6573ee9c332a66e" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;Only do these packaging things only if emacs >24
(when (>= emacs-major-version 24)
  (load-theme 'wombat t)
  (require 'package)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  (package-initialize)
  (load-theme 'wombat)
  (if (not (package-installed-p 'req-package))
    (progn
      (package-refresh-contents)
      (package-install 'req-package)))
  (require 'req-package)
  ;;We have downloaded and installed req package

  (req-package moe-theme
    )
  
;;  (req-package rinari
;;    )

  
  (req-package linum
    :config
    (progn
      (add-hook 'prog-mode-hook
		'(lambda () (linum-mode 1)))))


  (req-package helm
    :init
    (progn
      (setq helm-ff-auto-update-initial-value)
      (bind-key* "M-x" 'helm-M-x)
      (bind-key* "C-x C-f" 'helm-find-files)
      (bind-key* "C-x b" 'helm-mini)
      (bind-key* "C-x C-b" 'helm-mini)
      (bind-key* "M-y" 'helm-show-kill-ring)
      )
    
    :config
    (helm-mode 1))
  (req-package helm-swoop
    :require helm
    :init
    (progn
      (bind-key "M-i" 'helm-swoop)
      (define-key isearch-mode-map (kbd "M-i") 'helm-swoop-from-isearch)
      ))

  
  (req-package smex
    :bind (("M-X" . smex-major-mode-commands)
	   ;; This is old M-t.
	   ("C-c C-c M-t" . execute-extended-command)))
  (req-package ace-jump-mode
    :bind ("C-c ." . ace-jump-mode))


  (req-package magit
    :diminish magit-auto-revert-mode)

  (req-package smartparens-config
    :ensure smartparens
    :diminish (smartparens-mode . "()")
    :init (smartparens-global-mode t))

  (req-package rainbow-delimiters
    :config
      (add-hook 'prog-mode-hook 'rainbow-delimiters-mode))
  
  (req-package go-mode
    :bind ("C-c C-c" . compile)
    :init
    (progn
      (add-hook 'before-save-hook 'gofmt-before-save)
      (add-hook 'go-mode-hook (lambda ()
  				(progn
  				  (flycheck-mode)
  				  (set (make-local-variable 'company-backends) '(company-go))
  				  (if (not (string-match "go" compile-command))
  				      (set (make-local-variable 'compile-command)
  					   (concat "go run \"" (buffer-file-name) "\"")))
  				  )))
      (add-hook 'go-mode-hook 'go-eldoc-setup)
      ))

  (req-package company-go)
  (req-package flycheck)
  (req-package go-eldoc)
  (req-package company
    :init

      (add-hook 'prog-mode-hook '(lambda () (company-mode))))

  
  (req-package-finish);; load the packages now
  (moe-dark)
)


;; custom keybinds based on laptop
(when (string= system-name "jessie.home.metachu.com")
  (progn
    (global-set-key (kbd "<deletechar>") 'backward-kill-word)))


