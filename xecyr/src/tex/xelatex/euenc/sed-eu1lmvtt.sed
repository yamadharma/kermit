s/ec-//g
s/lm([a-z]+)([0-9]+)/lmtypewritervarwd\2-\1/g
s/([0-9]+)-vtl\}/\1-light\}/g
s/([0-9]+)-vtlo\}/\1-lightoblique\}/g
s/([0-9]+)-vtk\}/\1-dark\}/g
s/([0-9]+)-vtko\}/\1-darkoblique\}/g
s/([0-9]+)-vtto/\1-oblique/g
s/([0-9]+)-vtt/\1-regular/g
s/t1/eu1/g
s/T1/EU1/g
s/(>.[ ]*)(lm[a-z0-9\-]*)/\1"[\2]:mapping=tex-text"/g
