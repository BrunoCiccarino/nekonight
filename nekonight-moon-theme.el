(deftheme nekonight
  "NekoNight color theme for Emacs 24")

;; Please, install rainbow-mode.
;; Colors with +x are lighter. Colors with -x are darker.
(let ((nekonight-fg        "#c8d3f5")
      (nekonight-fg+1      "#f4f4ff")
      (nekonight-fg+2      "#f5f5f5")
      (nekonight-white     "#ffffff")
      (nekonight-black     "#000000")
      (nekonight-bg-1      "#101010")
      (nekonight-bg        "#222436")
      (nekonight-bg+1      "#1e2030")
      (nekonight-bg+2      "#191B29")
      (nekonight-bg+3      "#191B29")
      (nekonight-bg+4      "#191B29")
      (nekonight-red-1     "#c73c3f")
      (nekonight-red       "#f43841")
      (nekonight-red+1     "#ff4f58")
      (nekonight-green     "#73c936")
      (nekonight-pink      "#fca7ea")
      (nekonight-brown     "#cc8c3c")
      (nekonight-quartz    "#95a99f")
      (nekonight-niagara-2 "#303540")
      (nekonight-niagara-1 "#565f73")
      (nekonight-niagara   "#96a6c8")
      (nekonight-wisteria  "#9e95c7")
      )
  (custom-theme-set-variables
   'nekonight
   '(frame-brackground-mode (quote dark)))

  (custom-theme-set-faces
   'nekonight

   ;; Agda2
   `(agda2-highlight-datatype-face ((t (:foreground ,nekonight-quartz))))
   `(agda2-highlight-primitive-type-face ((t (:foreground ,nekonight-quartz))))
   `(agda2-highlight-function-face ((t (:foreground ,nekonight-niagara))))
   `(agda2-highlight-keyword-face ((t ,(list :foreground nekonight-pink
                                             :bold t))))
   `(agda2-highlight-inductive-constructor-face ((t (:foreground ,nekonight-green))))
   `(agda2-highlight-number-face ((t (:foreground ,nekonight-wisteria))))

   ;; AUCTeX
   `(font-latex-bold-face ((t (:foreground ,nekonight-quartz :bold t))))
   `(font-latex-italic-face ((t (:foreground ,nekonight-quartz :italic t))))
   `(font-latex-math-face ((t (:foreground ,nekonight-green))))
   `(font-latex-sectioning-5-face ((t ,(list :foreground nekonight-niagara
                                             :bold t))))
   `(font-latex-slide-title-face ((t (:foreground ,nekonight-niagara))))
   `(font-latex-string-face ((t (:foreground ,nekonight-green))))
   `(font-latex-warning-face ((t (:foreground ,nekonight-red))))

   ;; Basic Coloring (or Uncategorized)
   `(border ((t ,(list :background nekonight-bg-1
                       :foreground nekonight-bg+2))))
   `(cursor ((t (:background ,nekonight-pink))))
   `(default ((t ,(list :foreground nekonight-fg
                        :background nekonight-bg))))
   `(fringe ((t ,(list :background nil
                       :foreground nekonight-bg+2))))
   `(vertical-border ((t ,(list :foreground nekonight-bg+2))))
   `(link ((t (:foreground ,nekonight-niagara :underline t))))
   `(link-visited ((t (:foreground ,nekonight-wisteria :underline t))))
   `(match ((t (:background ,nekonight-bg+4))))
   `(shadow ((t (:foreground ,nekonight-bg+4))))
   `(minibuffer-prompt ((t (:foreground ,nekonight-niagara))))
   `(region ((t (:background ,nekonight-bg+3 :foreground nil))))
   `(secondary-selection ((t ,(list :background nekonight-bg+3
                                    :foreground nil))))
   `(trailing-whitespace ((t ,(list :foreground nekonight-black
                                    :background nekonight-red))))
   `(tooltip ((t ,(list :background nekonight-bg+4
                        :foreground nekonight-white))))

   ;; Calendar
   `(holiday-face ((t (:foreground ,nekonight-red))))

   ;; Compilation
   `(compilation-info ((t ,(list :foreground nekonight-green
                                 :inherit 'unspecified))))
   `(compilation-warning ((t ,(list :foreground nekonight-brown
                                    :bold t
                                    :inherit 'unspecified))))
   `(compilation-error ((t (:foreground ,nekonight-red+1))))
   `(compilation-mode-line-fail ((t ,(list :foreground nekonight-red
                                           :weight 'bold
                                           :inherit 'unspecified))))
   `(compilation-mode-line-exit ((t ,(list :foreground nekonight-green
                                           :weight 'bold
                                           :inherit 'unspecified))))

   ;; Completion
   `(completions-annotations ((t (:inherit 'shadow))))

   ;; Custom
   `(custom-state ((t (:foreground ,nekonight-green))))

   ;; Diff
   `(diff-removed ((t ,(list :foreground nekonight-red+1
                             :background nil))))
   `(diff-added ((t ,(list :foreground nekonight-green
                           :background nil))))

   ;; Dired
   `(dired-directory ((t (:foreground ,nekonight-niagara :weight bold))))
   `(dired-ignored ((t ,(list :foreground nekonight-quartz
                              :inherit 'unspecified))))

   ;; Ebrowse
   `(ebrowse-root-class ((t (:foreground ,nekonight-niagara :weight bold))))
   `(ebrowse-progress ((t (:background ,nekonight-niagara))))

   ;; Egg
   `(egg-branch ((t (:foreground ,nekonight-pink))))
   `(egg-branch-mono ((t (:foreground ,nekonight-pink))))
   `(egg-diff-add ((t (:foreground ,nekonight-green))))
   `(egg-diff-del ((t (:foreground ,nekonight-red))))
   `(egg-diff-file-header ((t (:foreground ,nekonight-wisteria))))
   `(egg-help-header-1 ((t (:foreground ,nekonight-pink))))
   `(egg-help-header-2 ((t (:foreground ,nekonight-niagara))))
   `(egg-log-HEAD-name ((t (:box (:color ,nekonight-fg)))))
   `(egg-reflog-mono ((t (:foreground ,nekonight-niagara-1))))
   `(egg-section-title ((t (:foreground ,nekonight-pink))))
   `(egg-text-base ((t (:foreground ,nekonight-fg))))
   `(egg-term ((t (:foreground ,nekonight-pink))))

   ;; ERC
   `(erc-notice-face ((t (:foreground ,nekonight-wisteria))))
   `(erc-timestamp-face ((t (:foreground ,nekonight-green))))
   `(erc-input-face ((t (:foreground ,nekonight-red+1))))
   `(erc-my-nick-face ((t (:foreground ,nekonight-red+1))))

   ;; EShell
   `(eshell-ls-backup ((t (:foreground ,nekonight-quartz))))
   `(eshell-ls-directory ((t (:foreground ,nekonight-niagara))))
   `(eshell-ls-executable ((t (:foreground ,nekonight-green))))
   `(eshell-ls-symlink ((t (:foreground ,nekonight-pink))))

   ;; Font Lock
   `(font-lock-builtin-face ((t (:foreground ,nekonight-pink))))
   `(font-lock-comment-face ((t (:foreground ,nekonight-brown))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,nekonight-brown))))
   `(font-lock-constant-face ((t (:foreground ,nekonight-quartz))))
   `(font-lock-doc-face ((t (:foreground ,nekonight-green))))
   `(font-lock-doc-string-face ((t (:foreground ,nekonight-green))))
   `(font-lock-function-name-face ((t (:foreground ,nekonight-niagara))))
   `(font-lock-keyword-face ((t (:foreground ,nekonight-pink :bold t))))
   `(font-lock-preprocessor-face ((t (:foreground ,nekonight-quartz))))
   `(font-lock-reference-face ((t (:foreground ,nekonight-quartz))))
   `(font-lock-string-face ((t (:foreground ,nekonight-green))))
   `(font-lock-type-face ((t (:foreground ,nekonight-quartz))))
   `(font-lock-variable-name-face ((t (:foreground ,nekonight-fg+1))))
   `(font-lock-warning-face ((t (:foreground ,nekonight-red))))

   ;; Flymake
   `(flymake-errline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,nekonight-red)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:foreground ,nekonight-red :weight bold :underline t))))
   `(flymake-warnline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,nekonight-pink)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,nekonight-pink :weight bold :underline t))))
   `(flymake-infoline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,nekonight-green)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,nekonight-green :weight bold :underline t))))

   ;; Flyspell
   `(flyspell-incorrect
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,nekonight-red) :inherit unspecified))
      (t (:foreground ,nekonight-red :weight bold :underline t))))
   `(flyspell-duplicate
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,nekonight-pink) :inherit unspecified))
      (t (:foreground ,nekonight-pink :weight bold :underline t))))

   ;; Helm
   `(helm-candidate-number ((t ,(list :background nekonight-bg+2
                                      :foreground nekonight-pink
                                      :bold t))))
   `(helm-ff-directory ((t ,(list :foreground nekonight-niagara
                                  :background nekonight-bg
                                  :bold t))))
   `(helm-ff-executable ((t (:foreground ,nekonight-green))))
   `(helm-ff-file ((t (:foreground ,nekonight-fg :inherit unspecified))))
   `(helm-ff-invalid-symlink ((t ,(list :foreground nekonight-bg
                                        :background nekonight-red))))
   `(helm-ff-symlink ((t (:foreground ,nekonight-pink :bold t))))
   `(helm-selection-line ((t (:background ,nekonight-bg+1))))
   `(helm-selection ((t (:background ,nekonight-bg+1 :underline nil))))
   `(helm-source-header ((t ,(list :foreground nekonight-pink
                                   :background nekonight-bg
                                   :box (list :line-width -1
                                              :style 'released-button)))))

   ;; Ido
   `(ido-first-match ((t (:foreground ,nekonight-pink :bold nil))))
   `(ido-only-match ((t (:foreground ,nekonight-brown :weight bold))))
   `(ido-subdir ((t (:foreground ,nekonight-niagara :weight bold))))

   ;; Info
   `(info-xref ((t (:foreground ,nekonight-niagara))))
   `(info-visited ((t (:foreground ,nekonight-wisteria))))

   ;; Jabber
   `(jabber-chat-prompt-foreign ((t ,(list :foreground nekonight-quartz
                                           :bold nil))))
   `(jabber-chat-prompt-local ((t (:foreground ,nekonight-pink))))
   `(jabber-chat-prompt-system ((t (:foreground ,nekonight-green))))
   `(jabber-rare-time-face ((t (:foreground ,nekonight-green))))
   `(jabber-roster-user-online ((t (:foreground ,nekonight-green))))
   `(jabber-activity-face ((t (:foreground ,nekonight-red))))
   `(jabber-activity-personal-face ((t (:foreground ,nekonight-pink :bold t))))

   ;; Line Highlighting
   `(highlight ((t (:background ,nekonight-bg+1 :foreground nil))))
   `(highlight-current-line-face ((t ,(list :background nekonight-bg+1
                                            :foreground nil))))

   ;; line numbers
   `(line-number ((t (:inherit default :foreground ,nekonight-bg+4))))
   `(line-number-current-line ((t (:inherit line-number :foreground ,nekonight-pink))))

   ;; Linum
   `(linum ((t `(list :foreground nekonight-quartz
                      :background nekonight-bg))))

   ;; Magit
   `(magit-branch ((t (:foreground ,nekonight-niagara))))
   `(magit-diff-hunk-header ((t (:background ,nekonight-bg+2))))
   `(magit-diff-file-header ((t (:background ,nekonight-bg+4))))
   `(magit-log-sha1 ((t (:foreground ,nekonight-red+1))))
   `(magit-log-author ((t (:foreground ,nekonight-brown))))
   `(magit-log-head-label-remote ((t ,(list :foreground nekonight-green
                                            :background nekonight-bg+1))))
   `(magit-log-head-label-local ((t ,(list :foreground nekonight-niagara
                                           :background nekonight-bg+1))))
   `(magit-log-head-label-tags ((t ,(list :foreground nekonight-pink
                                          :background nekonight-bg+1))))
   `(magit-log-head-label-head ((t ,(list :foreground nekonight-fg
                                          :background nekonight-bg+1))))
   `(magit-item-highlight ((t (:background ,nekonight-bg+1))))
   `(magit-tag ((t ,(list :foreground nekonight-pink
                          :background nekonight-bg))))
   `(magit-blame-heading ((t ,(list :background nekonight-bg+1
                                    :foreground nekonight-fg))))

   ;; Message
   `(message-header-name ((t (:foreground ,nekonight-green))))

   ;; Mode Line
   `(mode-line ((t ,(list :background nekonight-bg+1
                          :foreground nekonight-white))))
   `(mode-line-buffer-id ((t ,(list :background nekonight-bg+1
                                    :foreground nekonight-white))))
   `(mode-line-inactive ((t ,(list :background nekonight-bg+1
                                   :foreground nekonight-quartz))))

   ;; Neo Dir
   `(neo-dir-link-face ((t (:foreground ,nekonight-niagara))))

   ;; Org Mode
   `(org-agenda-structure ((t (:foreground ,nekonight-niagara))))
   `(org-column ((t (:background ,nekonight-bg-1))))
   `(org-column-title ((t (:background ,nekonight-bg-1 :underline t :weight bold))))
   `(org-done ((t (:foreground ,nekonight-green))))
   `(org-todo ((t (:foreground ,nekonight-red-1))))
   `(org-upcoming-deadline ((t (:foreground ,nekonight-pink))))

   ;; Search
   `(isearch ((t ,(list :foreground nekonight-black
                        :background nekonight-fg+2))))
   `(isearch-fail ((t ,(list :foreground nekonight-black
                             :background nekonight-red))))
   `(isearch-lazy-highlight-face ((t ,(list
                                       :foreground nekonight-fg+1
                                       :background nekonight-niagara-1))))

   ;; Sh
   `(sh-quoted-exec ((t (:foreground ,nekonight-red+1))))

   ;; Show Paren
   `(show-paren-match-face ((t (:background ,nekonight-bg+4))))
   `(show-paren-mismatch-face ((t (:background ,nekonight-red-1))))

   ;; Slime
   `(slime-repl-inputed-output-face ((t (:foreground ,nekonight-red))))

   ;; Tuareg
   `(tuareg-font-lock-governing-face ((t (:foreground ,nekonight-pink))))

   ;; Speedbar
   `(speedbar-directory-face ((t ,(list :foreground nekonight-niagara
                                        :weight 'bold))))
   `(speedbar-file-face ((t (:foreground ,nekonight-fg))))
   `(speedbar-highlight-face ((t (:background ,nekonight-bg+1))))
   `(speedbar-selected-face ((t (:foreground ,nekonight-red))))
   `(speedbar-tag-face ((t (:foreground ,nekonight-pink))))

   ;; Which Function
   `(which-func ((t (:foreground ,nekonight-wisteria))))

   ;; Whitespace
   `(whitespace-space ((t ,(list :background nekonight-bg
                                 :foreground nekonight-bg+1))))
   `(whitespace-tab ((t ,(list :background nekonight-bg
                               :foreground nekonight-bg+1))))
   `(whitespace-hspace ((t ,(list :background nekonight-bg
                                  :foreground nekonight-bg+2))))
   `(whitespace-line ((t ,(list :background nekonight-bg+2
                                :foreground nekonight-red+1))))
   `(whitespace-newline ((t ,(list :background nekonight-bg
                                   :foreground nekonight-bg+2))))
   `(whitespace-trailing ((t ,(list :background nekonight-red
                                    :foreground nekonight-red))))
   `(whitespace-empty ((t ,(list :background nekonight-pink
                                 :foreground nekonight-pink))))
   `(whitespace-indentation ((t ,(list :background nekonight-pink
                                       :foreground nekonight-red))))
   `(whitespace-space-after-tab ((t ,(list :background nekonight-pink
                                           :foreground nekonight-pink))))
   `(whitespace-space-before-tab ((t ,(list :background nekonight-brown
                                            :foreground nekonight-brown))))

   ;; tab-bar
   `(tab-bar ((t (:background ,nekonight-bg+1 :foreground ,nekonight-bg+4))))
   `(tab-bar-tab ((t (:background nil :foreground ,nekonight-pink :weight bold))))
   `(tab-bar-tab-inactive ((t (:background nil))))

   ;; vterm / ansi-term
   `(term-color-black ((t (:foreground ,nekonight-bg+3 :background ,nekonight-bg+4))))
   `(term-color-red ((t (:foreground ,nekonight-red-1 :background ,nekonight-red-1))))
   `(term-color-green ((t (:foreground ,nekonight-green :background ,nekonight-green))))
   `(term-color-blue ((t (:foreground ,nekonight-niagara :background ,nekonight-niagara))))
   `(term-color-pink ((t (:foreground ,nekonight-pink :background ,nekonight-pink))))
   `(term-color-magenta ((t (:foreground ,nekonight-wisteria :background ,nekonight-wisteria))))
   `(term-color-cyan ((t (:foreground ,nekonight-quartz :background ,nekonight-quartz))))
   `(term-color-white ((t (:foreground ,nekonight-fg :background ,nekonight-white))))

   ;; company-mode
   `(company-tooltip ((t (:foreground ,nekonight-fg :background ,nekonight-bg+1))))
   `(company-tooltip-annotation ((t (:foreground ,nekonight-brown :background ,nekonight-bg+1))))
   `(company-tooltip-annotation-selection ((t (:foreground ,nekonight-brown :background ,nekonight-bg-1))))
   `(company-tooltip-selection ((t (:foreground ,nekonight-fg :background ,nekonight-bg-1))))
   `(company-tooltip-mouse ((t (:background ,nekonight-bg-1))))
   `(company-tooltip-common ((t (:foreground ,nekonight-green))))
   `(company-tooltip-common-selection ((t (:foreground ,nekonight-green))))
   `(company-scrollbar-fg ((t (:background ,nekonight-bg-1))))
   `(company-scrollbar-bg ((t (:background ,nekonight-bg+2))))
   `(company-preview ((t (:background ,nekonight-green))))
   `(company-preview-common ((t (:foreground ,nekonight-green :background ,nekonight-bg-1))))

   ;; Proof General
   `(proof-locked-face ((t (:background ,nekonight-niagara-2))))

   ;; Orderless
   `(orderless-match-face-0 ((t (:foreground ,nekonight-pink))))
   `(orderless-match-face-1 ((t (:foreground ,nekonight-green))))
   `(orderless-match-face-2 ((t (:foreground ,nekonight-brown))))
   `(orderless-match-face-3 ((t (:foreground ,nekonight-quartz))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'nekonight)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; nekonight-theme.el ends here.
