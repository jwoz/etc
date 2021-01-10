;; general settings
(setq tab-width 2)
(setq-default fill-column 120)
(setq-default show-trailing-whitespace t)

;; packages
(require 'package)
(add-to-list 'package-archives
         '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
    (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

;; company
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

;; ycmd
;; https://github.com/abingham/emacs-ycmd
;; https://github.com/ycm-core/ycmd#building
(require 'ycmd)
(add-hook 'after-init-hook #'global-ycmd-mode)
(add-hook 'c++-mode-hook 'ycmd-mode)
(set-variable 'ycmd-server-command '("python" "/home/juergen/github/ycmd/ycmd"))

(require 'company-ycmd)
(company-ycmd-setup)

;; flycheck
(require 'flycheck-ycmd)
(flycheck-ycmd-setup)
(add-hook 'c++-mode-hook 'flycheck-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; https://stackoverflow.com/questions/34117163/how-to-have-company-mode-irony-backend-and-irony-header-work-in-emacs
;; for irony....
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;(setq company-backends (delete 'company-semantic company-backends))
;; (define-key c-mode-map  [(tab)] 'company-complete)
;;(define-key c++-mode-map  [(tab)] 'company-complete)

;; (add-to-list 'company-backends 'company-c-headers)
;; (add-to-list 'company-c-headers-path-system "/usr/include/c++/4.8/")

;; To retrieve completion candidates for your projects, you will have to tell Clang where your include paths are.
;; Create a file named .dir-locals.el at your project root:
;; ((nil . ((company-clang-arguments . ("-I/home/<user>/project_root/include1/"
;;				     "-I/home/<user>/project_root/include2/")))))



;; projectile
;;(projectile-mode +1)
;;(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
;;(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (flycheck-clang-tidy flycheck-ycmd use-package company-ycmd))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
