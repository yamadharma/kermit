(TeX-add-style-hook
 "master"
 (lambda ()
   (TeX-run-style-hooks
    "phdthesr/type/title-brs")
   (TeX-add-symbols
    "PHDstudygroupDescr"
    "PHDcountryDescr"
    "PHDchiefDescr"
    "PHDdisciplineDescr"
    "brsTableText"
    "brsTablePresentation"
    "brsTableProtection")))

