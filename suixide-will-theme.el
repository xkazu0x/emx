(deftheme suixide-will
  "SUIXIDE WILL")

(let ((suixide-white       "#FFFFFF")
      (suixide-black       "#000000")
      (suixide-gray        "#7F7F7F")
      (suixide-gray-dark   "#171717")
      (suixide-gray-darker "#101010")
      (suixide-brown       "#878480")
      (suixide-green       "#617676")
      (suixide-blue-dark   "#101020")
      (suixide-rose        "#A88595")
      (suixide-rose-dark   "#61586f")
      (suixide-metal       "#686e73")
      (suixide-paper       "#bcb6ba"))
  (custom-theme-set-variables
   'suixide-will
   '(frame-background-mode (quote dark)))

  (custom-theme-set-faces
   'suixide-will

   ;; basic coloring
   `(border ((t ,(list :background suixide-gray
		       :foreground suixide-gray-dark))))
   `(cursor ((t ,(list :background suixide-white))))
   `(default ((t ,(list :foreground suixide-white
                        :background suixide-black))))
   `(fringe ((t ,(list :background nil
		       :foreground suixide-gray))))
   `(vertical-border ((t ,(list :foreground suixide-gray-darker))))
   `(minibuffer-prompt ((t (:foreground ,suixide-rose-dark))))

   ;; completion
   `(completions-annotations ((t (:inherit 'shadow))))
   
   ;; font lock
   `(font-lock-builtin-face ((t (:foreground ,suixide-rose-dark))))
   `(font-lock-comment-face ((t (:foreground ,suixide-metal))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,suixide-metal))))
   `(font-lock-constant-face ((t (:foreground ,suixide-brown))))
   `(font-lock-doc-face ((t (:foreground ,suixide-gray))))
   `(font-lock-doc-string-face ((t (:foreground ,suixide-gray))))
   `(font-lock-escape-face ((t (:foregound, suixide-white))))
   `(font-lock-function-name-face ((t (:foreground ,suixide-paper))))
   `(font-lock-keyword-face ((t (:foreground ,suixide-green :bold nil))))
   `(font-lock-preprocessor-face ((t (:foreground ,suixide-metal))))
   `(font-lock-reference-face ((t (:foreground ,suixide-gray))))
   `(font-lock-string-face ((t (:foreground ,suixide-brown))))
   `(font-lock-type-face ((t (:foreground ,suixide-green))))
   `(font-lock-variable-name-face ((t (:foreground ,suixide-rose-dark))))
   `(font-lock-warning-face ((t (:foreground ,suixide-rose))))
   `(font-lock-punctuation-face ((t (:foregroun ,suixide-white))))
   
   ;; line highlighting
   `(highlight ((t (:background ,suixide-white :foreground ,suixide-black))))
   `(highlight-current-line-face ((t ,(list :background suixide-blue-dark
                                            :foreground nil))))
   `(hl-line ((t (:background ,suixide-blue-dark))))
   
   ;; line numbers
   `(line-number ((t (:inherit default :foreground ,suixide-gray))))
   `(line-number-current-line ((t (:inherit line-number :foreground ,suixide-white))))
   
   ;; mode line
   `(mode-line ((t ,(list :background suixide-gray-dark
                          :foreground suixide-gray))))
   `(mode-line-buffer-id ((t ,(list :foreground suixide-white :bold t))))
   `(mode-line-emphasis ((t ,(list :foreground suixide-white))))
   `(mode-line-highlight ((t ,(list :background suixide-white
				    :foreground suixide-black))))
   `(mode-line-inactive ((t ,(list :background suixide-gray-darker
                                   :foreground suixide-gray))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide 'suixide-will)
