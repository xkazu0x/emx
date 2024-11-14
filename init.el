;; FONT AND THEME
(set-frame-font "Iosevka 18" nil t)
;(load-theme 'suixide-dream t)
(load-theme 'suixide-life t)

;; INTERACTION ------
(setq use-short-answers t)
(setq confirm-kill-emacs 'yes-or-no-p)
(setq initial-scratch-message "")

;; WINDOW ------
;(setq frame-resize-pixelwise t)
;(setq ns-pop-up-frames nil)
;(setq window-resize-pixelwise nil)
;(setq split-width-threshhold 80)

;; LINES ------
(setq-default truncate-lines t)
;(setq-default fill-column 80)
;(setq indent-line-function 'insert-tab)

(defun coding-hooks ()
  (setq-default indent-tabs-mode nil)
  (setq-default tab-width 4)
  (setq c-basic-offset 4)
  (c-set-offset 'substatement-open 0)
  (c-set-offset 'brace-list-open 0)
  (c-set-offset 'block-open 0)
  (c-set-offset 'class-open 0)
  (c-set-offset 'inline-open 0)
  (c-toggle-hungry-state 1)
  (hs-minor-mode t)
  (abbrev-mode 0)
  (add-hook 'before-save-hook 'coding-system-hook))

(add-hook 'c-mode-hook 'coding-hooks)
(add-hook 'c++-mode-hook 'coding-hooks)
	
;(setq sentence-end-double-space nil)
;(setq bookmark-set-fringe-mark nil)

;; SCROLLING --------
(setq scroll-conservatively 101)
(setq mouse-wheel-follow-mouse 't
      mouse-wheel-progressive-speed nil
      mouse-wheel-scroll-amount '(1 ((shift) . 3) ((control) . 6)))

;; BACKUPS/LOCKFILES ---
(setq create-lockfiles nil
      make-backupfiles nil
      ;; in case if it is enabled
      version-control t
      backup-by-copying t
      delete-old-versions t
      kept-old-versions 5
      kept-new-versions 5)

;; BELL/WARNING -----
(setq visible-bell t)
(setq ring-bell-function 'ignore)

;; START UP SHIT ----
(setq inhibit-startup-message t)
(setq backup-inhibited t)
(setq display-line-numbers-type 'relative)

(add-hook 'window-setup-hook 'toggle-frame-maximized t)

(line-number-mode)
(column-number-mode)
(display-time-mode -1)
(size-indication-mode 0)

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(global-display-line-numbers-mode 1)
(global-hl-line-mode 1)
;(ido-mode 1)
;(ido-everywhere 1)

;; FUNCTIONS AND KEYS
(defun duplicate-line()
  (interactive)
  (let ((column (- (point) (point-at-bol)))
	(line (let ((s (thing-at-point 'line t)))
		(if s (string-remove-suffix "\n" s) ""))))
    (move-end-of-line 1)
    (newline)
    (insert line)
    (move-beginning-of-line 1)
    (forward-char column)))

(global-set-key (kbd "C-,") 'duplicate-line)
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; PACKAGES ---------
(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("elpa" . "https://elpa.gnu.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")))
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; --- USE PACKAGE
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)
(setq use-package-verbose nil)
	
(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)))

(use-package all-the-icons
  :if (display-graphic-p))
	
(use-package neotree
  :ensure t
  :bind (("C-\\" . 'neotree-toggle))
  :config
  (custom-set-faces
   '(neo-file-link-face ((t (:foreground "#617676"))))
   '(neo-dir-link-face ((t (:foreground "#61586f"))))
   '(neo-root-dir-face ((t (:foreground "#878480")))))
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow)
	neo-window-width 32))
	
(use-package ivy
  :diminish ivy-mode
  :config
  (ivy-mode 1))

;; (use-package vertico
;; 	:ensure t
;; 	:config
;; 	(setq vertico-cycle t)
;; 	(setq vertico-resize nil)
;; 	(vertico-mode 1))
	
;; (use-package marginalia
;;   :ensure t
;;   :config
;;   (marginalia-mode 1))

(use-package doom-modeline
  :ensure t
  :config
  (doom-modeline-mode)
  (setq doom-modeline-height 1
	doom-modeline-buffer-file-name-style 'relative-from-project
	doom-modeline-enable-word-count nil
	doom-modeline-buffer-encoding nil
	doom-modeline-buffer-state-icon nil
	doom-modeline-icon t
	doom-modeline-modal-icon nil
	doom-modeline-major-mode-icon t
	doom-modeline-major-mode-color-icon nil
	doom-modeline-vcs-icon t
	doom-modeline-bar-width 3))

(use-package glsl-mode
  :ensure t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("f551a7d1e25975d50aea0ecb1415a8b6d170a69a5e8055fb6490aa2ccaa49fa6" "82226998dacd515156ab158c6bc4b62bff168944db76b387f45a4bf536d705e0" default))
 '(package-selected-packages
   '(glsl-mode centaur-tabs doom-modeline all-the-icons neotree auto-complete cape corfu marginalia tree-sitter treesit-auto treesitter-langs treesitter tree-sitter-langs ivy f compat)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
