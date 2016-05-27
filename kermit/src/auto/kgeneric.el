(TeX-add-style-hook
 "kgeneric"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "a4paper")))
   (TeX-run-style-hooks
    "leqno"
    "fleqn"
    "geometry"
    "calc"
    "xifthen"
    "keyval"
    "kvoptions"
    "relsize"
    "fancyhdr"
    "caption")
   (TeX-add-symbols
    '("descriptionlabel" 1)
    '("chaptermark" 1)
    '("paperid" 1)
    "set"
    "part"
    "chapter"
    "section"
    "subsection"
    "subsubsection"
    "paragraph"
    "subparagraph"
    "appendixnum"
    "appendix"
    "rm"
    "sf"
    "tt"
    "bf"
    "it"
    "sl"
    "sc"
    "cal"
    "mit"
    "tableofcontents"
    "l"
    "listoffigures"
    "listoftables"
    "bibindent"
    "newblock"
    "subitem"
    "subsubitem"
    "indexspace"
    "contentsname"
    "listfigurename"
    "listtablename"
    "bibname"
    "indexname"
    "figurename"
    "tablename"
    "partname"
    "chaptername"
    "appendixname"
    "abstractname"
    "today"
    "DivFontShape"
    "DivFontSize"
    "DivPosition"
    "partFontShape"
    "partFontSize"
    "partPosition"
    "chapterFontShape"
    "chapterFontSize"
    "chapterPosition"
    "sectionFontShape"
    "sectionFontSize"
    "sectionPosition"
    "subsectionFontShape"
    "subsectionFontSize"
    "subsectionPosition"
    "subsubsectionFontShape"
    "subsubsectionFontSize"
    "subsubsectionPosition"
    "paragraphFontShape"
    "paragraphFontSize"
    "paragraphPosition"
    "subparagraphFontShape"
    "subparagraphFontSize"
    "subparagraphPosition"
    "contentsnameFontShape"
    "contentsnameFontSize"
    "contentsnamePosition"
    "mainlanguage"
    "ProcessOptionsWithKV"
    "chaptermark"
    "sectionmark"
    "footnotesize"
    "footnoterule"
    "thanks"
    "maketitle"
    "title"
    "author"
    "date"
    "and"
    "makelabel"
    "item")
   (LaTeX-add-environments
    '("thebibliography" 1)
    "description"
    "abstract"
    "verse"
    "quotation"
    "quote"
    "titlepage"
    "figure"
    "table"
    "theindex")
   (LaTeX-add-pagestyles
    "headings"
    "myheadings")
   (LaTeX-add-counters
    "tempCntA"
    "tempCntB"
    "tempCntC"
    "NumberOfColumn"
    "part"
    "chapter"
    "section"
    "subsection"
    "subsubsection"
    "paragraph"
    "subparagraph"
    "figure"
    "table")
   (LaTeX-add-lengths
    "baselineinterval"
    "abovecaptionskip"
    "belowcaptionskip")))

