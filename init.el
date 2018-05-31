
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(org-babel-load-file "~/.emacs.d/configuration.org")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Linum-format "%7i ")
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#657b83"])
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (dracula)))
 '(custom-safe-themes
   (quote
    ("7366916327c60fdf17b53b4ac7f565866c38e1b4a27345fe7facbf16b7a4e9e8" "b050365105e429cb517d98f9a267d30c89336e36b109a1723d95bc0f7ce8c11d" "3fa81193ab414a4d54cde427c2662337c2cab5dd4eb17ffff0d90bca97581eb6" "42b9d85321f5a152a6aef0cc8173e701f572175d6711361955ecfb4943fe93af" "021720af46e6e78e2be7875b2b5b05344f4e21fad70d17af7acfd6922386b61e" "ed0b4fc082715fc1d6a547650752cd8ec76c400ef72eb159543db1770a27caa7" "cc60d17db31a53adf93ec6fad5a9cfff6e177664994a52346f81f62840fe8e23" "36ca8f60565af20ef4f30783aa16a26d96c02df7b4e54e9900a5138fb33808da" "bf798e9e8ff00d4bf2512597f36e5a135ce48e477ce88a0764cfb5d8104e8163" "c9ddf33b383e74dac7690255dd2c3dfa1961a8e8a1d20e401c6572febef61045" "1db337246ebc9c083be0d728f8d20913a0f46edc0a00277746ba411c149d7fe5" "01e067188b0b53325fc0a1c6e06643d7e52bc16b6653de2926a480861ad5aa78" "b9cbfb43711effa2e0a7fbc99d5e7522d8d8c1c151a3194a4b176ec17c9a8215" "291588d57d863d0394a0d207647d9f24d1a8083bb0c9e8808280b46996f3eb83" "30f7c9e85d7fad93cf4b5a97c319f612754374f134f8202d1c74b0c58404b8df" "bc40f613df8e0d8f31c5eb3380b61f587e1b5bc439212e03d4ea44b26b4f408a" "28ec8ccf6190f6a73812df9bc91df54ce1d6132f18b4c8fcc85d45298569eb53" "9fe1540491fcf692b8c639a3abacd32b29233bc4cb834a12a0fd1e01cbd0a128" "a4df5d4a4c343b2712a8ed16bc1488807cd71b25e3108e648d4a26b02bc990b3" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "e11569fd7e31321a33358ee4b232c2d3cf05caccd90f896e1df6cab228191109" "43c1a8090ed19ab3c0b1490ce412f78f157d69a29828aa977dae941b994b4147" "9deeab438d1d798c26d41c759d74a2406802427ff6acb7dec8cec961bcb4e7d5" "a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" "732b807b0543855541743429c9979ebfb363e27ec91e82f463c91e68c772f6e3" "9a155066ec746201156bb39f7518c1828a73d67742e11271e4f24b7b178c4710" "6dd2b995238b4943431af56c5c9c0c825258c2de87b6c936ee88d6bb1e577cb9" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "b59d7adea7873d58160d368d42828e7ac670340f11f36f67fa8071dbf957236a" default)))
 '(doc-view-pdf->png-converter-function (quote doc-view-pdf->png-converter-ghostscript))
 '(fci-rule-character-color "#202020")
 '(fci-rule-color "#073642")
 '(fringe-mode 4 nil (fringe))
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(hl-sexp-background-color "#1c1f26")
 '(inhibit-startup-screen nil)
 '(initial-buffer-choice "~/.emacs.d/todo.org")
 '(linum-format (quote dynamic))
 '(magit-diff-use-overlays nil)
 '(main-line-color1 "#1E1E1E")
 '(main-line-color2 "#111111")
 '(main-line-separator-style (quote chamfer))
 '(minimap-buffer-name " *MINIMAP*")
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(org-agenda-files (quote ("~/.emacs.d/todo.org")))
 '(package-selected-packages
   (quote
    (py-autopep8 flycheck elpy gruvbox-theme magithub evil-magit magit cherry-blossom-theme ample-zen-theme ample-theme moe-theme soothe-theme afternoon-theme dracula-theme zenburn-theme cyberpunk-theme ujelly-theme material-theme leuven-theme s faceup racket-mode color-theme-solarized color-theme atom-one-dark-theme evil-tabs elscreen tabbar evil-collection sublimity minimap pretty-mode ## company-c-headers babel-repl company-irony irony ox-html5slide ox-twbs org-bullets solarized-theme markdown-mode+ evil airline-themes)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(powerline-color1 "#1E1E1E")
 '(powerline-color2 "#111111")
 '(scroll-bar-mode nil)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(tabbar-separator (quote (0.5)))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(tool-bar-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#c85d17")
     (60 . "#be730b")
     (80 . "#b58900")
     (100 . "#a58e00")
     (120 . "#9d9100")
     (140 . "#959300")
     (160 . "#8d9600")
     (180 . "#859900")
     (200 . "#669b32")
     (220 . "#579d4c")
     (240 . "#489e65")
     (260 . "#399f7e")
     (280 . "#2aa198")
     (300 . "#2898af")
     (320 . "#2793ba")
     (340 . "#268fc6")
     (360 . "#268bd2"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Fira Mono" :foundry "CTDB" :slant normal :weight normal :height 97 :width normal))))
 '(minimap-active-region-background ((((background dark)) (:background "#2A2A2A222222")) (t (:background "#D3D3D3222222"))) nil :group)
 '(org-level-1 ((t (:inherit default))))
 '(org-level-2 ((t (:inherit default))))
 '(org-level-3 ((t (:inherit default))))
 '(org-level-4 ((t (:inherit default))))
 '(org-level-5 ((t (:inherit default))))
 '(org-level-6 ((t (:inherit default))))
 '(org-level-7 ((t (:inherit default))))
 '(org-level-8 ((t (:inherit default))))
 '(org-todo ((t (:foreground "#2aa198" :weight normal)))))
