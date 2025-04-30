;-*- coding: utf-8 -*-
;; ergonomic_keybinding_qwerty.el -- A ergonomic keybinding for qwerty keyboard.



;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq make-backup-files         nil) ; Don't want any backup files
(setq auto-save-list-file-name  nil) ; Don't want any .saves files
(setq auto-save-default         nil) ; Don't want any auto saving

;удобный скроллинг и выделение текущей строки. по умолчанию emacs прокручивает почти на половину экрана, что крайне не удобно. исправим это. и еще бывает что теряешь место курсора, для этого включаем подсветку текущей строки.
(setq scroll-step 1)
;(global-hl-line-mode 1)

;мы знаем, 'C-x o' переключает фокус на следущее окно. а если окон 5 или 10? делаем навигацию проще.
(windmove-default-keybindings 'meta)

;9) думаю, не только меня раздражает, то что надо всегда набирать yes или no, когда закрываешь буффер или покидаешь emacs. не легче набрать y или n?
(fset 'yes-or-no-p 'y-or-n-p)

;; plugin linum+
(load-file "~/.emacs.d/linum_plus.el")
(setq linum-format "%d ")
(global-linum-mode 1)

;;Особый режим переключение между буферами
(iswitchb-mode 1)

;;plugin ido
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)

;;plugin bs
;(require 'bs)
;(setq bs-configurations
;	'(("files" "^\\*scratch\\*" nil nil bs-visits-non-file bs-sort-buffer-interns-are-last)))
;(global-set-key (kbd "<f2>") 'bs-show)

;; plugin sr-speedbar
(load-file "~/.emacs.d/sr-speedbar.el")
(require 'sr-speedbar)
(global-set-key (kbd "<f12>") 'sr-speedbar-toggle)

(require 'package)
;; If you want to use latest version
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
;; If you want to use last tagged version
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
;;(package-initialize)

;; plugin auto-complete
;(add-to-list 'load-path "~/.emacs.d/auto-complete/")
(require 'auto-complete-config)
;(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete/dict")
(ac-config-default)

;(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
; '(package-selected-packages (quote (magit js2-mode auto-complete))))
;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
; )



;(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
;(add-to-list 'interpreter-mode-alist '("node" . js2-mode))
;(add-to-list 'interpreter-mode-alist '("node" . js2-mode))

;(add-to-list 'load-path "~/.emacs.d/node-ac")
;(require 'node-ac-mode)
;(add-hook 'js2-mode-hook
;          (lambda ()
;		    (local-set-key (kbd "C-.") 'node-ac-auto-complete)
;		  	(local-set-key (kbd "C-c C-d") 'node-ac-show-document)
;		  	(local-set-key (kbd "C-c C-j") 'node-ac-jump-to-definition)))

;; plugin color-theme
;(load-file "~/.emacs.d/color-theme.el")
(add-to-list 'load-path "~/.emacs.d/color-theme/")
(require 'color-theme)
(color-theme-initialize)
(setq color-theme-is-global t)

;(color-theme-robin-hood)
;(color-theme-classic)
(color-theme-calm-forest)
;(color-theme-select)

; init.el
;(require 'init-markdown)



;(add-to-list 'load-path
;              "~/.emacs.d/plugins/yasnippet")
;(require 'yasnippet)
;(yas-global-mode 1)


;(add-to-list 'load-path "~/.emacs.d/node-ac")
;(require 'node-ac-mode)

;(add-hook 'js2-mode-hook
;          (lambda ()
;		    (local-set-key (kbd "C-.") 'node-ac-auto-complete)
;		  	(local-set-key (kbd "C-c C-d") 'node-ac-show-document)
;		  	(local-set-key (kbd "C-c C-j") 'node-ac-jump-to-definition)))
;


;;;JOEFOX Add
;(define-key-after global-map [menu-bar file lang-modes]
;  (cons "Language Modes" (make-sparse-keymap "major modes")) 'kill-buffer )
;(define-key-after global-map [menu-bar edit redo] '("Redo" . sh-mode))



;; plugin jfkeys
(load-file "~/.emacs.d/jfkeys.el")

;; plugin resize windows Ctrl+Alt+Arrow  Не работает почему то
(load-file "~/.emacs.d/winres.el")

;; plugin jfmenu
(load-file "~/.emacs.d/jfmenu.el")

