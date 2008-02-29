s/ec-//g
s/lm([a-z]+)([0-9]+)/lmsansquotation\2-\1/g
s/([0-9]+)-ssqbo/\1-boldoblique/g
s/([0-9]+)-ssqbx/\1-bold/g
s/([0-9]+)-ssqo/\1-oblique/g
s/([0-9]+)-ssq/\1-regular/g
s/t1/eu1/g
s/T1/EU1/g
s/(>.[ ]*)(lm[a-z0-9\-]*)/\1"[\2]:mapping=tex-text"/g
