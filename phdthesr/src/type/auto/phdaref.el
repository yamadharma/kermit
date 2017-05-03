(TeX-add-style-hook
 "phdaref"
 (lambda ()
   (TeX-run-style-hooks
    "setspace")
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
    "makesecondpage"))
 :latex)

