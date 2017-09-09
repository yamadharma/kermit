(TeX-add-style-hook
 "pfuproc"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "a4paper")))
   (TeX-run-style-hooks
    "preamble"
    "xkeyval"
    "geometry"
    "kproc"
    "kproc10"
    "currfile"
    "scrlfile")
   (TeX-add-symbols
    '("country" 1)
    '("phone" 1)
    '("email" 1)
    '("authorpost" 1)
    '("authordegree" 1)
    '("authorrank" 1)
    '("authorfull" 1)
    "authorlistFontShape"
    "howtoCiteRu"
    "howtoCiteEn"
    "series"
    "PFUpaperid"
    "listauthorsname"
    "listofauthors"
    "papercopyright")
   (LaTeX-add-environments
    "authordescription"))
 :latex)

