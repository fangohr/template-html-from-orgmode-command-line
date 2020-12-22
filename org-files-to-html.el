#!/usr/bin/env emacs --script
;; Emacs script for exporting multiple org files to html
;
;; Author: Sam Sinayoko, Hans Fangohr, 27/12/2015, 3/12/2016, 7/12/2020

;;(require 'ox-html)

;; Define an interactive function for easy testing
(defun org-export-to-html (files)
    "Export all files passed to function as html"
    (interactive "Export org files to html")
    (save-excursion
      (let ((org-files-lst ))
        (dolist (org-file files)
          (message "*** Exporting file %s to html ***" org-file)
          (find-file org-file)
          (org-html-export-to-html)
          (kill-buffer)))))


;; Export all org files given on the command line
(org-export-to-html argv)

;; Use this from the command line with "emacs notes.org --script ./org-files-to-html.el"
