(deftheme sxxx-pink
  "SUIXIDE SEXXX")

(let ((suixide-white       "#FFFFFF")
      (suixide-black       "#000000")
      (suixide-gray        "#7F7F7F")
      (suixide-gray-dark   "#171717")
      (suixide-gray-darker "#101010")

      (sxxx-fg "#bab5a1")
      (sxxx-bg "#161817")
      (sxxx-pink "#ce4d75")
      (sxxx-green "#232a27")
      (sxxx-slime "#b6ce4d")
      (sxxx-bberry "#654dce")
      (sxxx-gray "#898776")
      (sxxx-brown "#877861")
      )
  (custom-theme-set-variables
   'sxxx-pink
   '(frame-background-mode (quote dark)))

  (custom-theme-set-faces
   'sxxx-pink

   ;; basic faces
   `(border ((t ,(list :background sxxx-fg
		       :foreground sxxx-green))))
   `(cursor ((t ,(list :background sxxx-pink))))
   `(default ((t ,(list :foreground sxxx-fg
                        :background sxxx-bg))))
   `(fringe ((t ,(list :background nil
		       :foreground sxxx-green))))
   `(vertical-border ((t ,(list :foreground sxxx-green))))
   `(minibuffer-prompt ((t (:foreground ,sxxx-pink))))

   ;; completion
   `(completions-annotations ((t (:inherit 'shadow))))
   `(completions-highlight ((t (:foreground ,sxxx-bg :background ,sxxx-fg))))
   `(ffap ((t (:foreground ,sxxx-bg :background ,sxxx-fg))))
   `(highlight ((t (:foreground ,sxxx-bg :background ,sxxx-fg))))
   
   ;; isearch
   `(isearch ((t (:foreground ,sxxx-bg :background ,sxxx-fg :weight normal))))
   `(isearch-fail ((t (:foreground ,sxxx-bg :background ,sxxx-bberry :bold t))))

   ;; pulse
   `(pulse-highlight-start-face ((t (:background ,suixide-white))))
   
   ;; font lock
   `(font-lock-builtin-face ((t (:foreground ,sxxx-pink))))
   `(font-lock-comment-face ((t (:foreground ,sxxx-gray))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,sxxx-gray))))
   `(font-lock-constant-face ((t (:foreground ,sxxx-brown))))
   ;`(font-lock-doc-face ((t (:foreground ,sxxx-slime))))
   `(font-lock-doc-face ((t (:foreground ,sxxx-pink))))
   `(font-lock-function-name-face ((t (:foreground ,sxxx-gray))))
   `(font-lock-keyword-face ((t (:foreground ,sxxx-pink :bold nil))))
   `(font-lock-negation-char-face ((t (:foreground ,sxxx-gray))))
   `(font-lock-preprocessor-face ((t (:foreground ,sxxx-gray))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,suixide-white))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,suixide-white))))   
   `(font-lock-string-face ((t (:foreground ,sxxx-brown))))
   `(font-lock-type-face ((t (:foreground ,sxxx-pink))))
   `(font-lock-variable-name-face ((t (:foreground ,sxxx-fg))))
   `(font-lock-warning-face ((t (:foreground ,sxxx-brown))))

   ;; dired
   `(warning ((t (:background nil :foreground ,sxxx-pink))))
   
   ;;; show paren
   `(show-paren-match ((t (:background ,sxxx-fg :foreground ,sxxx-bg))))
   `(show-paren-match-expression ((t (:background ,sxxx-fg :foreground ,sxxx-bg))))
   `(show-paren-mismatch ((t (:background ,sxxx-bberry :foreground ,sxxx-bg))))
   
   ;; ivy
   `(ivy-minibuffer-match-face-1 ((t (:background nil :foreground ,nil))))
   `(ivy-minibuffer-match-face-2 ((t (:background ,suixide-gray :foreground ,suixide-black))))
   `(ivy-minibuffer-match-face-3 ((t (:background ,suixide-blue :foreground ,suixide-black))))
   `(ivy-minibuffer-match-face-4 ((t (:background ,suixide-rose-dark :foreground ,suixide-black))))
   `(ivy-current-match ((t (:background ,suixide-white :foreground ,suixide-black))))
   `(ivy-prompt-match ((t (:background ,suixide-white :foreground ,suixide-black))))

   ;; swiper
   `(swiper-background-match-face-1 ((t (:background ,nil :foreground ,nil))))
   `(swiper-background-match-face-2 ((t (:background ,suixide-gray :foreground ,suixide-black))))
   `(swiper-background-match-face-3 ((t (:background ,suixide-blue :foreground ,suixide-black))))
   `(swiper-background-match-face-4 ((t (:background ,suixide-rose-dark :foreground ,suixide-black))))

   `(swiper-match-face-1 ((t (:background ,nil :foreground ,nil))))
   `(swiper-match-face-2 ((t (:background ,suixide-gray :foreground ,suixide-black))))
   `(swiper-match-face-3 ((t (:background ,suixide-blue :foreground ,suixide-black))))
   `(swiper-match-face-4 ((t (:background ,suixide-rose-dark :foreground ,suixide-black))))
   
   ;; tree-sitter
   `(tree-sitter-hl-face:embedded ((t (:foreground ,sxxx-fg))))
   `(tree-sitter-hl-face:function.call ((t (:foreground ,sxxx-gray :italic nil))))
   `(tree-sitter-hl-face:type ((t (:foreground ,sxxx-pink))))
   `(tree-sitter-hl-face:variable ((t (:foreground ,sxxx-fg))))
   `(tree-sitter-hl-face:number ((t (:foreground ,sxxx-fg))))
   `(tree-sitter-hl-face:operator ((t (:foreground ,sxxx-fg))))
   `(tree-sitter-hl-face:property ((t (:italic nil))))
   `(tree-sitter-hl-face:punctuation ((t (:foreground ,sxxx-fg))))
   
   ;; line highlighting
   `(hl-line ((t (:background ,sxxx-green))))
   
   `(mouse-drag-and-drop-region ((t ,(list :background sxxx-fg :foreground sxxx-green))))
   `(next-error ((t ,(list :background sxxx-fg :foreground sxxx-green))))
   
   `(region ((t ,(list :background sxxx-fg :foreground sxxx-green))))
   `(match ((t ,(list :background sxxx-pink :foreground sxxx-green))))
   
   ;; line numbers
   `(line-number ((t (:inherit default :foreground ,sxxx-gray))))
   `(line-number-current-line ((t (:inherit line-number :foreground ,sxxx-fg))))
   
   ;; mode line
   `(mode-line ((t ,(list :background sxxx-fg :foreground sxxx-green))))
   `(mode-line-emphasis ((t ,(list :foreground sxxx-pink))))
   `(mode-line-highlight ((t ,(list :background sxxx-pink
				    :foreground sxxx-bg))))
   `(mode-line-inactive ((t ,(list :background sxxx-green
                                   :foreground sxxx-fg))))

   ;;;
   `(help-key-binding ((t ,(list :background sxxx-pink :foreground sxxx-fg))))   
   `(read-multiple-choice-face ((t ,(list :background sxxx-pink :foreground sxxx-fg))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide 'sxxx-pink)
