(deftheme excalibur "EXCALIBUR")

(let ((sxxx-bg      "#141516")
      (sxxx-fg      "#BAB5A1")
      (sxxx-fg1     "#d1b897")

      (sxxx-white   "#FFFFFF")
      (sxxx-black   "#000000")
      ;(sxxx-gray    "#7F7F7F")
      (sxxx-gray     "#898776")
      
      (sxxx-navy    "#667A73")
      (sxxx-orange  "#ce664d")
      (sxxx-brown   "#78766d")
      
      (sxxx-green   "#31383B")
      (sxxx-green1  "#8cde94")
      (sxxx-green2  "#062329")
      (sxxx-green3  "#126367"))
  
  (custom-theme-set-variables
   'excalibur
   '(frame-background-mode (quote dark)))

  (custom-theme-set-faces
   'excalibur

   ;; Default colors
   ;; //////////////////////////////////
   `(default   ((t (:foreground ,sxxx-fg :background ,sxxx-black))))
   `(region    ((t (:background ,sxxx-fg :foreground ,sxxx-green))))
   `(cursor    ((t (:background ,sxxx-white))))
   `(border    ((t (:background ,sxxx-fg :foreground ,sxxx-green))))
   `(highlight ((t (:foreground ,sxxx-bg :background ,sxxx-fg))))
   
   `(fringe  ((t ,(list :background nil :foreground sxxx-green))))
   `(vertical-border ((t ,(list :foreground sxxx-green))))
   `(minibuffer-prompt ((t (:foreground ,sxxx-navy))))
   
   ;; Font lock faces
   ;; //////////////////////////////////
   `(font-lock-bracket-face              ((t (:foreground ,sxxx-fg))))
   `(font-lock-builtin-face              ((t (:foreground ,sxxx-navy))))
   `(font-lock-comment-delimiter-face    ((t (:foreground ,sxxx-gray))))
   `(font-lock-comment-face              ((t (:foreground ,sxxx-gray))))
   `(font-lock-constant-face             ((t (:foreground ,sxxx-navy))))
   `(font-lock-delimiter-face            ((t (:foreground ,sxxx-fg))))
   `(font-lock-doc-face                  ((t (:foreground ,sxxx-navy))))
   `(font-lock-doc-markup-face           ((t (:foreground ,sxxx-navy))))
   `(font-lock-escape-face               ((t (:foreground ,sxxx-fg))))
   ;`(font-lock-fixme-face                ((t (:foreground "#"))))
   `(font-lock-function-call-face        ((t (:foreground ,sxxx-gray))))
   `(font-lock-function-name-face        ((t (:foreground ,sxxx-gray))))
   `(font-lock-keyword-face              ((t (:foreground ,sxxx-navy))))
   `(font-lock-misc-punctuation-face     ((t (:foreground ,sxxx-fg))))
   `(font-lock-negation-char-face        ((t (:foreground ,sxxx-fg))))
   ;`(font-lock-note-face                 ((t (:foreground "#"))))
   `(font-lock-number-face               ((t (:foreground ,sxxx-fg))))
   `(font-lock-operator-face             ((t (:foreground ,sxxx-fg))))
   `(font-lock-preprocessor-face         ((t (:foreground ,sxxx-gray))))
   `(font-lock-property-name-face        ((t (:foreground ,sxxx-fg))))
   `(font-lock-property-use-face         ((t (:foreground ,sxxx-fg))))
   `(font-lock-punctuation-face          ((t (:foreground ,sxxx-fg))))
   `(font-lock-regexp-face               ((t (:foreground ,sxxx-brown))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,sxxx-white))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,sxxx-white))))
   `(font-lock-string-face               ((t (:foreground ,sxxx-brown))))
   `(font-lock-type-face                 ((t (:foreground ,sxxx-navy))))
   `(font-lock-variable-name-face        ((t (:foreground ,sxxx-fg))))
   `(font-lock-variable-use-face         ((t (:foreground ,sxxx-fg))))
   `(font-lock-warning-face              ((t (:foreground ,sxxx-navy))))
   
   ;; Mode line
   ;; //////////////////////////////////
   `(mode-line           ((t ,(list :background sxxx-fg :foreground sxxx-green2))))
   `(mode-line-emphasis  ((t ,(list :foreground sxxx-navy))))
   `(mode-line-highlight ((t ,(list :background sxxx-navy :foreground sxxx-bg))))
   `(mode-line-inactive  ((t ,(list :background sxxx-green2 :foreground sxxx-fg))))

   ;; hl-line
   ;; //////////////////////////////////
   `(hl-line ((t (:background ,sxxx-green2))))
   
   ;; Line number
   ;; //////////////////////////////////
   `(line-number              ((t (:foreground ,sxxx-brown))))
   `(line-number-current-line ((t (:foreground ,sxxx-fg))))
   
   ;; completion
   `(completions-annotations ((t (:inherit 'shadow))))
   `(completions-highlight ((t (:foreground ,sxxx-bg :background ,sxxx-fg))))
   `(ffap ((t (:foreground ,sxxx-bg :background ,sxxx-fg))))
   
   ;; isearch
   `(isearch ((t (:foreground ,sxxx-bg :background ,sxxx-fg :weight normal))))
   `(isearch-fail ((t (:foreground ,sxxx-bg :background ,sxxx-green3 :bold t))))

   ;; pulse
   `(pulse-highlight-start-face ((t (:background ,sxxx-white))))
   
   ;; dired
   `(warning ((t (:background nil :foreground ,sxxx-navy))))
   
   ;;; show paren
   `(show-paren-match ((t (:background ,sxxx-fg :foreground ,sxxx-bg))))
   `(show-paren-match-expression ((t (:background ,sxxx-fg :foreground ,sxxx-bg))))
   `(show-paren-mismatch ((t (:background ,sxxx-green3 :foreground ,sxxx-bg))))
   
   ;; tree-sitter
   ;; //////////////////////////////////
   `(tree-sitter-hl-face:embedded      ((t (:foreground ,sxxx-fg))))
   `(tree-sitter-hl-face:function.call ((t (:foreground ,sxxx-gray :italic nil))))
   `(tree-sitter-hl-face:type          ((t (:foreground ,sxxx-navy))))
   `(tree-sitter-hl-face:variable      ((t (:foreground ,sxxx-fg))))
   `(tree-sitter-hl-face:number        ((t (:foreground ,sxxx-fg))))
   `(tree-sitter-hl-face:operator      ((t (:foreground ,sxxx-fg))))
   `(tree-sitter-hl-face:property      ((t (:foreground ,sxxx-fg :italic nil))))
   `(tree-sitter-hl-face:punctuation   ((t (:foreground ,sxxx-fg))))
   
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
      
   `(mouse-drag-and-drop-region ((t ,(list :background sxxx-fg :foreground sxxx-green))))
   `(next-error ((t ,(list :background sxxx-fg :foreground sxxx-green))))
   
   `(match ((t ,(list :background sxxx-navy :foreground sxxx-green))))
   
   ;;;
   `(help-key-binding ((t ,(list :background sxxx-navy :foreground sxxx-black))))
   `(read-multiple-choice-face ((t ,(list :background sxxx-navy :foreground sxxx-black))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide 'excalibur)
