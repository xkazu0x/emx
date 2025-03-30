(deftheme excalibur-green "EXCALIBUR")

(let ((ex-bg      "#1c1b17")
      (ex-fg      "#BAB5A1")
      (ex-line    "#2a2822")
      
      (ex-white   "#FFFFFF")
      (ex-black   "#000000")
      (ex-gray    "#898776")
      
      (ex-brown   "#7e7567")
      ;(ex-green   "#cec74d")
      (ex-green   "#c6c053")
      (ex-yellow  "#baa35e"))
  
  (custom-theme-set-variables
   'excalibur-green
   '(frame-background-mode (quote dark)))
  
  (custom-theme-set-faces
   'excalibur-green

   ;; //////////////////////////
   ;; default colors -----------
   `(default           ((t (:background ,ex-bg :foreground ,ex-fg))))
   `(border            ((t (:background ,ex-fg :foreground ,ex-bg))))
   `(region            ((t (:background ,ex-fg :foreground ,ex-bg))))
   `(fringe            ((t (:background ,ex-bg :foreground ,ex-bg))))
   `(highlight         ((t (:background ,ex-fg :foreground ,ex-bg))))
   `(cursor            ((t (:background ,ex-green))))
   `(vertical-border   ((t (:foreground ,ex-line))))
   `(minibuffer-prompt ((t (:foreground ,ex-green))))

   `(browse-url-button ((t (:foreground ,ex-fg :underline t))))
   `(button            ((t (:foreground ,ex-fg :underline t))))
   `(elisp-shorthand-font-lock-face ((t (:foreground ,ex-fg :underline t))))
   `(info-header-xref  ((t (:foreground ,ex-fg :underline t))))
   `(info-xref         ((t (:foreground ,ex-fg :underline t))))
   
   `(link              ((t (:foreground ,ex-fg :underline t))))
   `(link-visited      ((t (:foreground ,ex-green :underline t))))
   
   `(mouse-drag-and-drop-region ((t ,(list :background ex-fg :foreground ex-line))))
   `(next-error                 ((t ,(list :background ex-fg :foreground ex-line))))
   
   `(match ((t ,(list :background ex-green :foreground ex-line))))
   
   `(help-key-binding          ((t ,(list :background ex-green :foreground ex-bg))))
   `(read-multiple-choice-face ((t ,(list :background ex-green :foreground ex-bg))))

   ;; //////////////////////////
   ;; compilation --------------
   `(compilation-column-number ((t (:foreground ,ex-fg))))
   `(compilation-line-number   ((t (:foreground ,ex-fg))))
   
   `(compilation-error   ((t (:foreground ,ex-yellow))))
   `(compilation-warning ((t (:foreground ,ex-gray))))
   `(compilation-info    ((t (:foreground ,ex-green))))
   
   `(compilation-mode-line-fail ((t (:foreground ,ex-gray))))
   `(compilation-mode-line-exit ((t (:foreground ,ex-gray))))
   `(compilation-mode-line-run  ((t (:foreground ,ex-green))))

   ;; //////////////////////////
   ;; mode line ----------------
   `(mode-line           ((t ,(list :background ex-fg     :foreground ex-bg))))
   `(mode-line-highlight ((t ,(list :background ex-green :foreground ex-bg))))
   `(mode-line-inactive  ((t ,(list :background ex-line   :foreground ex-fg))))
  
   `(header-line ((t (:background ,ex-black :foreground ,ex-fg))))
   `(completions-annotations ((t (:foreground ,ex-gray))))

   ;; //////////////////////////
   ;; line number --------------
   `(line-number              ((t (:background ,ex-bg :foreground ,ex-gray))))
   `(line-number-current-line ((t (:background ,ex-bg :foreground ,ex-fg))))

   ;; //////////////////////////
   ;; hl-line ------------------
   `(hl-line        ((t (:background ,ex-line))))
   `(lazy-highlight ((t (:background ,ex-green :foreground ,ex-bg))))

   ;; //////////////////////////
   ;; font lock faces ----------
   `(font-lock-bracket-face              ((t (:foreground ,ex-fg))))
   `(font-lock-builtin-face              ((t (:foreground ,ex-green))))
   `(font-lock-comment-delimiter-face    ((t (:foreground ,ex-gray))))
   `(font-lock-comment-face              ((t (:foreground ,ex-gray))))
   `(font-lock-constant-face             ((t (:foreground ,ex-green))))
   `(font-lock-delimiter-face            ((t (:foreground ,ex-fg))))
   `(font-lock-doc-face                  ((t (:foreground ,ex-green))))
   `(font-lock-doc-markup-face           ((t (:foreground ,ex-green))))
   `(font-lock-escape-face               ((t (:foreground ,ex-fg))))
   ;`(font-lock-fixme-face                ((t (:foreground "#"))))
   `(font-lock-function-call-face        ((t (:foreground ,ex-gray))))
   `(font-lock-function-name-face        ((t (:foreground ,ex-gray))))
   `(font-lock-keyword-face              ((t (:foreground ,ex-green))))
   `(font-lock-misc-punctuation-face     ((t (:foreground ,ex-fg))))
   `(font-lock-negation-char-face        ((t (:foreground ,ex-fg))))
   ;`(font-lock-note-face                 ((t (:foreground "#"))))
   `(font-lock-number-face               ((t (:foreground ,ex-fg))))
   `(font-lock-operator-face             ((t (:foreground ,ex-fg))))
   `(font-lock-preprocessor-face         ((t (:foreground ,ex-gray))))
   `(font-lock-property-name-face        ((t (:foreground ,ex-fg))))
   `(font-lock-property-use-face         ((t (:foreground ,ex-fg))))
   `(font-lock-punctuation-face          ((t (:foreground ,ex-fg))))
   `(font-lock-regexp-face               ((t (:foreground ,ex-fg))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,ex-fg))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,ex-fg))))
   `(font-lock-string-face               ((t (:foreground ,ex-brown))))
   `(font-lock-type-face                 ((t (:foreground ,ex-green))))
   `(font-lock-variable-name-face        ((t (:foreground ,ex-fg))))
   `(font-lock-variable-use-face         ((t (:foreground ,ex-fg))))
   `(font-lock-warning-face              ((t (:foreground ,ex-green))))

   ;; //////////////////////////
   ;; plugins ------------------
   ;; ++ completion ------------
   `(completions-annotations ((t (:inherit 'shadow))))
   `(completions-highlight   ((t (:foreground ,ex-bg :background ,ex-fg))))
   `(ffap                    ((t (:foreground ,ex-bg :background ,ex-fg))))
   
   ;; ++ isearch ---------------
   `(isearch      ((t (:foreground ,ex-bg :background ,ex-fg :weight normal))))
   `(isearch-fail ((t (:foreground ,ex-bg :background ,ex-green :bold t))))

   ;; ++ pulse -----------------
   `(pulse-highlight-start-face ((t (:background ,ex-white))))
   
   ;; ++ dired -----------------
   `(warning ((t (:background nil :foreground ,ex-yellow))))
   
   ;; ++ show paren ------------
   `(show-paren-match            ((t (:background ,ex-fg :foreground ,ex-bg))))
   `(show-paren-match-expression ((t (:background ,ex-fg :foreground ,ex-bg))))
   `(show-paren-mismatch         ((t (:background ,ex-yellow :foreground ,ex-bg))))
   
   ;; ++ tree-sitter -----------
   `(tree-sitter-hl-face:embedded      ((t (:foreground ,ex-fg))))
   `(tree-sitter-hl-face:function.call ((t (:foreground ,ex-gray :italic nil))))
   `(tree-sitter-hl-face:type          ((t (:foreground ,ex-green))))
   `(tree-sitter-hl-face:variable      ((t (:foreground ,ex-fg))))
   `(tree-sitter-hl-face:number        ((t (:foreground ,ex-fg))))
   `(tree-sitter-hl-face:operator      ((t (:foreground ,ex-fg))))
   `(tree-sitter-hl-face:property      ((t (:foreground ,ex-fg :italic nil))))
   `(tree-sitter-hl-face:punctuation   ((t (:foreground ,ex-fg))))
   
   ;; ++ ivy -------------------
   `(ivy-completions-annotations ((t (:foreground ,ex-black))))
   `(ivy-minibuffer-match-face-1 ((t (:background nil :foreground ,nil))))
   `(ivy-minibuffer-match-face-2 ((t (:background ,ex-green :foreground ,ex-black))))
   `(ivy-minibuffer-match-face-3 ((t (:background ,ex-green :foreground ,ex-black))))
   `(ivy-minibuffer-match-face-4 ((t (:background ,ex-green :foreground ,ex-black))))
   `(ivy-current-match ((t (:background ,ex-fg :foreground ,ex-black))))
   `(ivy-prompt-match  ((t (:background ,ex-fg :foreground ,ex-black))))
   
   ;; ++ swiper ----------------
   `(swiper-background-match-face-1 ((t (:background ,nil :foreground ,nil))))
   `(swiper-background-match-face-2 ((t (:background ,ex-green :foreground ,ex-black))))
   `(swiper-background-match-face-3 ((t (:background ,ex-green :foreground ,ex-black))))
   `(swiper-background-match-face-4 ((t (:background ,ex-green :foreground ,ex-black))))

   `(swiper-match-face-1 ((t (:background ,nil :foreground ,nil))))
   `(swiper-match-face-2 ((t (:background ,ex-green :foreground ,ex-black))))
   `(swiper-match-face-3 ((t (:background ,ex-green :foreground ,ex-black))))
   `(swiper-match-face-4 ((t (:background ,ex-green :foreground ,ex-black))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide 'excalibur-green)
