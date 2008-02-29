s/ec-//g
s/lm([a-z]+)([0-9]+)/lmroman\2-\1/g
s/([0-9]+)-ri/\1-italic/g
s/([0-9]+)-ro/\1-oblique/g
s/([0-9]+)-r/\1-regular/g
s/([0-9]+)-bxi/\1-bolditalic/g
s/([0-9]+)-bxo/\1-boldoblique/g
s/([0-9]+)-bx/\1-bold/g
s/([0-9]+)-bo\}/\1-demioblique\}/g
s/([0-9]+)-b\}/\1-demi\}/g
s/([0-9]+)-csco/\1-capsoblique/g
s/([0-9]+)-csc/\1-capsregular/g
s/t1/eu1/g
s/T1/EU1/g
s/(>.[ ]*)(lm[a-z0-9\-]*)/\1"[\2]:mapping=tex-text"/g
