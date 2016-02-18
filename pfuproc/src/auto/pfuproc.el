(TeX-add-style-hook
 "pfuproc"
 (lambda ()
   (TeX-run-style-hooks
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
    "PFUpaperid"
    "listofauthors")
   (LaTeX-add-environments
    "authordescription")))

