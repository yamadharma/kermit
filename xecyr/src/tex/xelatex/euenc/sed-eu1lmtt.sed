s/ec-//g
s/lm([a-z]+)([0-9]+)/lmtypewriter\2-\1/g
s/([0-9]+)-tl\}/\1-light\}/g
s/([0-9]+)-tlo\}/\1-lightoblique\}/g
s/([0-9]+)-tk\}/\1-dark\}/g
s/([0-9]+)-tko\}/\1-darkoblique\}/g
s/([0-9]+)-tlc\}/\1-lightcondensed\}/g
s/([0-9]+)-tlco\}/\1-lightcondensedoblique\}/g
s/([0-9]+)-tcso/\1-capsoblique/g
s/([0-9]+)-tcsc/\1-capsregular/g
s/([0-9]+)-tti/\1-italic/g
s/([0-9]+)-tto/\1-oblique/g
s/([0-9]+)-tt/\1-regular/g
s/t1/eu1/g
s/T1/EU1/g
s/(>.[ ]*)(lm[a-z0-9\-]*)/\1"[\2]:mapping=tex-text"/g
