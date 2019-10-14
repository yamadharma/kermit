(TeX-add-style-hook
 "pfu-dcm"
 (lambda ()
   (TeX-run-style-hooks
    "pfuproc/style/pfu-bulletin"
    "truncate"
    "gost7184"
    "cite")
   (TeX-add-symbols
    '("href" 1)))
 :latex)

