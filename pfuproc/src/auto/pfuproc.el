(TeX-add-style-hook "pfuproc"
 (lambda ()
    (TeX-add-symbols
     '("phone" 1)
     '("email" 1)
     '("authorpost" 1)
     '("authordegree" 1)
     '("authorrank" 1)
     '("authorfull" 1)
     "writeauthorlist")
    (TeX-run-style-hooks
     "kproc10"
     "kproc")))

