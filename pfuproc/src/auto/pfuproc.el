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
    "currfile")
   (TeX-add-symbols
    '("country" 1)
    '("phone" 1)
    '("email" 1)
    '("authorpost" 1)
    '("authordegree" 1)
    '("authorrank" 1)
    '("authorfull" 1)
    "authorlistFontShape"
    "series"
    "PFUpaperid"
    "listauthorsname"
    "listofauthors")
   (LaTeX-add-environments
    "authordescription")))

