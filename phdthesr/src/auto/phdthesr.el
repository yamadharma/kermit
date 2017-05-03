(TeX-add-style-hook
 "phdthesr"
 (lambda ()
   (TeX-run-style-hooks
    "keyval"
    "substr"
    "xifthen"
    "kgeneric"
    "kgeneric10"
    "titlesec"
    "titletoc"
    "fancyhdr")
   (TeX-add-symbols
    '("sendmonth" 1)
    '("sendday" 1)
    '("feedbackArefIn" 1)
    '("libraryIn" 1)
    '("thesisIn" 1)
    '("writeIn" 1)
    '("discouncil" 1)
    '("secracsign" 1)
    '("secracdegree" 1)
    '("secrac" 1)
    '("oppiiidegree" 1)
    '("oppiii" 1)
    '("oppiidegree" 1)
    '("oppii" 1)
    '("oppidegree" 1)
    '("oppi" 1)
    '("leadorg" 1)
    '("thesisSubtype" 1)
    '("studentdegree" 1)
    '("studentid" 1)
    '("studygroup" 1)
    '("country" 1)
    '("author" 1)
    '("title" 1)
    '("discipline" 1)
    '("degreeyear" 1)
    '("degreecity" 1)
    '("depchief" 1)
    '("depchiefdegree" 1)
    '("depchieftitle" 1)
    '("chief" 1)
    '("chiefdegree" 1)
    '("chieftitle" 1)
    '("thesistype" 1)
    '("faculty" 1)
    '("ministry" 1)
    '("institut" 1)
    '("institutePrep" 1)
    '("instituteGen" 1)
    '("institute" 1)
    '("program" 1)
    '("field" 1)
    '("chairname" 1)
    '("chair" 1)
    '("scidegree" 1)
    "zz"
    "zzz"
    "descriptionmargin"
    "headerFontSize"
    "ssp"
    "dsp"
    "smallssp"
    "scriptsizessp"
    "baselinestretch"
    "no"
    "PHDdegree"
    "prevdegrees"
    "PHDchair"
    "PHDchairname"
    "othermembers"
    "numberofmembers"
    "PHDfield"
    "PHDprogram"
    "PHDinstituteGen"
    "PHDinstitutePrep"
    "PHDinstitute"
    "PHDinstitut"
    "PHDministry"
    "PHDfaculty"
    "PHDthesistype"
    "PHDchieftitle"
    "PHDchiefdegree"
    "PHDchief"
    "PHDdepchieftitle"
    "PHDdepchiefdegree"
    "PHDdepchief"
    "PHDdegreecity"
    "PHDdegreeyear"
    "PHDdiscipline"
    "PHDtitle"
    "PHDauthor"
    "PHDcountry"
    "PHDstudygroup"
    "PHDstudentid"
    "PHDstudentdegree"
    "PHDthesisSubtype"
    "PHDleadorg"
    "PHDoppi"
    "PHDoppidegree"
    "PHDoppii"
    "PHDoppiidegree"
    "PHDoppiii"
    "PHDoppiiidegree"
    "PHDsecrac"
    "PHDsecracdegree"
    "PHDsecracsign"
    "PHDdiscouncil"
    "PHDwriteIn"
    "PHDthesisIn"
    "PHDlibraryIn"
    "PHDfeedbackArefIn"
    "PHDsendday"
    "PHDsendmonth"
    "ProcessClassOptionsWithKV"
    "type"
    "SetPFUprocKey"
    "titul"
    "approvalpage"
    "copyrightpage"
    "abstractsignature"
    "descriptionlabel"
    "makelabel"
    "array"
    "tabular"
    "listoffigures"
    "listoftables"
    "newblock"
    "item"
    "subitem"
    "subsubitem"
    "indexspace"
    "footnoterule"
    "topfraction"
    "bottomfraction"
    "textfraction"
    "floatpagefraction"
    "dbltopfraction"
    "dblfloatpagefraction"
    "today"
    "theequation"
    "printcitestart"
    "printcitefinish")
   (LaTeX-add-environments
    "theindex"
    "thebibliography"
    "scriptsizetabular"
    "smalltabular"
    "description"
    "quote"
    "quotation"
    "verse"
    "abstract"
    "alwayssingle"
    "dedication"
    "acknowledgements")
   (LaTeX-add-pagestyles
    "plain"))
 :latex)

