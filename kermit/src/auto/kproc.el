(TeX-add-style-hook
 "kproc"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("datetime" "nodayofweek" "us") ("titlesec" "indentafter")))
   (TeX-run-style-hooks
    "latex2e"
    "etoolbox"
    "xkeyval"
    "substr"
    "xifthen"
    "kgeneric"
    "kgeneric10"
    "longtable"
    "ltxgrid"
    "array"
    "caption"
    "ltcaption"
    "truncate"
    "fancyhdr"
    "xstring"
    "xparse"
    "xspace"
    "datetime"
    "titlesec")
   (TeX-add-symbols
    "endverse"
    '("part" ["argument"] 1)
    '("urladdr" ["argument"] 1)
    '("altcurraddr" ["argument"] 1)
    '("curraddr" ["argument"] 1)
    '("alttitle" ["argument"] 1)
    '("altappendixtitle" ["argument"] 1)
    '("appendixtitle" ["argument"] 1)
    '("subtitle" ["argument"] 1)
    '("title" ["argument"] 1)
    '("see" 2)
    '("MR" 1)
    '("tocsection" 3)
    '("altabstracts" 1)
    '("abstracts" 1)
    '("nxandlist" 4)
    '("xandlist" 4)
    '("nxaltandlist" 4)
    '("xaltandlist" 4)
    '("altkeywords" 1)
    '("dedicatory" 1)
    '("thanksref" 1)
    '("thanks" 1)
    '("email" 1)
    '("published" 3)
    '("accepted" 3)
    '("revised" 3)
    '("received" 3)
    '("edn" 1)
    '("pacs" 1)
    '("udc" 1)
    '("uppercasenonmath" 1)
    '("documentType" 1)
    '("doiBase" 1)
    '("doiSuffixBase" 1)
    '("doiPrefix" 1)
    '("doi" 1)
    '("defaultaltlanguage" 1)
    '("defaultlanguage" 1)
    "authorFontShape"
    "authorFontSize"
    "linespacing"
    "normalparindent"
    "normaltopskip"
    "headerFontSize"
    "upchars"
    "andify"
    "altandify"
    "makealttitle"
    "makealttitleTOCOnly"
    "subjclassname"
    "altabstractname"
    "listisep"
    "DivFontShape"
    "titleFontShape"
    "titleFontSize"
    "titlePosition"
    "chapaftersnum"
    "secaftersnum"
    "tableofaltcontents"
    "bibindent"
    "URL"
    "abovecaptionskip"
    "belowcaptionskip"
    "captionindent"
    "textprime"
    "theHaddress"
    "thanksref"
    "runtitle"
    "runauthor"
    "baselinestretch"
    "sectionname"
    "subsectionname"
    "subsubsectionname"
    "paragraphname"
    "subparagraphname"
    "markboth"
    "sectionmark"
    "subsectionmark"
    "subsubsectionmark"
    "paragraphmark"
    "ProcessClassOptionsWithKV"
    "SetPFUprocKey"
    "label"
    "ref"
    "pageref"
    "glabel"
    "gref"
    "gpageref"
    "PFUrevisedName"
    "PFUacceptedName"
    "PFUpublishedName"
    "PFUudcName"
    "PFUpacsName"
    "PFUreceivedName"
    "PFUrevisedname"
    "PFUacceptedname"
    "PFUpublishedname"
    "etal"
    "keywordsname"
    "acknowledgmentsname"
    "prefacename"
    "abstractname"
    "chaptername"
    "authorname"
    "enclname"
    "ccname"
    "headtoname"
    "pagename"
    "seename"
    "alsoname"
    "proofname"
    "glossaryname"
    "ss"
    "i"
    "j"
    "ae"
    "oe"
    "o"
    "aa"
    "l"
    "Mc"
    "shortalttitle"
    "pfuBiblatexResource"
    "authorsrunning"
    "altauthorsrunning"
    "author"
    "altauthor"
    "fauthor"
    "cauthor"
    "altfauthor"
    "caltauthor"
    "parseauthor"
    "authorinitials"
    "authorfamily"
    "PFUNumRunningauthor"
    "altauthorstoc"
    "collab"
    "collaboration"
    "thefootnote"
    "altaddress"
    "thealtaddress"
    "address"
    "curraddr"
    "email"
    "urladdr"
    "dedicatorywidth"
    "keywords"
    "subjclass"
    "translator"
    "and"
    "altand"
    "maketitle"
    "maketitleToc"
    "shorttitle"
    "makeappendixtitle"
    "makesubtitle"
    "shortsubtitle"
    "shortauthors"
    "authors"
    "authorstoc"
    "addresses"
    "thankses"
    "shortaltauthors"
    "altauthors"
    "altaddresses"
    "publname"
    "volinfo"
    "issueinfo"
    "currentvolume"
    "currentissue"
    "currentmonth"
    "currentyear"
    "copyrightinfo"
    "copyrightyear"
    "copyrightholder"
    "pagespan"
    "thanks"
    "trivlist"
    "makelabel"
    "upn"
    "partname"
    "appendixname"
    "aufm"
    "contentsname"
    "altcontentsname"
    "listfigurename"
    "listtablename"
    "listaltname"
    "listoffigures"
    "listoftables"
    "listofalts"
    "protect"
    "indentlabel"
    "tocsubsection"
    "tocsubsubsection"
    "tocchapter"
    "tocappendix"
    "refname"
    "bibname"
    "bysame"
    "newblock"
    "URLhref"
    "item"
    "indexname"
    "subitem"
    "subsubitem"
    "indexspace"
    "footnoterule"
    "sloppy"
    "figurename"
    "tablename"
    "nonbreakingspace"
    "fullwidthdisplay"
    "calclayout"
    "tiny"
    "defaultfont"
    "rom")
   (LaTeX-add-labels
    "#1"
    "starttitle"
    "#2"
    "altaddress:#2"
    "endtitle")
   (LaTeX-add-environments
    "theindex"
    "titlepage"
    "altabstract"
    "abstract"
    '("thebibliography" 1)
    "abstracta"
    "acknowledgments")
   (LaTeX-add-pagestyles
    "empty"
    "plain"
    "headings"
    "firstpage"
    "myheadings")
   (LaTeX-add-counters
    "PFUtitle"
    "subtitle"
    "PFUauthor"
    "altauthor"
    "collab"
    "address"
    "altaddress")
   (LaTeX-add-saveboxes
    "abstractbox")
   (LaTeX-add-caption-DeclareCaptions
    '("\\DeclareCaptionFormat{tableRight}" "Format" "tableRight"))
   (LaTeX-add-xparse-macros
    '("\\NewDocumentCommand{\\refList}{ m }" "refList" " m " "New")
    '("\\DeclareExpandableDocumentCommand \\extract { m m }" "extract" " m m " "Declare")))
 :latex)

