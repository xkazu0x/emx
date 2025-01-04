(deftheme sxxx-navy
  "SUIXIDE SEXXX")

(let ((sxxx-white   "#FFFFFF")
      (sxxx-black   "#000000")
      (sxxx-gray    "#5D6362")
      (sxxx-fg      "#BAB5A1")
      (sxxx-bg      "#161718")
      (sxxx-navy    "#667A73")
      (sxxx-green   "#31383B")
      (sxxx-green-1 "#242829")
      (sxxx-bberry  "#654DCE")
      )
  (custom-theme-set-variables
   'sxxx-navy
   '(frame-background-mode (quote dark)))

  (custom-theme-set-faces
   'sxxx-navy

   ;; basic faces
   `(border ((t ,(list :background sxxx-fg
		       :foreground sxxx-green))))
   `(cursor ((t ,(list :background sxxx-navy))))
   `(default ((t ,(list :foreground sxxx-fg
                        :background sxxx-black))))
   `(fringe ((t ,(list :background nil
		       :foreground sxxx-green))))
   `(vertical-border ((t ,(list :foreground sxxx-green))))
   `(minibuffer-prompt ((t (:foreground ,sxxx-navy))))

   ;; completion
   `(completions-annotations ((t (:inherit 'shadow))))
   `(completions-highlight ((t (:foreground ,sxxx-bg :background ,sxxx-fg))))
   `(ffap ((t (:foreground ,sxxx-bg :background ,sxxx-fg))))
   `(highlight ((t (:foreground ,sxxx-bg :background ,sxxx-fg))))
   
   ;; isearch
   `(isearch ((t (:foreground ,sxxx-bg :background ,sxxx-fg :weight normal))))
   `(isearch-fail ((t (:foreground ,sxxx-bg :background ,sxxx-bberry :bold t))))

   ;; pulse
   `(pulse-highlight-start-face ((t (:background ,sxxx-white))))
   
   ;; font lock
   `(font-lock-builtin-face ((t (:foreground ,sxxx-navy))))
   `(font-lock-comment-face ((t (:foreground ,sxxx-gray))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,sxxx-gray))))
   `(font-lock-constant-face ((t (:foreground ,sxxx-navy))))
   `(font-lock-doc-face ((t (:foreground ,sxxx-navy))))
   `(font-lock-function-name-face ((t (:foreground ,sxxx-gray))))
   `(font-lock-keyword-face ((t (:foreground ,sxxx-navy :bold nil))))
   `(font-lock-negation-char-face ((t (:foreground ,sxxx-gray))))
   `(font-lock-preprocessor-face ((t (:foreground ,sxxx-gray))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,sxxx-white))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,sxxx-white))))   
   `(font-lock-string-face ((t (:foreground ,sxxx-navy))))
   `(font-lock-type-face ((t (:foreground ,sxxx-navy))))
   `(font-lock-variable-name-face ((t (:foreground ,sxxx-fg))))
   `(font-lock-warning-face ((t (:foreground ,sxxx-navy))))

   ;; dired
   `(warning ((t (:background nil :foreground ,sxxx-navy))))
   
   ;;; show paren
   `(show-paren-match ((t (:background ,sxxx-fg :foreground ,sxxx-bg))))
   `(show-paren-match-expression ((t (:background ,sxxx-fg :foreground ,sxxx-bg))))
   `(show-paren-mismatch ((t (:background ,sxxx-bberry :foreground ,sxxx-bg))))
   
   ;; ivy
   `(ivy-minibuffer-match-face-1 ((t (:background nil :foreground ,nil))))
   `(ivy-minibuffer-match-face-2 ((t (:background ,sxxx-navy :foreground ,sxxx-black))))
   `(ivy-minibuffer-match-face-3 ((t (:background ,sxxx-navy :foreground ,sxxx-black))))
   `(ivy-minibuffer-match-face-4 ((t (:background ,sxxx-navy :foreground ,sxxx-black))))
   `(ivy-current-match ((t (:background ,sxxx-fg :foreground ,sxxx-black))))
   `(ivy-prompt-match ((t (:background ,sxxx-fg :foreground ,sxxx-black))))

   ;; swiper
   `(swiper-background-match-face-1 ((t (:background ,nil :foreground ,nil))))
   `(swiper-background-match-face-2 ((t (:background ,sxxx-navy :foreground ,sxxx-black))))
   `(swiper-background-match-face-3 ((t (:background ,sxxx-navy :foreground ,sxxx-black))))
   `(swiper-background-match-face-4 ((t (:background ,sxxx-navy :foreground ,sxxx-black))))

   `(swiper-match-face-1 ((t (:background ,nil :foreground ,nil))))
   `(swiper-match-face-2 ((t (:background ,sxxx-navy :foreground ,sxxx-black))))
   `(swiper-match-face-3 ((t (:background ,sxxx-navy :foreground ,sxxx-black))))
   `(swiper-match-face-4 ((t (:background ,sxxx-navy :foreground ,sxxx-black))))
   
   ;; tree-sitter
   `(tree-sitter-hl-face:embedded ((t (:foreground ,sxxx-fg))))
   `(tree-sitter-hl-face:function.call ((t (:foreground ,sxxx-gray :italic nil))))
   `(tree-sitter-hl-face:type ((t (:foreground ,sxxx-navy))))
   `(tree-sitter-hl-face:variable ((t (:foreground ,sxxx-fg))))
   `(tree-sitter-hl-face:number ((t (:foreground ,sxxx-fg))))
   `(tree-sitter-hl-face:operator ((t (:foreground ,sxxx-fg))))
   `(tree-sitter-hl-face:property ((t (:italic nil))))
   `(tree-sitter-hl-face:punctuation ((t (:foreground ,sxxx-fg))))
   
   ;; line highlighting
   `(hl-line ((t (:background ,sxxx-bg))))
   
   `(mouse-drag-and-drop-region ((t ,(list :background sxxx-fg :foreground sxxx-green))))
   `(next-error ((t ,(list :background sxxx-fg :foreground sxxx-green))))
   
   `(region ((t ,(list :background sxxx-fg :foreground sxxx-green))))
   `(match ((t ,(list :background sxxx-navy :foreground sxxx-green))))
   
   ;; line numbers
   `(line-number ((t (:inherit default :foreground ,sxxx-gray))))
   `(line-number-current-line ((t (:inherit line-number :foreground ,sxxx-fg))))
   
   ;; mode line
   `(mode-line ((t ,(list :background sxxx-fg :foreground sxxx-green))))
   `(mode-line-emphasis ((t ,(list :foreground sxxx-navy))))
   `(mode-line-highlight ((t ,(list :background sxxx-navy
				    :foreground sxxx-bg))))
   `(mode-line-inactive ((t ,(list :background sxxx-green
                                   :foreground sxxx-fg))))

   ;;;
   `(help-key-binding ((t ,(list :background sxxx-navy :foreground sxxx-fg))))   
   `(read-multiple-choice-face ((t ,(list :background sxxx-navy :foreground sxxx-fg))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide 'sxxx-navy)
