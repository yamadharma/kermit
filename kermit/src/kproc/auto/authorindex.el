(TeX-add-style-hook
 "authorindex"
 (lambda ()
   (TeX-run-style-hooks
    "indextools")
   (TeX-add-symbols
    "authorindexname")))

