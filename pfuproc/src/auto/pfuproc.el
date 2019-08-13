(TeX-add-style-hook
 "pfuproc"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "a4paper")))
   (TeX-run-style-hooks
    "latex2e"
    "xkeyval"
    "geometry"
    "kproc"
    "kproc10"
    "currfile"
    "xstring"
    "scrlfile")
   (TeX-add-symbols
    '("country" ["argument"] 1)
    '("authorpost" ["argument"] 1)
    '("authordegree" ["argument"] 1)
    '("authorrank" ["argument"] 1)
    '("authorfull" ["argument"] 1)
    '("cclogo" 1)
    '("titlelogoBottom" 1)
    '("titlelogoTop" 1)
    '("titlelogo" 1)
    '("scopusauthorid" 1)
    '("researcherid" 1)
    '("orcid" 1)
    '("phone" 1)
    '("email" 1)
    "authorlistFontShape"
    "howtoCiteRu"
    "howtoCiteEn"
    "series"
    "PFUpaperid"
    "listofauthors"
    "listofauthorsPerTitleRu"
    "listofauthorsPerTitleEn"
    "PFUtitlelogo"
    "papercopyright")
   (LaTeX-add-environments
    "authordescription")
   (LaTeX-add-lengths
    "lheadwidth"
    "rheadwidth"
    "cheadwidth"))
 :latex)

