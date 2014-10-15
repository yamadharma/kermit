(TeX-add-style-hook "pfuproc"
 (lambda ()
    (LaTeX-add-environments
     "authordescription")
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
    (TeX-run-style-hooks
     "currfile"
     "kproc10"
     "kproc"
     "")))

