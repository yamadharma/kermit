(TeX-add-style-hook
 "theorem"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("ntheorem" "thmmarks")))
   (TeX-run-style-hooks
    "ntheorem")
   (TeX-add-symbols
    "theoremheaderFontShape"
    "theoremheaderFontSize"
    "theoremheaderPosition"
    "theorembodyFontShape"
    "theorembodyFontSize"
    "theorembodyPosition"
    "TheoremName"
    "LemmaName"
    "ConsName"
    "CorollaryName"
    "RemarkName"
    "DefName"
    "PropositionName"
    "StatementName"
    "ExampleName"
    "ProofName")
   (LaTeX-add-environments
    "Theorem"
    "Lemma"
    "Cons"
    "Corollary"
    "Remark"
    "Def"
    "Proposition"
    "Statement"
    "statement"
    "Example"
    "Proof"
    "proof")))

