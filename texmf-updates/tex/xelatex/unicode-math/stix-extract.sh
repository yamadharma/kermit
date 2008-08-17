#!/bin/sh

cat stix-tbl.asc |
awk '
 {if (usv != substr($0,2,5) && substr($0,2,1) != " ")
    {usv = substr($0,2,5);
     texname = substr($0,84,25);
     class = substr($0,57,1);
     description = tolower(substr($0,233,350));
     if (texname      ~ /[\\]/ &&
         substr(texname,0,5) != "\\text"    &&
         substr(texname,0,4) != "\\ipa"    &&
         substr(texname,0,5) != "\\tone"    &&
         substr(texname,3,1) != " "    &&
         class       != " "    &&
         description !~ /<reserved>/ )
     print "\\UnicodeMathSymbol{\"" \
           usv "}{" \
           texname "}{" \
           class "}{" \
           description "}%";
    }}' - |
sed -e ' s/{N}/{\\mathord}/   ' \
    -e ' s/\^/\\string^/   ' \
    -e ' s/{F}/{\\mathord}/   ' \
    -e ' s/{A}/{\\mathalpha}/ ' \
    -e ' s/{D}/{\\mathaccent}/ ' \
    -e ' s/{P}/{\\mathpunct}/ ' \
    -e ' s/{B}/{\\mathbin}/   ' \
    -e ' s/{R}/{\\mathrel}/   ' \
    -e ' s/{L}/{\\mathop}/    ' \
    -e ' s/{O}/{\\mathopen}/  ' \
    -e ' s/{C}/{\\mathclose}/ ' > unicode-math.tex
