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
     "kproc10"
     "kproc"
     "preamble")))

