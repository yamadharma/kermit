(TeX-add-style-hook
 "pfuconf"
 (lambda ()
   (TeX-run-style-hooks
    "latex2e"
    "xkeyval"
    "kproc"
    "kproc10")
   (TeX-add-symbols
    '("trackid" 1)
    "PFUexport"))
 :latex)

