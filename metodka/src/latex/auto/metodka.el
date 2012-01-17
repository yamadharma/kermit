(TeX-add-style-hook "metodka"
 (lambda ()
    (TeX-add-symbols
     "chapaftersnum"
     "secaftersnum")
    (TeX-run-style-hooks
     "titletoc"
     "truncate"
     "ifthen"
     "titlesec"
     "substr"
     "keyval"
     "kgeneric10"
     "kgeneric")))

