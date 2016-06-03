(TeX-add-style-hook
 "bibunits"
 (lambda ()
   (TeX-add-symbols
    '("putaltbib" ["argument"] 0)
    '("curaltlanguage" 1)
    '("curbibstyle" 1)
    '("altbibstyle" 1)
    '("mainbibstyle" 1)
    "PFUmainbibstyle"
    "PFUaltbibstyle"
    "PFUcurbibstyle"
    "PFUcuraltlanguage"
    "refname")
   (LaTeX-add-labels
    "endtitle")))

