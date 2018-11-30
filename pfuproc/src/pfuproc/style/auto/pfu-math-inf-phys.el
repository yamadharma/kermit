(TeX-add-style-hook
 "pfu-math-inf-phys"
 (lambda ()
   (TeX-run-style-hooks
    "pfuproc/style/pfu-bulletin"
    "truncate"
    "gost7184"
    "cite"))
 :latex)

