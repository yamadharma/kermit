(TeX-add-style-hook
 "authorindex"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("indextools" "noautomatic")))
   (TeX-run-style-hooks
    "indextools")
   (TeX-add-symbols
    "authorindexname"))
 :latex)

