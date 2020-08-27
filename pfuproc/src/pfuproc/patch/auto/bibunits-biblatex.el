(TeX-add-style-hook
 "bibunits-biblatex"
 (lambda ()
   (TeX-add-symbols
    '("putbib" ["argument"] 0)
    "string")
   (LaTeX-add-labels
    "endtitle"))
 :latex)

