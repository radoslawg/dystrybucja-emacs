(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")
                         ("org" . "http://orgmode.org/elpa/")))

(package-initialize)
(require 'exwm)
(require 'exwm-config)

(exwm-config-default)

(setq exwm-input-global-key '(, ("kbd s-&") .
      (lambda (command)
	(interactive(list(read-shell-command "$ ")))
	(start-process-shell-command command nil command))))

 (set-face-attribute 'default nil
       :font "Monaco"
       :weight 'normal
       :width 'normal
       :height 100)

(load-theme 'cyberpunk t)

(set-frame-parameter nil 'alpha '(80 . 66))
(add-to-list 'default-frame-alist '(alpha . (80 . 66)))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("d1cc05d755d5a21a31bced25bed40f85d8677e69c73ca365628ce8024827c9e3" default)))
 '(package-selected-packages (quote (cyberpunk-theme exwm))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
