(TeX-add-style-hook
 "grimreaper"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("subfiles" "rulebook.tex")))
   (TeX-run-style-hooks
    "latex2e"
    "subfiles"
    "subfiles10")))
