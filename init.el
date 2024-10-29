;; FONT AND THEME
(set-frame-font "Iosevka 18" nil t)
(load-theme 'suixide-dream t)

;; INTERACTION ------
(setq use-short-answers t)
(setq confirm-kill-emacs 'yes-or-no-p)
(setq initial-scratch-message "")

;; WINDOW ------
(setq frame-resize-pixelwise t)
(setq ns-pop-up-frames nil)
(setq window-resize-pixelwise nil)
(setq split-width-threshhold 80)

;; LINES ------
(setq-default truncate-lines t)
(setq-default fill-column 80)
(setq indent-line-function 'insert-tab)
(setq-default tab-width 4)
(setq indent-tabs-mode t)

(setq-default c-basic-offset 4)
(c-set-offset 'case-label '4)

(use-package paren
  ;; highlight matching delimiters
  :ensure nil
  :config
  (setq show-paren-delay 0.1
		show-paren-highlight-openparen t
		show-paren-when-point-inside-paren t
		show-paren-when-point-in-periphery t)
  (show-paren-mode 1))

(setq sentence-end-double-space nil)
(setq bookmark-set-fringe-mark nil)

;; SCROLLING --------
(setq scroll-conservatively 101)
(setq
 mouse-wheel-follow-mouse 't
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
(global-hl-line-mode 0)
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

(use-package ivy
  :diminish ivy-mode
  :config
  (ivy-mode 1))

(use-package doom-modeline
  :config
  (doom-modeline-mode)
  (setq doom-modeline-height 1
		doom-modeline-buffer-file-name-style 'relative-from-project
		doom-modeline-enable-word-count nil
		doom-modeline-buffer-encoding nil
		doom-modeline-icon t
		doom-modeline-modal-icon nil
		doom-modeline-major-mode-icon t
		doom-modeline-major-mode-color-icon nil
		doom-modeline-buffer-state-icon nil
		doom-modeline-bar-width 3))

(use-package org)

(use-package org-super-agenda
  :after org
  :config
  (setq org-super-agenda-header-map nil) ;; takes over 'j'
  ;; (setq org-super-agenda-header-prefix " ◦ ") ;; There are some unicode "THIN SPACE"s after the ◦
  ;; Hide the thin width char glyph. This is dramatic but lets me not be annoyed
  (add-hook 'org-agenda-mode-hook
            #'(lambda () (setq-local nobreak-char-display nil)))
  (org-super-agenda-mode))

(use-package org-superstar
  :config
  (setq org-superstar-leading-bullet " ")
  (setq org-superstar-special-todo-items t) ;; Makes TODO header bullets into boxes
  (setq org-superstar-todo-bullet-alist '(("TODO" . 9744)
                                          ("INPROG-TODO" . 9744)
                                          ("WORK" . 9744)
                                          ("STUDY" . 9744)
                                          ("SOMEDAY" . 9744)
                                          ("READ" . 9744)
                                          ("PROJ" . 9744)
                                          ("CONTACT" . 9744)
                                          ("DONE" . 9745)))
  ;; :hook (org-mode . org-superstar-mode)
  )

;; Removes gap when you add a new heading
(setq org-blank-before-new-entry '((heading . nil) (plain-list-item . nil)))

(use-package org-modern
  :hook (org-mode . org-modern-mode)
  :config
  (setq
   ;; org-modern-star '("●" "○" "✸" "✿")
   org-modern-star '( "⌾" "✸" "◈" "◇")
   org-modern-list '((42 . "◦") (43 . "•") (45 . "–"))
   org-modern-tag nil
   org-modern-priority nil
   org-modern-todo nil
   org-modern-table nil))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(org-superstar org-super-agenda org-modern doom-modeline)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
