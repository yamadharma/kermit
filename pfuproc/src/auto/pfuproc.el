(TeX-add-style-hook
 "pfuproc"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "a4paper")))
   (TeX-run-style-hooks
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
    "papercopyright")
   (LaTeX-add-environments
    "authordescription"))
 :latex)

