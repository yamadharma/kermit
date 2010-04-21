(TeX-add-style-hook "master"
 (lambda ()
    (TeX-add-symbols
     "PHDauthorDescr"
     "PHDstudygroupDescr"
     "PHDcountryDescr"
     "PHDchiefDescr"
     "PHDdisciplineDescr"
     "brsTableText"
     "brsTablePresentation"
     "brsTableProtection"
     "footnotesize"
     "footnoterule")
    (TeX-run-style-hooks
     "mdwtab"
     "phdthesr/type/title-brs")))

