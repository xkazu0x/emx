(deftheme kaliburn "KALIBURN")

(let ((kl-bg      "#000000")
      (kl-fg      "#c1c1c1")
      (kl-func    "#888888")
      (kl-main    "#999999")
      (kl-type    "#626b67")
      ;;(kl-type    "#79241f")
      (kl-comment "#444444")
      (kl-string  "#a5aaa7")
      (kl-line    "#111111")
      
      (kl-white   "#FFFFFF")
      (kl-black   "#000000"))
  
  (custom-theme-set-variables
   'kaliburn
   '(frame-background-mode (quote dark)))
  
  (custom-theme-set-faces
   'kaliburn

   ;; //////////////////////////
   ;; default colors -----------
   `(default           ((t (:background ,kl-bg :foreground ,kl-fg))))
   `(border            ((t (:background ,kl-fg :foreground ,kl-bg))))
   `(region            ((t (:background ,kl-fg :foreground ,kl-bg))))
   `(fringe            ((t (:background ,kl-bg :foreground ,kl-bg))))
   `(highlight         ((t (:background ,kl-fg :foreground ,kl-bg))))
   `(cursor            ((t (:background ,kl-fg))))
   `(vertical-border   ((t (:foreground ,kl-fg))))
   `(minibuffer-prompt ((t (:foreground ,kl-main))))

   `(browse-url-button ((t (:foreground ,kl-fg :underline t))))
   `(button            ((t (:foreground ,kl-fg :underline t))))
   `(elisp-shorthand-font-lock-face ((t (:foreground ,kl-fg :underline t))))
   `(info-header-xref  ((t (:foreground ,kl-fg :underline t))))
   `(info-xref         ((t (:foreground ,kl-fg :underline t))))
   
   `(link              ((t (:foreground ,kl-fg :underline t))))
   `(link-visited      ((t (:foreground ,kl-main :underline t))))
   
   `(mouse-drag-and-drop-region ((t ,(list :background kl-fg :foreground kl-line))))
   `(next-error                 ((t ,(list :background kl-fg :foreground kl-line))))
   
   `(match ((t ,(list :background kl-main :foreground kl-line))))
   
   `(help-key-binding          ((t ,(list :background kl-main :foreground kl-bg))))
   `(read-multiple-choice-face ((t ,(list :background kl-main :foreground kl-bg))))

   ;; //////////////////////////
   ;; compilation --------------
   `(compilation-column-number ((t (:foreground ,kl-fg))))
   `(compilation-line-number   ((t (:foreground ,kl-fg))))
   
   `(compilation-error   ((t (:foreground ,kl-type))))
   `(compilation-warning ((t (:foreground ,kl-comment))))
   `(compilation-info    ((t (:foreground ,kl-string))))
   
   `(compilation-mode-line-fail ((t (:foreground ,kl-type))))
   `(compilation-mode-line-exit ((t (:foreground ,kl-comment))))
   `(compilation-mode-line-run  ((t (:foreground ,kl-string))))

   ;; //////////////////////////
   ;; mode line ----------------
   `(mode-line           ((t ,(list :background kl-fg     :foreground kl-bg))))
   `(mode-line-inactive  ((t ,(list :background kl-bg     :foreground kl-fg))))
   `(mode-line-highlight ((t ,(list :background kl-main   :foreground kl-bg))))
  
   `(header-line ((t (:background ,kl-black :foreground ,kl-fg))))
   `(completions-annotations ((t (:foreground ,kl-main))))

   ;; //////////////////////////
   ;; line number --------------
   `(line-number              ((t (:background ,kl-bg :foreground ,kl-main))))
   `(line-number-current-line ((t (:background ,kl-bg :foreground ,kl-fg))))

   ;; //////////////////////////
   ;; hl-line ------------------
   `(hl-line        ((t (:background ,kl-line))))
   `(lazy-highlight ((t (:background ,kl-main :foreground ,kl-bg))))

   ;; //////////////////////////
   ;; font lock faces ----------
   `(font-lock-bracket-face              ((t (:foreground ,kl-fg))))
   `(font-lock-builtin-face              ((t (:foreground ,kl-main))))
   `(font-lock-comment-delimiter-face    ((t (:foreground ,kl-comment))))
   `(font-lock-comment-face              ((t (:foreground ,kl-comment))))
   `(font-lock-constant-face             ((t (:foreground ,kl-main))))
   `(font-lock-delimiter-face            ((t (:foreground ,kl-fg))))
   `(font-lock-doc-face                  ((t (:foreground ,kl-main))))
   `(font-lock-doc-markup-face           ((t (:foreground ,kl-main))))
   `(font-lock-escape-face               ((t (:foreground ,kl-fg))))
   ;;`(font-lock-fixme-face                ((t (:foreground "#"))))
   `(font-lock-function-call-face        ((t (:foreground ,kl-func))))
   `(font-lock-function-name-face        ((t (:foreground ,kl-func))))
   ;;`(font-lock-keyword-face              ((t (:foreground ,kl-main :bold nil))))
   `(font-lock-keyword-face              ((t (:foreground ,kl-type :bold nil))))
   `(font-lock-misc-punctuation-face     ((t (:foreground ,kl-fg))))
   `(font-lock-negation-char-face        ((t (:foreground ,kl-fg))))
   ;;`(font-lock-note-face                 ((t (:foreground "#"))))
   `(font-lock-number-face               ((t (:foreground ,kl-fg))))
   `(font-lock-operator-face             ((t (:foreground ,kl-fg))))
   `(font-lock-preprocessor-face         ((t (:foreground ,kl-func))))
   `(font-lock-property-name-face        ((t (:foreground ,kl-fg))))
   `(font-lock-property-use-face         ((t (:foreground ,kl-fg))))
   `(font-lock-punctuation-face          ((t (:foreground ,kl-fg))))
   `(font-lock-regexp-face               ((t (:foreground ,kl-fg))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,kl-fg))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,kl-fg))))
   `(font-lock-string-face               ((t (:foreground ,kl-string))))
   `(font-lock-type-face                 ((t (:foreground ,kl-type :bold nil))))
   `(font-lock-variable-name-face        ((t (:foreground ,kl-fg))))
   `(font-lock-variable-use-face         ((t (:foreground ,kl-fg))))
   `(font-lock-warning-face              ((t (:foreground ,kl-main))))

   ;; //////////////////////////
   ;; plugins ------------------
   ;; ++ completion ------------
   `(completions-annotations ((t (:inherit 'shadow))))
   `(completions-highlight   ((t (:foreground ,kl-bg :background ,kl-fg))))
   `(ffap                    ((t (:foreground ,kl-bg :background ,kl-fg))))
   
   ;; ++ isearch ---------------
   `(isearch      ((t (:foreground ,kl-bg :background ,kl-fg :weight normal))))
   `(isearch-fail ((t (:foreground ,kl-bg :background ,kl-main :bold t))))

   ;; ++ pulse -----------------
   `(pulse-highlight-start-face ((t (:background ,kl-white))))
   
   ;; ++ dired -----------------
   `(warning ((t (:background nil :foreground ,kl-type))))
   
   ;; ++ show paren ------------
   `(show-paren-match            ((t (:background ,kl-main :foreground ,kl-bg))))
   `(show-paren-match-expression ((t (:background ,kl-main :foreground ,kl-bg))))
   `(show-paren-mismatch         ((t (:background ,kl-type :foreground ,kl-bg))))
   
   ;; ++ tree-sitter -----------
   `(tree-sitter-hl-face:embedded      ((t (:foreground ,kl-main))))
   `(tree-sitter-hl-face:function.call ((t (:foreground ,kl-func :italic nil))))
   `(tree-sitter-hl-face:type          ((t (:foreground ,kl-type))))
   `(tree-sitter-hl-face:variable      ((t (:foreground ,kl-fg))))
   `(tree-sitter-hl-face:number        ((t (:foreground ,kl-string))))
   `(tree-sitter-hl-face:operator      ((t (:foreground ,kl-fg))))
   `(tree-sitter-hl-face:property      ((t (:foreground ,kl-fg :italic nil))))
   `(tree-sitter-hl-face:punctuation   ((t (:foreground ,kl-fg))))
   
   ;; ++ ivy -------------------
   `(ivy-completions-annotations ((t (:foreground ,kl-black))))
   `(ivy-minibuffer-match-face-1 ((t (:background nil :foreground ,nil))))
   `(ivy-minibuffer-match-face-2 ((t (:background ,kl-main :foreground ,kl-black))))
   `(ivy-minibuffer-match-face-3 ((t (:background ,kl-main :foreground ,kl-black))))
   `(ivy-minibuffer-match-face-4 ((t (:background ,kl-main :foreground ,kl-black))))
   `(ivy-current-match ((t (:background ,kl-line :foreground ,nil))))
   `(ivy-prompt-match  ((t (:background ,kl-line :foreground ,nil))))
   
   ;; ++ swiper ----------------
   `(swiper-background-match-face-1 ((t (:background ,nil :foreground ,nil))))
   `(swiper-background-match-face-2 ((t (:background ,kl-main :foreground ,kl-black))))
   `(swiper-background-match-face-3 ((t (:background ,kl-main :foreground ,kl-black))))
   `(swiper-background-match-face-4 ((t (:background ,kl-main :foreground ,kl-black))))

   `(swiper-match-face-1 ((t (:background ,nil :foreground ,nil))))
   `(swiper-match-face-2 ((t (:background ,kl-main :foreground ,kl-black))))
   `(swiper-match-face-3 ((t (:background ,kl-main :foreground ,kl-black))))
   `(swiper-match-face-4 ((t (:background ,kl-main :foreground ,kl-black))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide 'kaliburn)
