;;; evil-collection-package-menu.el --- Evil bindings for package-menu -*- lexical-binding: t -*-

;; Copyright (C) 2017 James Nguyen

;; Author: James Nguyen <james@jojojames.com>
;; Maintainer: James Nguyen <james@jojojames.com>
;; Pierre Neidhardt <ambrevar@gmail.com>
;; URL: https://github.com/emacs-evil/evil-collection
;; Version: 0.0.1
;; Package-Requires: ((emacs "25.1"))
;; Keywords: evil, package-menu, tools

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;; Evil integration for `package-menu-mode'.

;;; Code:
(require 'evil)
(require 'package)

(defun evil-collection-package-menu-setup ()
  "Set up `evil' bindings for `package-menu'."
  (evil-set-initial-state 'package-menu-mode 'normal)

  (evil-define-key 'normal package-menu-mode-map
    "i" 'package-menu-mark-install
    "U" 'package-menu-mark-upgrades
    "d" 'package-menu-mark-delete

    ;; undo
    "u" 'package-menu-mark-unmark

    ;; execute
    "x" 'package-menu-execute

    "q" 'quit-window ;; FIXME: Can macros make sense here?
    "ZQ" 'evil-quit
    "ZZ" 'quit-window))

(provide 'evil-collection-package-menu)
;;; evil-collection-package-menu.el ends here
