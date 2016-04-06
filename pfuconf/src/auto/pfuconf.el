(TeX-add-style-hook
 "pfuconf"
 (lambda ()
   (TeX-run-style-hooks
    "kproc"
    "kproc10")
   (TeX-add-symbols
    '("trackid" 1))))

