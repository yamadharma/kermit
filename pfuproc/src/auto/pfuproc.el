(TeX-add-style-hook "pfuproc"
 (lambda ()
    (LaTeX-add-environments
     "authordescription")
    (TeX-add-symbols
     '("phone" 1)
     '("email" 1)
     '("authorpost" 1)
     '("authordegree" 1)
     '("authorrank" 1)
     '("authorfull" 1)
     "authorFont"
     "listofauthors")
    (TeX-run-style-hooks
     "babel"
     "english"
     "russian"
     "fontenc"
     "T2A"
     "inputenc"
     "cp1251"
     "latex2e"
     "art10"
     "article"
     "kproc10"
     "kproc")))

