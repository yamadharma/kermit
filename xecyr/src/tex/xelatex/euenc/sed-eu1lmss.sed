s/ec-//g
s/lm([a-z]+)([0-9]+)/lmsans\2-\1/g
s/([0-9]+)-ssbo/\1-boldoblique/g
s/([0-9]+)-ssbx/\1-bold/g
s/([0-9]+)-ssdc\}/\1-demicondensed\}/g
s/([0-9]+)-ssdo\}/\1-demicondensedoblique\}/g
s/([0-9]+)-ssi/\1-italic/g
s/([0-9]+)-sso/\1-oblique/g
s/([0-9]+)-ss/\1-regular/g
s/t1/eu1/g
s/T1/EU1/g
s/(>.[ ]*)(lm[a-z0-9\-]*)/\1"[\2]:mapping=tex-text"/g
