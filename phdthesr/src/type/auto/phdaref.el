(TeX-add-style-hook "phdaref"
 (lambda ()
    (TeX-add-symbols
     "PHDright"
     "PHDchiefDescr"
     "PHDopponentsDescr"
     "PHDleadorgDescr"
     "PHDsecracDescr"
     "PHDdisciplineDescr"
     "PHDsendtext"
     "PHDyearshort"
     "PHDfieldtext"
     "footnotesize"
     "footnoterule"
     "makesecondpage")
    (TeX-run-style-hooks
     "setspace"
     "")))

