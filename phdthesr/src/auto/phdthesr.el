(TeX-add-style-hook "phdthesr"
 (lambda ()
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
    (TeX-add-symbols
     '("feedbackArefIn" 1)
     '("libraryIn" 1)
     '("thesisIn" 1)
     '("writeIn" 1)
     '("discouncil" 1)
     '("secracdegree" 1)
     '("secrac" 1)
     '("oppiidegree" 1)
     '("oppii" 1)
     '("oppidegree" 1)
     '("oppi" 1)
     '("leadorg" 1)
     '("thesisSubtype" 1)
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
     '("thesistype" 1)
     '("faculty" 1)
     '("ministry" 1)
     '("institut" 1)
     '("institutePrep" 1)
     '("instituteGen" 1)
     '("institute" 1)
     '("field" 1)
     '("chair" 1)
     '("scidegree" 1)
     "zz"
     "zzz"
     "descriptionmargin"
     "headerFontSize"
     "batchcite"
     "hiddencite"
     "ssp"
     "dsp"
     "smallssp"
     "scriptsizessp"
     "baselinestretch"
     "no"
     "PHDdegree"
     "prevdegrees"
     "PHDchair"
     "othermembers"
     "numberofmembers"
     "PHDfield"
     "PHDinstituteGen"
     "PHDinstitutePrep"
     "PHDinstitute"
     "PHDinstitut"
     "PHDministry"
     "PHDfaculty"
     "PHDthesistype"
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
     "PHDthesisSubtype"
     "PHDleadorg"
     "PHDoppi"
     "PHDoppidegree"
     "PHDoppii"
     "PHDoppiidegree"
     "PHDsecrac"
     "PHDsecracdegree"
     "PHDdiscouncil"
     "PHDwriteIn"
     "PHDthesisIn"
     "PHDlibraryIn"
     "PHDfeedbackArefIn"
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
     "include"
     "printcitestart"
     "printcitefinish")
    (TeX-run-style-hooks
     "fancyhdr"
     "titletoc"
     "titlesec"
     "kgeneric10"
     "kgeneric"
     "xifthen"
     "substr"
     "keyval")))
