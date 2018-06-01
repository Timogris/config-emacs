;;(org-babel-load-file "~/.emacs.d/configuration.org")

(package-initialize)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
;;(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

;; Update packages
(when (not package-archive-contents)
    (package-refresh-contents))

(require 'evil)
(evil-mode 1)

(require 'powerline)

(powerline-default-theme)

(setq visible-bell 1)

(global-visual-line-mode 1)

(global-linum-mode t)

(minimap-mode 1)

;; Move it to the right.

(setq minimap-window-location 'right)

;; Make it work with HTML and Org.

(add-to-list 'minimap-major-modes 'org-mode)
(add-to-list 'minimap-major-modes 'html-mode)

;;Change background color from old, distracting red to new, refreshing D3D3D3

(custom-set-faces
  '(minimap-active-region-background
    ((((background dark)) (:background "#2A2A2A222222"))
      (t (:background "#D3D3D3222222")))
;;    "Face for the active region in the minimap.
;;By default, this is only a different background color."
    :group 'minimap))

(defun vsplit-last-buffer ()
  (interactive)
  (split-window-vertically)
  (other-window 1 nil)
  (switch-to-next-buffer)
  )
(defun hsplit-last-buffer ()
  (interactive)
  (split-window-horizontally)
  (other-window 1 nil)
  (switch-to-next-buffer)
  )
 
(global-set-key (kbd "C-x 2") 'vsplit-last-buffer)
(global-set-key (kbd "C-x 3") 'hsplit-last-buffer)

(defun fullscreen ()
       (interactive)
       (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
                 '(2 "_NET_WM_STATE_FULLSCREEN" 0)))

;; comment line below to disable		 
;;(fullscreen)

(server-start)

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(require 'ox-beamer)

(require 'ox-latex)
(add-to-list 'org-latex-classes
             '("beamer"
               "\\documentclass\[presentation\]\{beamer\}"
               ("\\section\{%s\}" . "\\section*\{%s\}")
               ("\\subsection\{%s\}" . "\\subsection*\{%s\}")
               ("\\subsubsection\{%s\}" . "\\subsubsection*\{%s\}")))

(require 'ox-beamer)

(setq org-todo-keywords
  '((sequence "TODO(t)" "RDV(r)" "WAIT(w@/!)" "|" "DONE(d!)" "CANCELED(c@)")))

(setq org-src-fontify-natively t)

;; always enabled
(global-flycheck-mode)
(add-hook 'after-init-hook #'global-flycheck-mode)

(global-company-mode 1)
(setq company-dabbrev-downcase 0)
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 2)

(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))

(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

(elpy-enable)
(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i --simple-prompt")

(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

;; Tabbar
(require 'tabbar)
;; Tabbar settings
(set-face-attribute
 'tabbar-default nil
 :background "#282c34"
 :foreground "#282c34"
 :box '(:line-width 1 :color "#282c34" :style nil))
(set-face-attribute
 'tabbar-unselected nil
 :background "#5c6370"
 :foreground "#abb2bf"
 :box '(:line-width 5 :color "#5c6370" :style nil))
(set-face-attribute
 'tabbar-selected nil
 :background "#282c34"
 :foreground "#abb2bf"
 :box '(:line-width 5 :color "#282c34" :style nil))
(set-face-attribute
 'tabbar-highlight nil
 :background "#abb2bf"
 :foreground "#282c34"
 :underline nil
 :box '(:line-width 5 :color "#abb2bf" :style nil))
(set-face-attribute
 'tabbar-button nil
 :box '(:line-width 1 :color "#282c34" :style nil))
(set-face-attribute
 'tabbar-separator nil
 :background "#282c34"
 :height 0.6)
(set-face-attribute
 'tabbar-modified nil
 :background "#5c6370"
 :foreground "#e06c75"
 :underline nil
 :box '(:line-width 5 :color "#5c6370" :style nil))
(set-face-attribute
 'tabbar-selected-modified nil
 :background "#282c34"
 :foreground "#e06c75"
 :underline nil
 :box '(:line-width 5 :color "#282c34" :style nil))

;; Changes padding of the tabs
;; we also need to set separators to avoid overlapping tabs by highlighted tabs
(custom-set-variables
 '(tabbar-separator (quote (0.5))))
;; adding spaces
(defun tabbar-buffer-tab-label (tab)
  "Return a label for TAB.
That is, a string used to represent it on the tab bar."
  (let ((label  (if tabbar--buffer-show-groups
                    (format "[%s]  " (tabbar-tab-tabset tab))
                  (format "%s  " (tabbar-tab-value tab)))))
    ;; Unless the tab bar auto scrolls to keep the selected tab
    ;; visible, shorten the tab label to keep as many tabs as possible
    ;; in the visible area of the tab bar.
    (if tabbar-auto-scroll-flag
        label
      (tabbar-shorten
       label (max 1 (/ (window-width)
                       (length (tabbar-view
(tabbar-current-tabset)))))))))

;; enable tabbars globally
(tabbar-mode 1)

(global-set-key (kbd "C-c a") 'org-agenda)

(global-set-key [f9] 'toggle-menu-bar-mode-from-frame)

(global-set-key (kbd "C-S-p") 'tabbar-backward-group)
(global-set-key (kbd "C-S-n") 'tabbar-forward-group)
(global-set-key (kbd "C-<") 'tabbar-backward)
(global-set-key (kbd "C->") 'tabbar-forward) ;; tabbar.el, put all the buffers on the tabs.
