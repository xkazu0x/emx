(deftheme excalibur-pink "EXCALIBUR")

(let ((ex-bg      "#141516")
      (ex-fg      "#BAB5A1")
      (ex-line    "#242628")
      
      (ex-white   "#FFFFFF")
      (ex-black   "#000000")
      (ex-gray    "#5D6362")

      (ex-brown   "#78766d")
      (ex-pink    "#ce4d75")
      (ex-green   "#b6ce4d")
      (ex-purple  "#654dce")
      
      ;;(ex-green1  "#8cde94")
      ;;(ex-green2  "#062329")
      ;;(ex-green3  "#126367")
      )
  
  (custom-theme-set-variables
   'excalibur-pink
   '(frame-background-mode (quote dark)))

  (custom-theme-set-faces
   'excalibur-pink

   ;; default colors -----------
   ;; //////////////////////////
   `(default           ((t (:background ,ex-bg :foreground ,ex-fg))))
   `(region            ((t (:background ,ex-fg    :foreground ,ex-bg))))
   `(border            ((t (:background ,ex-fg    :foreground ,ex-bg))))
   `(fringe            ((t (:background ,ex-bg :foreground ,ex-bg))))
   `(cursor            ((t (:background ,ex-pink))))
   `(highlight         ((t (:background ,ex-bg))))
   `(vertical-border   ((t (:foreground ,ex-line))))
   `(minibuffer-prompt ((t (:foreground ,ex-pink))))

   ;; compilation --------------
   ;; //////////////////////////
   `(compilation-column-number ((t (:foreground ,ex-brown))))
   `(compilation-line-number   ((t (:foreground ,ex-brown))))
   
   `(compilation-error   ((t (:foreground ,ex-pink))))
   `(compilation-warning ((t (:foreground ,ex-brown))))
   `(compilation-info    ((t (:foreground ,ex-green))))
   
   `(compilation-mode-line-fail ((t (:foreground ,ex-pink))))
   `(compilation-mode-line-exit ((t (:foreground ,ex-brown))))
   `(compilation-mode-line-run  ((t (:foreground ,ex-green))))
   
   ;; font lock faces ----------
   ;; //////////////////////////
   `(font-lock-bracket-face              ((t (:foreground ,ex-fg))))
   `(font-lock-builtin-face              ((t (:foreground ,ex-pink))))
   `(font-lock-comment-delimiter-face    ((t (:foreground ,ex-gray))))
   `(font-lock-comment-face              ((t (:foreground ,ex-gray))))
   `(font-lock-constant-face             ((t (:foreground ,ex-pink))))
   `(font-lock-delimiter-face            ((t (:foreground ,ex-fg))))
   `(font-lock-doc-face                  ((t (:foreground ,ex-pink))))
   `(font-lock-doc-markup-face           ((t (:foreground ,ex-pink))))
   `(font-lock-escape-face               ((t (:foreground ,ex-fg))))
   ;`(font-lock-fixme-face                ((t (:foreground "#"))))
   `(font-lock-function-call-face        ((t (:foreground ,ex-brown))))
   `(font-lock-function-name-face        ((t (:foreground ,ex-brown))))
   `(font-lock-keyword-face              ((t (:foreground ,ex-pink))))
   `(font-lock-misc-punctuation-face     ((t (:foreground ,ex-fg))))
   `(font-lock-negation-char-face        ((t (:foreground ,ex-fg))))
   ;`(font-lock-note-face                 ((t (:foreground "#"))))
   `(font-lock-number-face               ((t (:foreground ,ex-fg))))
   `(font-lock-operator-face             ((t (:foreground ,ex-fg))))
   `(font-lock-preprocessor-face         ((t (:foreground ,ex-gray))))
   `(font-lock-property-name-face        ((t (:foreground ,ex-fg))))
   `(font-lock-property-use-face         ((t (:foreground ,ex-fg))))
   `(font-lock-punctuation-face          ((t (:foreground ,ex-fg))))
   `(font-lock-regexp-face               ((t (:foreground ,ex-white))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,ex-white))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,ex-white))))
   `(font-lock-string-face               ((t (:foreground ,ex-brown))))
   `(font-lock-type-face                 ((t (:foreground ,ex-pink))))
   `(font-lock-variable-name-face        ((t (:foreground ,ex-fg))))
   `(font-lock-variable-use-face         ((t (:foreground ,ex-fg))))
   `(font-lock-warning-face              ((t (:foreground ,ex-pink))))
   
   ;; line number --------------
   ;; //////////////////////////
   `(line-number              ((t (:foreground ,ex-gray))))
   `(line-number-current-line ((t (:foreground ,ex-fg))))
   
   ;; mode line ----------------
   ;; //////////////////////////
   `(mode-line           ((t ,(list :background ex-fg :foreground ex-bg))))
   `(mode-line-emphasis  ((t ,(list :foreground ex-pink))))
   `(mode-line-highlight ((t ,(list :background ex-pink :foreground ex-bg))))
   `(mode-line-inactive  ((t ,(list :background ex-bg :foreground ex-fg))))

   ;; hl-line ------------------
   ;; //////////////////////////
   `(hl-line ((t (:background ,ex-line))))
   
   ;; plugins ------------------
   ;; //////////////////////////
   ;; ++ completion ----
   `(completions-annotations ((t (:inherit 'shadow))))
   `(completions-highlight ((t (:foreground ,ex-bg :background ,ex-fg))))
   `(ffap ((t (:foreground ,ex-bg :background ,ex-fg))))
   
   ;; ++ isearch -------
   `(isearch ((t (:foreground ,ex-bg :background ,ex-fg :weight normal))))
   `(isearch-fail ((t (:foreground ,ex-bg :background ,ex-green :bold t))))

   ;; ++ pulse ---------
   `(pulse-highlight-start-face ((t (:background ,ex-white))))
   
   ;; ++ dired ---------
   `(warning ((t (:background nil :foreground ,ex-purple))))
   
   ;; ++ show paren ----
   `(show-paren-match ((t (:background ,ex-fg :foreground ,ex-bg))))
   `(show-paren-match-expression ((t (:background ,ex-fg :foreground ,ex-bg))))
   `(show-paren-mismatch ((t (:background ,ex-purple :foreground ,ex-bg))))
   
   ;; ++ tree-sitter ---
   `(tree-sitter-hl-face:embedded      ((t (:foreground ,ex-fg))))
   `(tree-sitter-hl-face:function.call ((t (:foreground ,ex-brown :italic nil))))
   `(tree-sitter-hl-face:type          ((t (:foreground ,ex-pink))))
   `(tree-sitter-hl-face:variable      ((t (:foreground ,ex-fg))))
   `(tree-sitter-hl-face:number        ((t (:foreground ,ex-fg))))
   `(tree-sitter-hl-face:operator      ((t (:foreground ,ex-fg))))
   `(tree-sitter-hl-face:property      ((t (:foreground ,ex-fg :italic nil))))
   `(tree-sitter-hl-face:punctuation   ((t (:foreground ,ex-fg))))
   
   ;; ++ ivy -----------
   `(ivy-minibuffer-match-face-1 ((t (:background nil :foreground ,nil))))
   `(ivy-minibuffer-match-face-2 ((t (:background ,ex-pink :foreground ,ex-black))))
   `(ivy-minibuffer-match-face-3 ((t (:background ,ex-pink :foreground ,ex-black))))
   `(ivy-minibuffer-match-face-4 ((t (:background ,ex-pink :foreground ,ex-black))))
   `(ivy-current-match ((t (:background ,ex-fg :foreground ,ex-black))))
   `(ivy-prompt-match ((t (:background ,ex-fg :foreground ,ex-black))))

   ;; ++ swiper --------
   `(swiper-background-match-face-1 ((t (:background ,nil :foreground ,nil))))
   `(swiper-background-match-face-2 ((t (:background ,ex-pink :foreground ,ex-black))))
   `(swiper-background-match-face-3 ((t (:background ,ex-pink :foreground ,ex-black))))
   `(swiper-background-match-face-4 ((t (:background ,ex-pink :foreground ,ex-black))))

   `(swiper-match-face-1 ((t (:background ,nil :foreground ,nil))))
   `(swiper-match-face-2 ((t (:background ,ex-pink :foreground ,ex-black))))
   `(swiper-match-face-3 ((t (:background ,ex-pink :foreground ,ex-black))))
   `(swiper-match-face-4 ((t (:background ,ex-pink :foreground ,ex-black))))
      
   `(mouse-drag-and-drop-region ((t ,(list :background ex-fg :foreground ex-line))))
   `(next-error ((t ,(list :background ex-fg :foreground ex-line))))
   
   `(match ((t ,(list :background ex-pink :foreground ex-line))))
   
   ;;
   `(help-key-binding          ((t ,(list :background ex-black :foreground ex-fg))))
   `(read-multiple-choice-face ((t ,(list :background ex-black :foreground ex-fg))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide 'excalibur-pink)
