;;; nekonight-storm-theme.el --- NekoNight, an all-around theme -*- lexical-binding: t -*-

;; Copyright (C) 2024 Bruno Ciccarino

;; Author: Bruno Ciccarino
;; URL: https://github.com/neko-night/emacs
;; Keywords: faces, theme, nekonight, storm

;; Package-Version: 0.0.3
;; Package-Requires: ((emacs "24.0"))

;; SPDX-License-Identifier: MIT

;; This file is not part of GNU Emacs.

;; Permission is hereby granted, free of charge, to any person obtaining a copy
;; of this software and associated documentation files (the "Software"), to deal
;; in the Software without restriction, including without limitation the rights
;; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
;; copies of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:

;; The above copyright notice and this permission notice shall be included in all
;; copies or substantial portions of the Software.

;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;; SOFTWARE.

;;; Commentary:

;; Looking for a theme that fits your vibe? Whether you're into dark mode,
;; light mode, or something in between, this NekoNight has got you covered.
;; It's a buffet of color schemes for every taste and mood.

;;; Code:

(deftheme nekonight-storm
  "Nekonight-Storm color theme for Emacs 24")

;; Please, install rainbow-mode.
;; Colors with +x are lighter. Colors with -x are darker.
(let ((nekonight-storm-fg        "#c0caf5")
      (nekonight-storm-fg+1      "#a9b1d6")
      (nekonight-storm-fg+2      "#f5f5f5")
      (nekonight-storm-white     "#ffffff")
      (nekonight-storm-black     "#000000")
      (nekonight-storm-bg-1      "#101010")
      (nekonight-storm-bg        "#24283b")
      (nekonight-storm-bg+1      "#1f2335")
      (nekonight-storm-bg+2      "#191B29")
      (nekonight-storm-bg+3      "#191B29")
      (nekonight-storm-bg+4      "#636da6")
      (nekonight-storm-red-1     "#c73c3f")
      (nekonight-storm-red       "#ff757f")
      (nekonight-storm-red+1     "#c53b53")
      (nekonight-storm-green     "#c3e88d")
      (nekonight-storm-pink      "#fca7ea")
      (nekonight-storm-orange    "#ff9e64")
      (nekonight-storm-cyan      "#86e1fc")
      (nekonight-storm-purple    "#c099ff")
      (nekonight-storm-niagara-1 "#565f73")
      (nekonight-storm-blue      "#0db9d7")
      (nekonight-storm-blue+1    "#3d59a1")
      (nekonight-storm-teal      "#1abc9c")
      )
  (custom-theme-set-variables
   'nekonight-storm
   '(frame-brackground-mode (quote dark)))

  (custom-theme-set-faces
   'nekonight-storm

   ;; Agda2
   `(agda2-highlight-datatype-face ((t (:foreground ,nekonight-storm-cyan))))
   `(agda2-highlight-primitive-type-face ((t (:foreground ,nekonight-storm-cyan))))
   `(agda2-highlight-function-face ((t (:foreground ,nekonight-storm-blue))))
   `(agda2-highlight-keyword-face ((t ,(list :foreground nekonight-storm-pink
                                             :bold t))))
   `(agda2-highlight-inductive-constructor-face ((t (:foreground ,nekonight-storm-green))))
   `(agda2-highlight-number-face ((t (:foreground ,nekonight-storm-blue+1))))
   `(agda2-highlight-identifier-face ((t (:foreground ,nekonight-storm-teal))))

   ;; Identifiers and structs
   `(font-lock-variable-name-face ((t (:foreground ,nekonight-storm-purple))))
   `(font-lock-function-name-face ((t (:foreground ,nekonight-storm-blue))))
   `(font-lock-constant-face ((t (:foreground ,nekonight-storm-orange))))
   `(font-lock-keyword-face ((t (:foreground ,nekonight-storm-pink :bold t))))
   `(font-lock-type-face ((t (:foreground ,nekonight-storm-cyan))))

   ;; Literals and Strings
   `(font-lock-string-face ((t (:foreground ,nekonight-storm-green))))
   `(font-lock-number-face ((t (:foreground ,nekonight-storm-blue+1))))

   ;; Comments
   `(font-lock-comment-face ((t (:foreground ,nekonight-storm-niagara-1 :italic t))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,nekonight-storm-red))))

   ;; Operators e Delimiters
   `(font-lock-builtin-face ((t (:foreground ,nekonight-storm-orange))))
   `(font-lock-delimiter-face ((t (:foreground ,nekonight-storm-fg+1))))

   ;; Errors
   `(flymake-error ((t (:underline (:style wave :color ,nekonight-storm-red)))))
   `(flymake-warning ((t (:underline (:style wave :color ,nekonight-storm-orange)))))

   ;; Lisp
   `(lisp-function-name-face ((t (:foreground ,nekonight-storm-blue))))
   `(lisp-macro-face ((t (:foreground ,nekonight-storm-purple :italic t))))

   ;; Python
   `(python-decorator-face ((t (:foreground ,nekonight-storm-orange :italic t))))

   ;; JavaScript
   `(js2-object-property-face ((t (:foreground ,nekonight-storm-purple))))
   
   ;; AUCTeX
   `(font-latex-bold-face ((t (:foreground ,nekonight-storm-cyan :bold t))))
   `(font-latex-italic-face ((t (:foreground ,nekonight-storm-cyan :italic t))))
   `(font-latex-math-face ((t (:foreground ,nekonight-storm-green))))
   `(font-latex-sectioning-5-face ((t ,(list :foreground nekonight-storm-blue
                                             :bold t))))
   `(font-latex-slide-title-face ((t (:foreground ,nekonight-storm-blue))))
   `(font-latex-string-face ((t (:foreground ,nekonight-storm-green))))
   `(font-latex-warning-face ((t (:foreground ,nekonight-storm-red))))

   ;; Basic Coloring (or Uncategorized)
   `(border ((t ,(list :background nekonight-storm-bg-1
                       :foreground nekonight-storm-bg+2))))
   `(cursor ((t (:background ,nekonight-storm-pink))))
   `(default ((t ,(list :foreground nekonight-storm-fg
                        :background nekonight-storm-bg))))
   `(fringe ((t ,(list :background nil
                       :foreground nekonight-storm-bg+2))))
   `(vertical-border ((t ,(list :foreground nekonight-storm-bg+2))))
   `(link ((t (:foreground ,nekonight-storm-blue :underline t))))
   `(link-visited ((t (:foreground ,nekonight-storm-blue+1 :underline t))))
   `(match ((t (:background ,nekonight-storm-bg+4))))
   `(shadow ((t (:foreground ,nekonight-storm-bg+4))))
   `(minibuffer-prompt ((t (:foreground ,nekonight-storm-blue))))
   `(region ((t (:background ,nekonight-storm-bg+3 :foreground nil))))
   `(secondary-selection ((t ,(list :background nekonight-storm-bg+3
                                    :foreground nil))))
   `(trailing-whitespace ((t ,(list :foreground nekonight-storm-black
                                    :background nekonight-storm-red))))
   `(tooltip ((t ,(list :background nekonight-storm-bg+4
                        :foreground nekonight-storm-white))))

   ;; Calendar
   `(holiday-face ((t (:foreground ,nekonight-storm-red))))

   ;; Compilation
   `(compilation-info ((t ,(list :foreground nekonight-storm-green
                                 :inherit 'unspecified))))
   `(compilation-warning ((t ,(list :foreground nekonight-storm-orange
                                    :bold t
                                    :inherit 'unspecified))))
   `(compilation-error ((t (:foreground ,nekonight-storm-red+1))))
   `(compilation-mode-line-fail ((t ,(list :foreground nekonight-storm-red
                                           :weight 'bold
                                           :inherit 'unspecified))))
   `(compilation-mode-line-exit ((t ,(list :foreground nekonight-storm-green
                                           :weight 'bold
                                           :inherit 'unspecified))))

   ;; Completion
   `(completions-annotations ((t (:inherit 'shadow))))

   ;; Custom
   `(custom-state ((t (:foreground ,nekonight-storm-green))))

   ;; Diff
   `(diff-removed ((t ,(list :foreground nekonight-storm-red+1
                             :background nil))))
   `(diff-added ((t ,(list :foreground nekonight-storm-green
                           :background nil))))

   ;; Dired
   `(dired-directory ((t (:foreground ,nekonight-storm-blue :weight bold))))
   `(dired-ignored ((t ,(list :foreground nekonight-storm-cyan
                              :inherit 'unspecified))))

   ;; Ebrowse
   `(ebrowse-root-class ((t (:foreground ,nekonight-storm-blue :weight bold))))
   `(ebrowse-progress ((t (:background ,nekonight-storm-blue))))

   ;; Egg
   `(egg-branch ((t (:foreground ,nekonight-storm-pink))))
   `(egg-branch-mono ((t (:foreground ,nekonight-storm-pink))))
   `(egg-diff-add ((t (:foreground ,nekonight-storm-green))))
   `(egg-diff-del ((t (:foreground ,nekonight-storm-red))))
   `(egg-diff-file-header ((t (:foreground ,nekonight-storm-blue+1))))
   `(egg-help-header-1 ((t (:foreground ,nekonight-storm-pink))))
   `(egg-help-header-2 ((t (:foreground ,nekonight-storm-blue))))
   `(egg-log-HEAD-name ((t (:box (:color ,nekonight-storm-fg)))))
   `(egg-reflog-mono ((t (:foreground ,nekonight-storm-niagara-1))))
   `(egg-section-title ((t (:foreground ,nekonight-storm-pink))))
   `(egg-text-base ((t (:foreground ,nekonight-storm-fg))))
   `(egg-term ((t (:foreground ,nekonight-storm-pink))))

   ;; ERC
   `(erc-notice-face ((t (:foreground ,nekonight-storm-blue+1))))
   `(erc-timestamp-face ((t (:foreground ,nekonight-storm-green))))
   `(erc-input-face ((t (:foreground ,nekonight-storm-red+1))))
   `(erc-my-nick-face ((t (:foreground ,nekonight-storm-red+1))))

   ;; EShell
   `(eshell-ls-backup ((t (:foreground ,nekonight-storm-cyan))))
   `(eshell-ls-directory ((t (:foreground ,nekonight-storm-blue))))
   `(eshell-ls-executable ((t (:foreground ,nekonight-storm-green))))
   `(eshell-ls-symlink ((t (:foreground ,nekonight-storm-pink))))
   
   ;; Font Lock
   `(font-lock-builtin-face ((t (:foreground ,nekonight-storm-pink))))
   `(font-lock-comment-face ((t (:foreground ,nekonight-storm-orange))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,nekonight-storm-orange))))
   `(font-lock-constant-face ((t (:foreground ,nekonight-storm-cyan))))
   `(font-lock-doc-face ((t (:foreground ,nekonight-storm-green))))
   `(font-lock-doc-string-face ((t (:foreground ,nekonight-storm-green))))
   `(font-lock-function-name-face ((t (:foreground ,nekonight-storm-blue))))
   `(font-lock-keyword-face ((t (:foreground ,nekonight-storm-pink :bold t))))
   `(font-lock-preprocessor-face ((t (:foreground ,nekonight-storm-cyan))))
   `(font-lock-reference-face ((t (:foreground ,nekonight-storm-cyan))))
   `(font-lock-string-face ((t (:foreground ,nekonight-storm-green))))
   `(font-lock-type-face ((t (:foreground ,nekonight-storm-cyan))))
   `(font-lock-variable-name-face ((t (:foreground ,nekonight-storm-fg+1))))
   `(font-lock-warning-face ((t (:foreground ,nekonight-storm-red))))

   ;; Flymake
   `(flymake-errline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,nekonight-storm-red)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:foreground ,nekonight-storm-red :weight bold :underline t))))
   `(flymake-warnline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,nekonight-storm-pink)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,nekonight-storm-pink :weight bold :underline t))))
   `(flymake-infoline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,nekonight-storm-green)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,nekonight-storm-green :weight bold :underline t))))

      ;; Autocomplete
   `(ac-candidate-face ((t (:background ,nekonight-storm-bg+1 :foreground ,nekonight-storm-fg))))
   `(ac-selection-face ((t (:background ,nekonight-storm-blue :foreground ,nekonight-storm-white :bold t))))
   `(popup-tip-face ((t (:background ,nekonight-storm-green :foreground ,nekonight-storm-bg))))
   `(popup-scroll-bar-foreground-face ((t (:background ,nekonight-storm-bg+3))))
   `(popup-scroll-bar-background-face ((t (:background ,nekonight-storm-bg+1))))
   `(popup-isearch-match ((t (:background ,nekonight-storm-pink :foreground ,nekonight-storm-black))))

   ;; Vertico
   `(vertico-current ((t (:background ,nekonight-storm-bg+2 :foreground ,nekonight-storm-white :bold t))))
   `(vertico-multiline ((t (:foreground ,nekonight-storm-pink))))
   `(vertico-group-title ((t (:foreground ,nekonight-storm-green :bold t))))
   `(vertico-group-separator ((t (:foreground ,nekonight-storm-blue+1))))

   ;; Flyspell
   `(flyspell-incorrect
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,nekonight-storm-red) :inherit unspecified))
      (t (:foreground ,nekonight-storm-red :weight bold :underline t))))
   `(flyspell-duplicate
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,nekonight-storm-pink) :inherit unspecified))
      (t (:foreground ,nekonight-storm-pink :weight bold :underline t))))

   ;; Helm
   `(helm-candidate-number ((t ,(list :background nekonight-storm-bg+2
                                      :foreground nekonight-storm-pink
                                      :bold t))))
   `(helm-ff-directory ((t ,(list :foreground nekonight-storm-blue
                                  :background nekonight-storm-bg
                                  :bold t))))
   `(helm-ff-executable ((t (:foreground ,nekonight-storm-green))))
   `(helm-ff-file ((t (:foreground ,nekonight-storm-fg :inherit unspecified))))
   `(helm-ff-invalid-symlink ((t ,(list :foreground nekonight-storm-bg
                                        :background nekonight-storm-red))))
   `(helm-ff-symlink ((t (:foreground ,nekonight-storm-pink :bold t))))
   `(helm-selection-line ((t (:background ,nekonight-storm-bg+1))))
   `(helm-selection ((t (:background ,nekonight-storm-bg+1 :underline nil))))
   `(helm-source-header ((t ,(list :foreground nekonight-storm-pink
                                   :background nekonight-storm-bg
                                   :box (list :line-width -1
                                              :style 'released-button)))))

   ;; Ido
   `(ido-first-match ((t (:foreground ,nekonight-storm-pink :bold nil))))
   `(ido-only-match ((t (:foreground ,nekonight-storm-orange :weight bold))))
   `(ido-subdir ((t (:foreground ,nekonight-storm-blue :weight bold))))

   ;; Info
   `(info-xref ((t (:foreground ,nekonight-storm-blue))))
   `(info-visited ((t (:foreground ,nekonight-storm-blue+1))))

   ;; Jabber
   `(jabber-chat-prompt-foreign ((t ,(list :foreground nekonight-storm-cyan
                                           :bold nil))))
   `(jabber-chat-prompt-local ((t (:foreground ,nekonight-storm-pink))))
   `(jabber-chat-prompt-system ((t (:foreground ,nekonight-storm-green))))
   `(jabber-rare-time-face ((t (:foreground ,nekonight-storm-green))))
   `(jabber-roster-user-online ((t (:foreground ,nekonight-storm-green))))
   `(jabber-activity-face ((t (:foreground ,nekonight-storm-red))))
   `(jabber-activity-personal-face ((t (:foreground ,nekonight-storm-pink :bold t))))

   ;; Line Highlighting
   `(highlight ((t (:background ,nekonight-storm-bg+1 :foreground nil))))
   `(highlight-current-line-face ((t ,(list :background nekonight-storm-bg+1
                                            :foreground nil))))

   ;; line numbers
   `(line-number ((t (:inherit default :foreground ,nekonight-storm-bg+4))))
   `(line-number-current-line ((t (:inherit line-number :foreground ,nekonight-storm-pink))))

   ;; Linum
   `(linum ((t `(list :foreground nekonight-storm-cyan
                      :background nekonight-storm-bg))))

   ;; Magit
   `(magit-branch ((t (:foreground ,nekonight-storm-blue))))
   `(magit-diff-hunk-header ((t (:background ,nekonight-storm-bg+2))))
   `(magit-diff-file-header ((t (:background ,nekonight-storm-bg+4))))
   `(magit-log-sha1 ((t (:foreground ,nekonight-storm-red+1))))
   `(magit-log-author ((t (:foreground ,nekonight-storm-orange))))
   `(magit-log-head-label-remote ((t ,(list :foreground nekonight-storm-green
                                            :background nekonight-storm-bg+1))))
   `(magit-log-head-label-local ((t ,(list :foreground nekonight-storm-blue
                                           :background nekonight-storm-bg+1))))
   `(magit-log-head-label-tags ((t ,(list :foreground nekonight-storm-pink
                                          :background nekonight-storm-bg+1))))
   `(magit-log-head-label-head ((t ,(list :foreground nekonight-storm-fg
                                          :background nekonight-storm-bg+1))))
   `(magit-item-highlight ((t (:background ,nekonight-storm-bg+1))))
   `(magit-tag ((t ,(list :foreground nekonight-storm-pink
                          :background nekonight-storm-bg))))
   `(magit-blame-heading ((t ,(list :background nekonight-storm-bg+1
                                    :foreground nekonight-storm-fg))))
  
   ;; Message
   `(message-header-name ((t (:foreground ,nekonight-storm-green))))

   ;; Mode Line
   `(mode-line ((t ,(list :background nekonight-storm-bg+1
                          :foreground nekonight-storm-white))))
   `(mode-line-buffer-id ((t ,(list :background nekonight-storm-bg+1
                                    :foreground nekonight-storm-white))))
   `(mode-line-inactive ((t ,(list :background nekonight-storm-bg+1
                                   :foreground nekonight-storm-cyan))))

   ;; Neo Dir
   `(neo-dir-link-face ((t (:foreground ,nekonight-storm-blue))))

   ;; Org Mode
   `(org-agenda-structure ((t (:foreground ,nekonight-storm-blue))))
   `(org-column ((t (:background ,nekonight-storm-bg-1))))
   `(org-column-title ((t (:background ,nekonight-storm-bg-1 :underline t :weight bold))))
   `(org-done ((t (:foreground ,nekonight-storm-green))))
   `(org-todo ((t (:foreground ,nekonight-storm-red-1))))
   `(org-upcoming-deadline ((t (:foreground ,nekonight-storm-pink))))

   ;; Search
   `(isearch ((t ,(list :foreground nekonight-storm-black
                        :background nekonight-storm-fg+2))))
   `(isearch-fail ((t ,(list :foreground nekonight-storm-black
                             :background nekonight-storm-red))))
   `(isearch-lazy-highlight-face ((t ,(list
                                       :foreground nekonight-storm-fg+1
                                       :background nekonight-storm-niagara-1))))

   ;; Sh
   `(sh-quoted-exec ((t (:foreground ,nekonight-storm-red+1))))

   ;; Show Paren
   `(show-paren-match-face ((t (:background ,nekonight-storm-bg+4))))
   `(show-paren-mismatch-face ((t (:background ,nekonight-storm-red-1))))

   ;; Slime
   `(slime-repl-inputed-output-face ((t (:foreground ,nekonight-storm-red))))

   ;; Tuareg
   `(tuareg-font-lock-governing-face ((t (:foreground ,nekonight-storm-pink))))

   ;; Speedbar
   `(speedbar-directory-face ((t ,(list :foreground nekonight-storm-blue
                                        :weight 'bold))))
   `(speedbar-file-face ((t (:foreground ,nekonight-storm-fg))))
   `(speedbar-highlight-face ((t (:background ,nekonight-storm-bg+1))))
   `(speedbar-selected-face ((t (:foreground ,nekonight-storm-red))))
   `(speedbar-tag-face ((t (:foreground ,nekonight-storm-pink))))

   ;; Which Function
   `(which-func ((t (:foreground ,nekonight-storm-blue+1))))

   ;; Whitespace
   `(whitespace-space ((t ,(list :background nekonight-storm-bg
                                 :foreground nekonight-storm-bg+1))))
   `(whitespace-tab ((t ,(list :background nekonight-storm-bg
                               :foreground nekonight-storm-bg+1))))
   `(whitespace-hspace ((t ,(list :background nekonight-storm-bg
                                  :foreground nekonight-storm-bg+2))))
   `(whitespace-line ((t ,(list :background nekonight-storm-bg+2
                                :foreground nekonight-storm-red+1))))
   `(whitespace-newline ((t ,(list :background nekonight-storm-bg
                                   :foreground nekonight-storm-bg+2))))
   `(whitespace-trailing ((t ,(list :background nekonight-storm-red
                                    :foreground nekonight-storm-red))))
   `(whitespace-empty ((t ,(list :background nekonight-storm-pink
                                 :foreground nekonight-storm-pink))))
   `(whitespace-indentation ((t ,(list :background nekonight-storm-pink
                                       :foreground nekonight-storm-red))))
   `(whitespace-space-after-tab ((t ,(list :background nekonight-storm-pink
                                           :foreground nekonight-storm-pink))))
   `(whitespace-space-before-tab ((t ,(list :background nekonight-storm-orange
                                            :foreground nekonight-storm-orange))))

   ;; tab-bar
   `(tab-bar ((t (:background ,nekonight-storm-bg+1 :foreground ,nekonight-storm-bg+4))))
   `(tab-bar-tab ((t (:background nil :foreground ,nekonight-storm-pink :weight bold))))
   `(tab-bar-tab-inactive ((t (:background nil))))

   ;; vterm / ansi-term
   `(term-color-black ((t (:foreground ,nekonight-storm-bg+3 :background ,nekonight-storm-bg+4))))
   `(term-color-red ((t (:foreground ,nekonight-storm-red-1 :background ,nekonight-storm-red-1))))
   `(term-color-green ((t (:foreground ,nekonight-storm-green :background ,nekonight-storm-green))))
   `(term-color-blue ((t (:foreground ,nekonight-storm-blue :background ,nekonight-storm-blue))))
   `(term-color-pink ((t (:foreground ,nekonight-storm-pink :background ,nekonight-storm-pink))))
   `(term-color-magenta ((t (:foreground ,nekonight-storm-blue+1 :background ,nekonight-storm-blue+1))))
   `(term-color-cyan ((t (:foreground ,nekonight-storm-cyan :background ,nekonight-storm-cyan))))
   `(term-color-white ((t (:foreground ,nekonight-storm-fg :background ,nekonight-storm-white))))

   ;; company-mode
   `(company-tooltip ((t (:foreground ,nekonight-storm-fg :background ,nekonight-storm-bg+1))))
   `(company-tooltip-annotation ((t (:foreground ,nekonight-storm-orange :background ,nekonight-storm-bg+1))))
   `(company-tooltip-annotation-selection ((t (:foreground ,nekonight-storm-orange :background ,nekonight-storm-bg-1))))
   `(company-tooltip-selection ((t (:foreground ,nekonight-storm-fg :background ,nekonight-storm-bg-1))))
   `(company-tooltip-mouse ((t (:background ,nekonight-storm-bg-1))))
   `(company-tooltip-common ((t (:foreground ,nekonight-storm-green))))
   `(company-tooltip-common-selection ((t (:foreground ,nekonight-storm-green))))
   `(company-scrollbar-fg ((t (:background ,nekonight-storm-bg-1))))
   `(company-scrollbar-bg ((t (:background ,nekonight-storm-bg+2))))
   `(company-preview ((t (:background ,nekonight-storm-green))))
   `(company-preview-common ((t (:foreground ,nekonight-storm-green :background ,nekonight-storm-bg-1))))

   ;; Proof General
   `(proof-locked-face ((t (:background ,nekonight-storm-purple))))

   ;; Orderless
   `(orderless-match-face-0 ((t (:foreground ,nekonight-storm-pink))))
   `(orderless-match-face-1 ((t (:foreground ,nekonight-storm-green))))
   `(orderless-match-face-2 ((t (:foreground ,nekonight-storm-orange))))
   `(orderless-match-face-3 ((t (:foreground ,nekonight-storm-cyan))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'nekonight-storm)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; nekonight-storm-theme.el ends here.
