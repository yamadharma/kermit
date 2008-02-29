s/ec-//g
s/lm([a-z]+)([0-9]+)/lmroman\2-\1/g
s/([0-9]+)-dunh/\1-dunhill/g
s/([0-9]+)-duno/\1-dunhilloblique/g
s/t1/eu1/g
s/T1/EU1/g
s/(>.[ ]*)(lm[a-z0-9\-]*)/\1"[\2]:mapping=tex-text"/g
