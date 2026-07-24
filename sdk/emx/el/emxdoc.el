;;; emxdoc.el --- Major mode for editing emxdoc .src files

;; Copyright (C) 1994-1995 Eberhard Mattes

;; Author: Eberhard Mattes <mattes@azu.informatik.uni-stuttgart.de>
;; Keywords: emxdoc

;; This file is part of GNU Emacs.

;; GNU Emacs is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.

;;; Commentary:

;;
;; Put this into your .emacs file:
;;
;; (setq auto-mode-alist (cons (cons "\\.src$" 'emxdoc-mode) auto-mode-alist))
;; (autoload 'emxdoc-mode "emxdoc" "Major mode for editing emxdoc files."
;;           t nil)
;;

;;; Code:

(provide 'emxdoc)

(defvar emxdoc-mode-abbrev-table nil
  "Abbrev table in use in emxdoc-mode buffers.")
(define-abbrev-table 'emxdoc-mode-abbrev-table ())

(defun emxdoc-mode ()
  "Major mode for editing emxdoc files.\\{emxdoc-mode-map}
Turning on emxdoc-mode calls the value of the variable emxdoc-mode-hook,
if that value is non-nil."
  (interactive)
  (kill-all-local-variables)
  (use-local-map emxdoc-mode-map)
  (setq local-abbrev-table emxdoc-mode-abbrev-table)
  (set-syntax-table emxdoc-mode-syntax-table)
  (make-local-variable 'indent-line-function)
  (setq indent-line-function 'indent-to-left-margin)
  (make-local-variable 'comment-start)
  (setq comment-start "þc ")
  (make-local-variable 'comment-start-skip)
  (setq comment-start-skip "þc +")
  (make-local-variable 'comment-column)
  (setq comment-column 0)
  (make-local-variable 'paragraph-separate)
  (setq paragraph-separate "^\\([ \t\f]*$\\|þ\\)")
  (make-local-variable 'paragraph-start)
  (setq paragraph-start "^[ \t\n\fþ]")
  (setq mode-name "EMXDOC")
  (setq major-mode 'emxdoc-mode)
  (run-hooks 'emxdoc-mode-hook))

(defvar emxdoc-mode-map ()
  "Keymap used in emxdoc-mode.")
(if emxdoc-mode-map
    ()
  (setq emxdoc-mode-map (make-sparse-keymap))
  (define-key emxdoc-mode-map [?\C-c ?\C-t] 'emxdoc-tt-word)
  (define-key emxdoc-mode-map [f8] 'emxdoc-insert-esc))

(defvar emxdoc-mode-syntax-table nil
  "Syntax table in use in emxdoc-mode buffers.")

(if emxdoc-mode-syntax-table
    nil
  (setq emxdoc-mode-syntax-table (make-syntax-table))
;;  (modify-syntax-entry ?\' "\"" emxdoc-mode-syntax-table)
;;  (modify-syntax-entry ?\" "\"" emxdoc-mode-syntax-table)
  )

(defun emxdoc-insert-esc ()
  (interactive)
  (insert "þ"))

(defun emxdoc-tt-word (&optional arg)
  (interactive "p")
  (or arg (setq arg 1))
  (insert "þtt{")
  (forward-word arg)
  (insert "}"))

;;; emxdoc.el ends here
