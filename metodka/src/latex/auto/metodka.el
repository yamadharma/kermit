(TeX-add-style-hook
 "metodka"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("titlesec" "clearempty")))
   (TeX-run-style-hooks
    "latex2e"
    "kgeneric"
    "kgeneric10"
    "keyval"
    "xspace"
    "substr"
    "titlesec"
    "xifthen"
    "truncate"
    "titletoc"
    "amsmath"
    "currfile")
   (TeX-add-symbols
    "partaftersnum"
    "chapaftersnum"
    "secaftersnum"
    "partbreak"
    "rightmark")
   (LaTeX-add-lengths
    "sectionmarkWidth"
    "chaptermarkWidth"
    "PFUmarkWidth"))
 :latex)

