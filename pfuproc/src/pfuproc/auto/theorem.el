(TeX-add-style-hook
 "theorem"
 (lambda ()
   (TeX-add-symbols
    "TheoremName"
    "LemmaName"
    "ConsName"
    "RemarkName"
    "DefName"
    "PropositionName"
    "StatementName"
    "ConditionName"
    "ExampleName"
    "HypothesisName")
   (LaTeX-add-environments
    "definition"
    "Condition"
    "Hypothesis")))

