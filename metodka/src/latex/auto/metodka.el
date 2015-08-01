(TeX-add-style-hook
 "metodka"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("titlesec" "clearempty")))
   (TeX-run-style-hooks
    "kgeneric"
    "kgeneric10"
    "keyval"
    "substr"
    "titlesec"
    "xifthen"
    "truncate"
    "titletoc"
    "currfile")
   (TeX-add-symbols
    "partaftersnum"
    "chapaftersnum"
    "secaftersnum"
    "partbreak")
   (LaTeX-add-lengths
    "sectionmarkWidth"
    "chaptermarkWidth"
    "PFUmarkWidth")))
