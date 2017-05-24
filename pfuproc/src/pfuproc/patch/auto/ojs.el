(TeX-add-style-hook
 "ojs"
 (lambda ()
   (TeX-run-style-hooks
    "morewrites"
    "refcount"
    "scrlfile")
   (TeX-add-symbols
    "parttoc"
    "parttac")
   (LaTeX-add-counters
    "authordetail"))
 :latex)

