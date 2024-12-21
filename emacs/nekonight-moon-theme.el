(deftheme nekonight-moon
  "Nekonight-Moon color theme for Emacs 24")

;; Please, install rainbow-mode.
;; Colors with +x are lighter. Colors with -x are darker.
(let ((nekonight-moon-fg        "#c8d3f5")
      (nekonight-moon-fg+1      "#f4f4ff")
      (nekonight-moon-fg+2      "#f5f5f5")
      (nekonight-moon-white     "#ffffff")
      (nekonight-moon-black     "#000000")
      (nekonight-moon-bg-1      "#101010")
      (nekonight-moon-bg        "#222436")
      (nekonight-moon-bg+1      "#1e2030")
      (nekonight-moon-bg+2      "#191B29")
      (nekonight-moon-bg+3      "#191B29")
      (nekonight-moon-bg+4      "#636da6")
      (nekonight-moon-red-1     "#c73c3f")
      (nekonight-moon-red       "#ff757f")
      (nekonight-moon-red+1     "#c53b53")
      (nekonight-moon-green     "#c3e88d")
      (nekonight-moon-pink      "#fca7ea")
      (nekonight-moon-brown     "#cc8c3c")
      (nekonight-moon-cyan      "#86e1fc")
      (nekonight-moon-purple    "#c099ff")
      (nekonight-moon-niagara-1 "#565f73")
      (nekonight-moon-blue      "#82aaff")
      (nekonight-moon-wisteria  "#9e95c7")
      )
  (custom-theme-set-variables
   'nekonight-moon
   '(frame-brackground-mode (quote dark)))

  (custom-theme-set-faces
   'nekonight-moon

   ;; Agda2
   `(agda2-highlight-datatype-face ((t (:foreground ,nekonight-moon-cyan))))
   `(agda2-highlight-primitive-type-face ((t (:foreground ,nekonight-moon-cyan))))
   `(agda2-highlight-function-face ((t (:foreground ,nekonight-moon-blue))))
   `(agda2-highlight-keyword-face ((t ,(list :foreground nekonight-moon-pink
                                             :bold t))))
   `(agda2-highlight-inductive-constructor-face ((t (:foreground ,nekonight-moon-green))))
   `(agda2-highlight-number-face ((t (:foreground ,nekonight-moon-wisteria))))

   ;; AUCTeX
   `(font-latex-bold-face ((t (:foreground ,nekonight-moon-cyan :bold t))))
   `(font-latex-italic-face ((t (:foreground ,nekonight-moon-cyan :italic t))))
   `(font-latex-math-face ((t (:foreground ,nekonight-moon-green))))
   `(font-latex-sectioning-5-face ((t ,(list :foreground nekonight-moon-blue
                                             :bold t))))
   `(font-latex-slide-title-face ((t (:foreground ,nekonight-moon-blue))))
   `(font-latex-string-face ((t (:foreground ,nekonight-moon-green))))
   `(font-latex-warning-face ((t (:foreground ,nekonight-moon-red))))

   ;; Basic Coloring (or Uncategorized)
   `(border ((t ,(list :background nekonight-moon-bg-1
                       :foreground nekonight-moon-bg+2))))
   `(cursor ((t (:background ,nekonight-moon-pink))))
   `(default ((t ,(list :foreground nekonight-moon-fg
                        :background nekonight-moon-bg))))
   `(fringe ((t ,(list :background nil
                       :foreground nekonight-moon-bg+2))))
   `(vertical-border ((t ,(list :foreground nekonight-moon-bg+2))))
   `(link ((t (:foreground ,nekonight-moon-blue :underline t))))
   `(link-visited ((t (:foreground ,nekonight-moon-wisteria :underline t))))
   `(match ((t (:background ,nekonight-moon-bg+4))))
   `(shadow ((t (:foreground ,nekonight-moon-bg+4))))
   `(minibuffer-prompt ((t (:foreground ,nekonight-moon-blue))))
   `(region ((t (:background ,nekonight-moon-bg+3 :foreground nil))))
   `(secondary-selection ((t ,(list :background nekonight-moon-bg+3
                                    :foreground nil))))
   `(trailing-whitespace ((t ,(list :foreground nekonight-moon-black
                                    :background nekonight-moon-red))))
   `(tooltip ((t ,(list :background nekonight-moon-bg+4
                        :foreground nekonight-moon-white))))

   ;; Calendar
   `(holiday-face ((t (:foreground ,nekonight-moon-red))))

   ;; Compilation
   `(compilation-info ((t ,(list :foreground nekonight-moon-green
                                 :inherit 'unspecified))))
   `(compilation-warning ((t ,(list :foreground nekonight-moon-brown
                                    :bold t
                                    :inherit 'unspecified))))
   `(compilation-error ((t (:foreground ,nekonight-moon-red+1))))
   `(compilation-mode-line-fail ((t ,(list :foreground nekonight-moon-red
                                           :weight 'bold
                                           :inherit 'unspecified))))
   `(compilation-mode-line-exit ((t ,(list :foreground nekonight-moon-green
                                           :weight 'bold
                                           :inherit 'unspecified))))

   ;; Completion
   `(completions-annotations ((t (:inherit 'shadow))))

   ;; Custom
   `(custom-state ((t (:foreground ,nekonight-moon-green))))

   ;; Diff
   `(diff-removed ((t ,(list :foreground nekonight-moon-red+1
                             :background nil))))
   `(diff-added ((t ,(list :foreground nekonight-moon-green
                           :background nil))))

   ;; Dired
   `(dired-directory ((t (:foreground ,nekonight-moon-blue :weight bold))))
   `(dired-ignored ((t ,(list :foreground nekonight-moon-cyan
                              :inherit 'unspecified))))

   ;; Ebrowse
   `(ebrowse-root-class ((t (:foreground ,nekonight-moon-blue :weight bold))))
   `(ebrowse-progress ((t (:background ,nekonight-moon-blue))))

   ;; Egg
   `(egg-branch ((t (:foreground ,nekonight-moon-pink))))
   `(egg-branch-mono ((t (:foreground ,nekonight-moon-pink))))
   `(egg-diff-add ((t (:foreground ,nekonight-moon-green))))
   `(egg-diff-del ((t (:foreground ,nekonight-moon-red))))
   `(egg-diff-file-header ((t (:foreground ,nekonight-moon-wisteria))))
   `(egg-help-header-1 ((t (:foreground ,nekonight-moon-pink))))
   `(egg-help-header-2 ((t (:foreground ,nekonight-moon-blue))))
   `(egg-log-HEAD-name ((t (:box (:color ,nekonight-moon-fg)))))
   `(egg-reflog-mono ((t (:foreground ,nekonight-moon-niagara-1))))
   `(egg-section-title ((t (:foreground ,nekonight-moon-pink))))
   `(egg-text-base ((t (:foreground ,nekonight-moon-fg))))
   `(egg-term ((t (:foreground ,nekonight-moon-pink))))

   ;; ERC
   `(erc-notice-face ((t (:foreground ,nekonight-moon-wisteria))))
   `(erc-timestamp-face ((t (:foreground ,nekonight-moon-green))))
   `(erc-input-face ((t (:foreground ,nekonight-moon-red+1))))
   `(erc-my-nick-face ((t (:foreground ,nekonight-moon-red+1))))

   ;; EShell
   `(eshell-ls-backup ((t (:foreground ,nekonight-moon-cyan))))
   `(eshell-ls-directory ((t (:foreground ,nekonight-moon-blue))))
   `(eshell-ls-executable ((t (:foreground ,nekonight-moon-green))))
   `(eshell-ls-symlink ((t (:foreground ,nekonight-moon-pink))))

   ;; Font Lock
   `(font-lock-builtin-face ((t (:foreground ,nekonight-moon-pink))))
   `(font-lock-comment-face ((t (:foreground ,nekonight-moon-brown))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,nekonight-moon-brown))))
   `(font-lock-constant-face ((t (:foreground ,nekonight-moon-cyan))))
   `(font-lock-doc-face ((t (:foreground ,nekonight-moon-green))))
   `(font-lock-doc-string-face ((t (:foreground ,nekonight-moon-green))))
   `(font-lock-function-name-face ((t (:foreground ,nekonight-moon-blue))))
   `(font-lock-keyword-face ((t (:foreground ,nekonight-moon-pink :bold t))))
   `(font-lock-preprocessor-face ((t (:foreground ,nekonight-moon-cyan))))
   `(font-lock-reference-face ((t (:foreground ,nekonight-moon-cyan))))
   `(font-lock-string-face ((t (:foreground ,nekonight-moon-green))))
   `(font-lock-type-face ((t (:foreground ,nekonight-moon-cyan))))
   `(font-lock-variable-name-face ((t (:foreground ,nekonight-moon-fg+1))))
   `(font-lock-warning-face ((t (:foreground ,nekonight-moon-red))))

   ;; Flymake
   `(flymake-errline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,nekonight-moon-red)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:foreground ,nekonight-moon-red :weight bold :underline t))))
   `(flymake-warnline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,nekonight-moon-pink)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,nekonight-moon-pink :weight bold :underline t))))
   `(flymake-infoline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,nekonight-moon-green)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,nekonight-moon-green :weight bold :underline t))))

   ;; Flyspell
   `(flyspell-incorrect
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,nekonight-moon-red) :inherit unspecified))
      (t (:foreground ,nekonight-moon-red :weight bold :underline t))))
   `(flyspell-duplicate
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,nekonight-moon-pink) :inherit unspecified))
      (t (:foreground ,nekonight-moon-pink :weight bold :underline t))))

   ;; Helm
   `(helm-candidate-number ((t ,(list :background nekonight-moon-bg+2
                                      :foreground nekonight-moon-pink
                                      :bold t))))
   `(helm-ff-directory ((t ,(list :foreground nekonight-moon-blue
                                  :background nekonight-moon-bg
                                  :bold t))))
   `(helm-ff-executable ((t (:foreground ,nekonight-moon-green))))
   `(helm-ff-file ((t (:foreground ,nekonight-moon-fg :inherit unspecified))))
   `(helm-ff-invalid-symlink ((t ,(list :foreground nekonight-moon-bg
                                        :background nekonight-moon-red))))
   `(helm-ff-symlink ((t (:foreground ,nekonight-moon-pink :bold t))))
   `(helm-selection-line ((t (:background ,nekonight-moon-bg+1))))
   `(helm-selection ((t (:background ,nekonight-moon-bg+1 :underline nil))))
   `(helm-source-header ((t ,(list :foreground nekonight-moon-pink
                                   :background nekonight-moon-bg
                                   :box (list :line-width -1
                                              :style 'released-button)))))

   ;; Ido
   `(ido-first-match ((t (:foreground ,nekonight-moon-pink :bold nil))))
   `(ido-only-match ((t (:foreground ,nekonight-moon-brown :weight bold))))
   `(ido-subdir ((t (:foreground ,nekonight-moon-blue :weight bold))))

   ;; Info
   `(info-xref ((t (:foreground ,nekonight-moon-blue))))
   `(info-visited ((t (:foreground ,nekonight-moon-wisteria))))

   ;; Jabber
   `(jabber-chat-prompt-foreign ((t ,(list :foreground nekonight-moon-cyan
                                           :bold nil))))
   `(jabber-chat-prompt-local ((t (:foreground ,nekonight-moon-pink))))
   `(jabber-chat-prompt-system ((t (:foreground ,nekonight-moon-green))))
   `(jabber-rare-time-face ((t (:foreground ,nekonight-moon-green))))
   `(jabber-roster-user-online ((t (:foreground ,nekonight-moon-green))))
   `(jabber-activity-face ((t (:foreground ,nekonight-moon-red))))
   `(jabber-activity-personal-face ((t (:foreground ,nekonight-moon-pink :bold t))))

   ;; Line Highlighting
   `(highlight ((t (:background ,nekonight-moon-bg+1 :foreground nil))))
   `(highlight-current-line-face ((t ,(list :background nekonight-moon-bg+1
                                            :foreground nil))))

   ;; line numbers
   `(line-number ((t (:inherit default :foreground ,nekonight-moon-bg+4))))
   `(line-number-current-line ((t (:inherit line-number :foreground ,nekonight-moon-pink))))

   ;; Linum
   `(linum ((t `(list :foreground nekonight-moon-cyan
                      :background nekonight-moon-bg))))

   ;; Magit
   `(magit-branch ((t (:foreground ,nekonight-moon-blue))))
   `(magit-diff-hunk-header ((t (:background ,nekonight-moon-bg+2))))
   `(magit-diff-file-header ((t (:background ,nekonight-moon-bg+4))))
   `(magit-log-sha1 ((t (:foreground ,nekonight-moon-red+1))))
   `(magit-log-author ((t (:foreground ,nekonight-moon-brown))))
   `(magit-log-head-label-remote ((t ,(list :foreground nekonight-moon-green
                                            :background nekonight-moon-bg+1))))
   `(magit-log-head-label-local ((t ,(list :foreground nekonight-moon-blue
                                           :background nekonight-moon-bg+1))))
   `(magit-log-head-label-tags ((t ,(list :foreground nekonight-moon-pink
                                          :background nekonight-moon-bg+1))))
   `(magit-log-head-label-head ((t ,(list :foreground nekonight-moon-fg
                                          :background nekonight-moon-bg+1))))
   `(magit-item-highlight ((t (:background ,nekonight-moon-bg+1))))
   `(magit-tag ((t ,(list :foreground nekonight-moon-pink
                          :background nekonight-moon-bg))))
   `(magit-blame-heading ((t ,(list :background nekonight-moon-bg+1
                                    :foreground nekonight-moon-fg))))

   ;; Message
   `(message-header-name ((t (:foreground ,nekonight-moon-green))))

   ;; Mode Line
   `(mode-line ((t ,(list :background nekonight-moon-bg+1
                          :foreground nekonight-moon-white))))
   `(mode-line-buffer-id ((t ,(list :background nekonight-moon-bg+1
                                    :foreground nekonight-moon-white))))
   `(mode-line-inactive ((t ,(list :background nekonight-moon-bg+1
                                   :foreground nekonight-moon-cyan))))

   ;; Neo Dir
   `(neo-dir-link-face ((t (:foreground ,nekonight-moon-blue))))

   ;; Org Mode
   `(org-agenda-structure ((t (:foreground ,nekonight-moon-blue))))
   `(org-column ((t (:background ,nekonight-moon-bg-1))))
   `(org-column-title ((t (:background ,nekonight-moon-bg-1 :underline t :weight bold))))
   `(org-done ((t (:foreground ,nekonight-moon-green))))
   `(org-todo ((t (:foreground ,nekonight-moon-red-1))))
   `(org-upcoming-deadline ((t (:foreground ,nekonight-moon-pink))))

   ;; Search
   `(isearch ((t ,(list :foreground nekonight-moon-black
                        :background nekonight-moon-fg+2))))
   `(isearch-fail ((t ,(list :foreground nekonight-moon-black
                             :background nekonight-moon-red))))
   `(isearch-lazy-highlight-face ((t ,(list
                                       :foreground nekonight-moon-fg+1
                                       :background nekonight-moon-niagara-1))))

   ;; Sh
   `(sh-quoted-exec ((t (:foreground ,nekonight-moon-red+1))))

   ;; Show Paren
   `(show-paren-match-face ((t (:background ,nekonight-moon-bg+4))))
   `(show-paren-mismatch-face ((t (:background ,nekonight-moon-red-1))))

   ;; Slime
   `(slime-repl-inputed-output-face ((t (:foreground ,nekonight-moon-red))))

   ;; Tuareg
   `(tuareg-font-lock-governing-face ((t (:foreground ,nekonight-moon-pink))))

   ;; Speedbar
   `(speedbar-directory-face ((t ,(list :foreground nekonight-moon-blue
                                        :weight 'bold))))
   `(speedbar-file-face ((t (:foreground ,nekonight-moon-fg))))
   `(speedbar-highlight-face ((t (:background ,nekonight-moon-bg+1))))
   `(speedbar-selected-face ((t (:foreground ,nekonight-moon-red))))
   `(speedbar-tag-face ((t (:foreground ,nekonight-moon-pink))))

   ;; Which Function
   `(which-func ((t (:foreground ,nekonight-moon-wisteria))))

   ;; Whitespace
   `(whitespace-space ((t ,(list :background nekonight-moon-bg
                                 :foreground nekonight-moon-bg+1))))
   `(whitespace-tab ((t ,(list :background nekonight-moon-bg
                               :foreground nekonight-moon-bg+1))))
   `(whitespace-hspace ((t ,(list :background nekonight-moon-bg
                                  :foreground nekonight-moon-bg+2))))
   `(whitespace-line ((t ,(list :background nekonight-moon-bg+2
                                :foreground nekonight-moon-red+1))))
   `(whitespace-newline ((t ,(list :background nekonight-moon-bg
                                   :foreground nekonight-moon-bg+2))))
   `(whitespace-trailing ((t ,(list :background nekonight-moon-red
                                    :foreground nekonight-moon-red))))
   `(whitespace-empty ((t ,(list :background nekonight-moon-pink
                                 :foreground nekonight-moon-pink))))
   `(whitespace-indentation ((t ,(list :background nekonight-moon-pink
                                       :foreground nekonight-moon-red))))
   `(whitespace-space-after-tab ((t ,(list :background nekonight-moon-pink
                                           :foreground nekonight-moon-pink))))
   `(whitespace-space-before-tab ((t ,(list :background nekonight-moon-brown
                                            :foreground nekonight-moon-brown))))

   ;; tab-bar
   `(tab-bar ((t (:background ,nekonight-moon-bg+1 :foreground ,nekonight-moon-bg+4))))
   `(tab-bar-tab ((t (:background nil :foreground ,nekonight-moon-pink :weight bold))))
   `(tab-bar-tab-inactive ((t (:background nil))))

   ;; vterm / ansi-term
   `(term-color-black ((t (:foreground ,nekonight-moon-bg+3 :background ,nekonight-moon-bg+4))))
   `(term-color-red ((t (:foreground ,nekonight-moon-red-1 :background ,nekonight-moon-red-1))))
   `(term-color-green ((t (:foreground ,nekonight-moon-green :background ,nekonight-moon-green))))
   `(term-color-blue ((t (:foreground ,nekonight-moon-blue :background ,nekonight-moon-blue))))
   `(term-color-pink ((t (:foreground ,nekonight-moon-pink :background ,nekonight-moon-pink))))
   `(term-color-magenta ((t (:foreground ,nekonight-moon-wisteria :background ,nekonight-moon-wisteria))))
   `(term-color-cyan ((t (:foreground ,nekonight-moon-cyan :background ,nekonight-moon-cyan))))
   `(term-color-white ((t (:foreground ,nekonight-moon-fg :background ,nekonight-moon-white))))

   ;; company-mode
   `(company-tooltip ((t (:foreground ,nekonight-moon-fg :background ,nekonight-moon-bg+1))))
   `(company-tooltip-annotation ((t (:foreground ,nekonight-moon-brown :background ,nekonight-moon-bg+1))))
   `(company-tooltip-annotation-selection ((t (:foreground ,nekonight-moon-brown :background ,nekonight-moon-bg-1))))
   `(company-tooltip-selection ((t (:foreground ,nekonight-moon-fg :background ,nekonight-moon-bg-1))))
   `(company-tooltip-mouse ((t (:background ,nekonight-moon-bg-1))))
   `(company-tooltip-common ((t (:foreground ,nekonight-moon-green))))
   `(company-tooltip-common-selection ((t (:foreground ,nekonight-moon-green))))
   `(company-scrollbar-fg ((t (:background ,nekonight-moon-bg-1))))
   `(company-scrollbar-bg ((t (:background ,nekonight-moon-bg+2))))
   `(company-preview ((t (:background ,nekonight-moon-green))))
   `(company-preview-common ((t (:foreground ,nekonight-moon-green :background ,nekonight-moon-bg-1))))

   ;; Proof General
   `(proof-locked-face ((t (:background ,nekonight-moon-purple))))

   ;; Orderless
   `(orderless-match-face-0 ((t (:foreground ,nekonight-moon-pink))))
   `(orderless-match-face-1 ((t (:foreground ,nekonight-moon-green))))
   `(orderless-match-face-2 ((t (:foreground ,nekonight-moon-brown))))
   `(orderless-match-face-3 ((t (:foreground ,nekonight-moon-cyan))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'nekonight-moon)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; nekonight-moon-theme.el ends here.
