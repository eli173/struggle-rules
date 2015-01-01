(TeX-add-style-hook
 "teleporter"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("subfile" "rulebook.tex")))
   (TeX-run-style-hooks
    "latex2e"
    "subfile"
    "subfile10")))

