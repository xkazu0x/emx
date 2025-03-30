(setq custom-file "emacs-custom.el")
(load custom-file t)

;;; -+=+MODES+=+-
(add-to-list 'load-path "~/.emacs.d/modes/")
(require 'c3-mode)
(require 'hlsl-mode)
(require 'odin-mode)

;;; -+=+THEMES+=+-
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'excalibur t)
;(load-theme 'excalibur-pink t)
;(load-theme 'excalibur-green t)
;(load-theme 'excalibur-green-hard t)
;(load-theme '0x029A t)

;;; -+=+FONT+=+-
;(let ((height (or (bound-and-true-p init-el-font-height) 120)))
;(set-face-attribute 'default nil :family "Liberation Mono" :height height))
(set-frame-font "Iosevka 14" nil t)
;(set-frame-font "Liberation Mono 12" nil t)
;(set-frame-font "DejaVu Sans Mono 12" nil t)

; Bright-red TODOs
 (setq fixme-modes '(c++-mode c-mode emacs-lisp-mode))
 (make-face 'font-lock-fixme-face)
 (make-face 'font-lock-note-face)
 (make-face 'font-lock-important-face)
 (mapc (lambda (mode)
	 (font-lock-add-keywords
	  mode
	  '(("\\<\\(TODO\\)" 1 'font-lock-fixme-face t)
            ("\\<\\(NOTE\\)" 1 'font-lock-note-face t)
            ("\\<\\(IMPORTANT\\)" 1 'font-lock-important-face t)
            )))
	fixme-modes)
 (modify-face 'font-lock-fixme-face "Red" nil nil t nil t nil nil)
 ;(modify-face 'font-lock-note-face "Dark Green" nil nil t nil t nil nil)
 (modify-face 'font-lock-note-face "Green" nil nil t nil t nil nil)
 (modify-face 'font-lock-important-face "Yellow" nil nil t nil t nil nil)
(setq xkazu0x-makescript "Makefile")

(defun find-project-directory-recursive ()
  "Recursively search for a makefile."
  (interactive)
  (if (file-exists-p xkazu0x-makescript) t
      (cd "../")
      (find-project-directory-recursive)))

(defun find-project-directory ()
  "Find the project directory."
  (interactive)
  (setq find-project-from-directory default-directory)
  (switch-to-buffer-other-window "*compilation*")
  (cd find-project-from-directory)
  (find-project-directory-recursive)
  (setq last-compilation-directory default-directory))

(defun make-without-asking ()
  "Make the current build."
  (interactive)
  (if (find-project-directory) (compile "make")
  (other-window 1)))
(define-key global-map "\em" 'make-without-asking)

(defun run-without-asking ()
  "Make the current build."
  (interactive)
  (if (find-project-directory) (compile "make run")
  (other-window 1)))
(define-key global-map "\ek" 'run-without-asking)

(defun remake-without-asking ()
  "Make the current build."
  (interactive)
  (if (find-project-directory) (compile "make remake")
  (other-window 1)))
(define-key global-map "\el" 'remake-without-asking)

;;; Tune the GC
;; The default settings are too conservative on modern machines making Emacs
;; spend too much time collecting garbage in alloc-heavy code.
(setq gc-cons-threshold (* 4 1024 1024))
(setq gc-cons-percentage 0.3)

;;; -+=+PACKAGE-MANAGER+=+-
(eval-and-compile
  (require 'package)
  (setq package-archives '(("melpa" . "https://melpa.org/packages/")
                           ("gnu" . "https://elpa.gnu.org/packages/")))
  (setq package-enable-at-startup nil)
  (setq package-native-compile t)
  (setq native-comp-async-report-warnings-errors nil)
  (setq async-bytecomp-allowed-packages nil)
  (package-initialize)
  (defvar init-el-package-archives-refreshed nil)
  (defun init-el-install-package (package-name)
    (unless (package-installed-p package-name)
      (unless init-el-package-archives-refreshed
        (package-refresh-contents)
        (setq init-el-package-archives-refreshed t)
      (package-install package-name))))
  (defmacro init-el-with-eval-after-load (feature &rest body)
    (declare (indent 1) (debug t))
    (require feature)
    `(with-eval-after-load ',feature ,@body))
  (defmacro init-el-require-package (package-name &optional feature-name)
    (init-el-install-package package-name)
    (require (or feature-name package-name))
    `(init-el-install-package ',package-name)))

;;; -+COMPANY+-
;; (init-el-require-package company)
;; (global-company-mode)
;; (setq company-idle-delay t)

;;; -+UNDO-TREE+-
(init-el-require-package undo-tree)
(global-undo-tree-mode)
(setq undo-tree-visualizer-timestamps t)
(setq undo-tree-visualizer-lazy-drawing nil)
(setq undo-tree-auto-save-history t)
(let ((undo-dir (expand-file-name "undo" user-emacs-directory)))
  (setq undo-tree-history-directory-alist (list (cons "." undo-dir))))

;;; -+DUMB-JUMP+-
;;(init-el-require-package dumb-jump)

;;; -+DABBREV+-
;; (init-el-with-eval-after-load dabbrev
;;   (setq dabbrev-case-replace nil)
;;   (setq dabbrev-case-distinction nil))

;;; -+WHITESPACE+-
;; (init-el-with-eval-after-load whitespace
;;   (setq whitespace-style '(face trailing lines-tail empty space-before-tab)))

;;; -+=+CUSTOM+=+-
;; maximize window
(add-hook 'window-setup-hook 'toggle-frame-maximized t)

;; disable useless gui
(tool-bar-mode -1)
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))
(when (fboundp 'horizontal-scroll-bar-mode)
  (horizontal-scroll-bar-mode -1))
(menu-bar-mode -1)
(blink-cursor-mode -1)
(setq use-file-dialog nil)
(setq use-dialog-box nil)

;; disable initial screen and message
(fset #'display-startup-echo-area-message #'ignore)
(setq inhibit-splash-screen t)
;(setq inhibit-startup-message t)
(setq initial-scratch-message "")

(setq display-line-numbers-type 'relative)
(line-number-mode)
(column-number-mode)
(display-time-mode 1)
(size-indication-mode 0)

(global-display-line-numbers-mode 1)
(global-hl-line-mode 1)
;(ido-mode 1)
;(ido-everywhere 1)

;; DISABLE BACKUPS/LOCKFILES
(setq create-lockfiles nil
      make-backup-files nil
      ;; in case if it is enabled
      version-control t
      backup-by-copying t
      delete-old-versions t
      kept-old-versions 5
      kept-new-versions 5)

(setq auto-save-default nil)

;;; USE FUCKING UTF-8
(prefer-coding-system 'utf-8)
;(setq coding-system-for-read 'utf-8)
;(setq coding-system-for-write 'utf-8)
(set-language-environment "UTF-8")
(set-selection-coding-system 'utf-8)
(setq locale-coding-system 'utf-8)
(setq-default buffer-file-coding-system 'utf-8-unix)

;; fix scrolling
(setq mouse-wheel-progressive-speed nil)
(setq scroll-margin 3)
(setq scroll-conservatively 100000)
(setq scroll-preserve-screen-position 'always)

;;; Clipboard
;; (setq-default select-active-regions nil)
;; (when (boundp 'x-select-enable-primary)
;;   (setq x-select-enable-primary nil))

;;; SET UNDO LIMITS
(setq undo-limit (* 16 1024 1024))
(setq undo-strong-limit (* 24 1024 1024))
(setq undo-outer-limit (* 64 1024 1024))

;;; DO NOT DISABLE COMMANDS
(setq disabled-command-function nil)

;;; SEARCH HIGHLIGHT
(setq search-highlight t)
(setq query-replace-highlight t)

;; LINES ------
(setq-default truncate-lines t)

;;; -+=+PACKAGE-MODE+=+-
(setq-default indent-tabs-mode nil)
(init-el-with-eval-after-load cc-vars
  (setq-default c-basic-offset 4)
  (c-set-offset 'case-label 4)
  (setq c-auto-align-backslashes nil))

(init-el-with-eval-after-load cc-mode)
(add-to-list 'auto-mode-alist '("\.cu$" . c++-mode))
(init-el-with-eval-after-load rust-ts-mode)
(init-el-require-package glsl-mode)

;;; TITLE BAR FORMAT
(setq icon-title-format (setq frame-title-format "%b [%f] - Emacs"))

;;; PARAGRAPH FILLING
(setq sentence-end-double-space nil)
(setq-default fill-column 80)

;; INTERACTION
(setq use-short-answers t)
(setq confirm-kill-emacs 'yes-or-no-p)
(setq initial-scratch-message "")

;; BELL/WARNING -----
(setq visible-bell t)
(setq ring-bell-function 'ignore)

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

(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

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

(use-package swiper
  :ensure t
  :config)

(global-set-key (kbd "C-s") 'swiper)
	
;; (use-package marginalia
;;   :ensure t
;;   :config
;;   (marginalia-mode 1))

(use-package tree-sitter-langs
  :ensure t)

(use-package tree-sitter
  :ensure t
  :after tree-sitter-langs
  :config
  (global-tree-sitter-mode)
  (global-font-lock-mode t)
  (setq treesit-font-lock-level t)
  (setq font-lock-maximum-decoration t)
  (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode))
