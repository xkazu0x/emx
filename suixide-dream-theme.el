(deftheme suixide-dream
  "kill yourself from the past")

(let ((suixide-white       "#FFFFFF")
      (suixide-gray        "#7F7F7F")
      (suixide-gray-dark   "#171717")
      (suixide-gray-darker "#101010")
      (suixide-black       "#000000")
      (suixide-fg          "#E3E1D2")
      (suixide-green       "#85A898")
      (suixide-blue        "#8785A8")
      (suixide-blue-dark   "#101020")
      (suixide-slime       "#EFF9E8")
      (suixide-brown       "#A89885")
      (suixide-sand        "#D3D3C2")
      (suixide-sand-1      "#B2B394")
	  (suixide-silver      "#BDBBB0")
	  (suixide-battleship  "#8A897C")
      (suixide-rose        "#A88595"))
  (custom-theme-set-variables
   'suixide-dream
   '(frame-background-mode (quote dark)))

  (custom-theme-set-faces
   'suixide-dream

   ;; basic coloring
   `(border ((t ,(list :background suixide-gray
		       :foreground suixide-gray-dark))))
   `(cursor ((t ,(list :background suixide-white))))
   `(default ((t ,(list :foreground suixide-white
                        :background suixide-black))))
   `(fringe ((t ,(list :background nil
		       :foreground suixide-gray))))
   `(vertical-border ((t ,(list :foreground suixide-gray-darker))))
   `(minibuffer-prompt ((t (:foreground ,suixide-rose))))
   
   ;; compilation
   `(compilation-info ((t ,(list :foreground suixide-blue
                                 :inherit 'unspecified))))
   `(compilation-warning ((t ,(list :foreground suixide-sand-1
                                    :bold t
                                    :inherit 'unspecified))))
   `(compilation-error ((t (:foreground ,suixide-rose))))
   `(compilation-mode-line-fail ((t ,(list :foreground suixide-rose
                                           :weight 'bold
                                           :inherit 'unspecified))))
   `(compilation-mode-line-exit ((t ,(list :foreground suixide-green
                                           :weight 'bold
                                           :inherit 'unspecified))))

   ;; completion
   `(completions-annotations ((t (:inherit 'shadow))))
   
   ;; font lock
   `(font-lock-builtin-face ((t (:foreground ,suixide-green))))
   `(font-lock-comment-face ((t (:foreground ,suixide-gray))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,suixide-gray))))
   `(font-lock-constant-face ((t (:foreground ,suixide-rose))))
   `(font-lock-doc-face ((t (:foreground ,suixide-brown))))
   `(font-lock-doc-string-face ((t (:foreground ,suixide-brown))))
   `(font-lock-escape-face ((t (:foregound, suixide-slime))))
   `(font-lock-function-name-face ((t (:foreground ,suixide-sand))))
   `(font-lock-keyword-face ((t (:foreground ,suixide-green :bold nil))))
   `(font-lock-preprocessor-face ((t (:foreground ,suixide-battleship))))
   `(font-lock-reference-face ((t (:foreground ,suixide-fg))))
   `(font-lock-string-face ((t (:foreground ,suixide-brown))))
   `(font-lock-type-face ((t (:foreground ,suixide-green))))
   `(font-lock-variable-name-face ((t (:foreground ,suixide-silver))))
   `(font-lock-warning-face ((t (:foreground ,suixide-rose))))
   `(font-lock-punctuation-face ((t (:foregroun ,suixide-fg))))
   
   ;; line highlighting
   `(highlight ((t (:background ,suixide-white :foreground ,suixide-black))))
   `(highlight-current-line-face ((t ,(list :background suixide-blue
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

(provide 'suixide-dream)
