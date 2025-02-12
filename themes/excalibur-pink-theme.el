(deftheme excalibur-pink "EXCALIBUR")

(let ((sxxx-bg      "#141516")
      (sxxx-fg      "#BAB5A1")

      (sxxx-white   "#FFFFFF")
      (sxxx-black   "#000000")
      (sxxx-gray    "#5D6362")
      
      (sxxx-pink    "#ce4d75")
      (sxxx-slime   "#b6ce4d")
      (sxxx-purple  "#654dce")
      (sxxx-brown   "#78766d")
      (sxxx-brown1  "#877861")
      
      (sxxx-green   "#31383B")
      (sxxx-green1  "#8cde94")
      (sxxx-green2  "#062329")
      (sxxx-green3  "#126367"))
  
  (custom-theme-set-variables
   'excalibur-pink
   '(frame-background-mode (quote dark)))

  (custom-theme-set-faces
   'excalibur-pink

   ;; default colors -----------
   ;; //////////////////////////////////
   ;`(default           ((t (:background ,sxxx-black :foreground ,sxxx-fg))))
   `(default           ((t (:background ,sxxx-bg :foreground ,sxxx-fg))))
   `(region            ((t (:background ,sxxx-fg    :foreground ,sxxx-bg))))
   `(border            ((t (:background ,sxxx-fg    :foreground ,sxxx-bg))))
   ;`(fringe            ((t (:background ,sxxx-black :foreground ,sxxx-bg))))
   `(fringe            ((t (:background ,sxxx-bg :foreground ,sxxx-bg))))
   `(cursor            ((t (:background ,sxxx-pink))))
   `(highlight         ((t (:background ,sxxx-bg))))
   ;`(vertical-border   ((t (:foreground ,sxxx-black))))
   `(vertical-border   ((t (:foreground ,sxxx-bg))))
   `(minibuffer-prompt ((t (:foreground ,sxxx-pink))))

   ;; compilation --------------
   ;; //////////////////////////////////
   `(compilation-column-number ((t (:foreground ,sxxx-brown))))
   `(compilation-line-number   ((t (:foreground ,sxxx-brown))))
   
   `(compilation-error   ((t (:foreground ,sxxx-pink))))
   `(compilation-warning ((t (:foreground ,sxxx-brown))))
   `(compilation-info    ((t (:foreground ,sxxx-slime))))
   
   `(compilation-mode-line-fail ((t (:foreground ,sxxx-pink))))
   `(compilation-mode-line-exit ((t (:foreground ,sxxx-brown))))
   `(compilation-mode-line-run  ((t (:foreground ,sxxx-slime))))
   
   ;; font lock faces ----------
   ;; //////////////////////////////////
   `(font-lock-bracket-face              ((t (:foreground ,sxxx-fg))))
   `(font-lock-builtin-face              ((t (:foreground ,sxxx-pink))))
   `(font-lock-comment-delimiter-face    ((t (:foreground ,sxxx-gray))))
   `(font-lock-comment-face              ((t (:foreground ,sxxx-gray))))
   `(font-lock-constant-face             ((t (:foreground ,sxxx-pink))))
   `(font-lock-delimiter-face            ((t (:foreground ,sxxx-fg))))
   `(font-lock-doc-face                  ((t (:foreground ,sxxx-pink))))
   `(font-lock-doc-markup-face           ((t (:foreground ,sxxx-pink))))
   `(font-lock-escape-face               ((t (:foreground ,sxxx-fg))))
   ;`(font-lock-fixme-face                ((t (:foreground "#"))))
   `(font-lock-function-call-face        ((t (:foreground ,sxxx-brown))))
   `(font-lock-function-name-face        ((t (:foreground ,sxxx-brown))))
   `(font-lock-keyword-face              ((t (:foreground ,sxxx-pink))))
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
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,sxxx-purple))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,sxxx-purple))))
   `(font-lock-string-face               ((t (:foreground ,sxxx-brown))))
   `(font-lock-type-face                 ((t (:foreground ,sxxx-pink))))
   `(font-lock-variable-name-face        ((t (:foreground ,sxxx-fg))))
   `(font-lock-variable-use-face         ((t (:foreground ,sxxx-fg))))
   `(font-lock-warning-face              ((t (:foreground ,sxxx-pink))))
   
   ;; line number --------------
   ;; //////////////////////////////////
   `(line-number              ((t (:foreground ,sxxx-gray))))
   `(line-number-current-line ((t (:foreground ,sxxx-fg))))
   
   ;; mode line ----------------
   ;; //////////////////////////////////
   `(mode-line           ((t ,(list :background sxxx-fg :foreground sxxx-bg))))
   `(mode-line-emphasis  ((t ,(list :foreground sxxx-pink))))
   `(mode-line-highlight ((t ,(list :background sxxx-pink :foreground sxxx-bg))))
   `(mode-line-inactive  ((t ,(list :background sxxx-bg :foreground sxxx-fg))))

   ;; hl-line ------------------
   ;; //////////////////////////////////
   ;`(hl-line ((t (:background ,sxxx-bg))))
   `(hl-line ((t (:background ,sxxx-black))))

   ;; plugins ------------------
   ;; //////////////////////////////////
   ;; completion
   `(completions-annotations ((t (:inherit 'shadow))))
   `(completions-highlight ((t (:foreground ,sxxx-bg :background ,sxxx-fg))))
   `(ffap ((t (:foreground ,sxxx-bg :background ,sxxx-fg))))
   
   ;; isearch
   `(isearch ((t (:foreground ,sxxx-bg :background ,sxxx-fg :weight normal))))
   `(isearch-fail ((t (:foreground ,sxxx-bg :background ,sxxx-slime :bold t))))

   ;; pulse
   `(pulse-highlight-start-face ((t (:background ,sxxx-white))))
   
   ;; dired
   `(warning ((t (:background nil :foreground ,sxxx-purple))))
   
   ;;; show paren
   `(show-paren-match ((t (:background ,sxxx-fg :foreground ,sxxx-bg))))
   `(show-paren-match-expression ((t (:background ,sxxx-fg :foreground ,sxxx-bg))))
   `(show-paren-mismatch ((t (:background ,sxxx-purple :foreground ,sxxx-bg))))
   
   ;; tree-sitter
   ;; //////////////////////////////////
   `(tree-sitter-hl-face:embedded      ((t (:foreground ,sxxx-fg))))
   `(tree-sitter-hl-face:function.call ((t (:foreground ,sxxx-brown :italic nil))))
   `(tree-sitter-hl-face:type          ((t (:foreground ,sxxx-pink))))
   `(tree-sitter-hl-face:variable      ((t (:foreground ,sxxx-fg))))
   `(tree-sitter-hl-face:number        ((t (:foreground ,sxxx-fg))))
   `(tree-sitter-hl-face:operator      ((t (:foreground ,sxxx-fg))))
   `(tree-sitter-hl-face:property      ((t (:foreground ,sxxx-fg :italic nil))))
   `(tree-sitter-hl-face:punctuation   ((t (:foreground ,sxxx-fg))))
   
   ;; ivy
   `(ivy-minibuffer-match-face-1 ((t (:background nil :foreground ,nil))))
   `(ivy-minibuffer-match-face-2 ((t (:background ,sxxx-pink :foreground ,sxxx-black))))
   `(ivy-minibuffer-match-face-3 ((t (:background ,sxxx-pink :foreground ,sxxx-black))))
   `(ivy-minibuffer-match-face-4 ((t (:background ,sxxx-pink :foreground ,sxxx-black))))
   `(ivy-current-match ((t (:background ,sxxx-fg :foreground ,sxxx-black))))
   `(ivy-prompt-match ((t (:background ,sxxx-fg :foreground ,sxxx-black))))

   ;; swiper
   `(swiper-background-match-face-1 ((t (:background ,nil :foreground ,nil))))
   `(swiper-background-match-face-2 ((t (:background ,sxxx-pink :foreground ,sxxx-black))))
   `(swiper-background-match-face-3 ((t (:background ,sxxx-pink :foreground ,sxxx-black))))
   `(swiper-background-match-face-4 ((t (:background ,sxxx-pink :foreground ,sxxx-black))))

   `(swiper-match-face-1 ((t (:background ,nil :foreground ,nil))))
   `(swiper-match-face-2 ((t (:background ,sxxx-pink :foreground ,sxxx-black))))
   `(swiper-match-face-3 ((t (:background ,sxxx-pink :foreground ,sxxx-black))))
   `(swiper-match-face-4 ((t (:background ,sxxx-pink :foreground ,sxxx-black))))
      
   `(mouse-drag-and-drop-region ((t ,(list :background sxxx-fg :foreground sxxx-green))))
   `(next-error ((t ,(list :background sxxx-fg :foreground sxxx-green))))
   
   `(match ((t ,(list :background sxxx-pink :foreground sxxx-green))))
   
   ;;;
   `(help-key-binding          ((t ,(list :background sxxx-fg :foreground sxxx-black))))
   `(read-multiple-choice-face ((t ,(list :background sxxx-fg :foreground sxxx-black))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide 'excalibur-pink)
