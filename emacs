(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(elpy-syntax-check-command "flake8 --max-line-length=120")
 '(inhibit-startup-screen t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans" :foundry "PfEd" :slant normal :weight normal :height 114 :width normal)))))


;; (add-to-list 'load-path "/home/j/git/scala-mode2/")
;; (require 'scala-mode2)

;; (add-to-list 'load-path "/home/j/git/q-mode/")
;; (require 'kdbp-mode)
;; (require 'q-minor-mode)

;; (add-to-list 'load-path "/home/j/git/elpy/")
;; (require 'elpy)
(package-initialize)
(elpy-enable)
(setq elpy-rpc-python-command "python3")
(elpy-use-ipython "ipython3")
(setq elpy-rpc-backend "jedi")

;;
(setq tab-width 2)
(setq-default fill-column 120)
(setq-default show-trailing-whitespace t)
(global-set-key (kbd "M-g") 'goto-line)
(global-set-key (kbd "C-c w") 'delete-trailing-whitespace)
(global-set-key (kbd "C-c r") 'revert-buffer)

(global-set-key (kbd "C-x C-b") 'ibuffer)
;; (global-unset-key [(control z)])
;; (global-unset-key [(control x)(control z)])
;; (global-unset-key [(control x)(control c)])


