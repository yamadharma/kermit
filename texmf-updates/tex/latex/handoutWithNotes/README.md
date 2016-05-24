<https://www.guidodiepen.nl/2009/07/creating-latex-beamer-handouts-with-notes/>

<https://github.com/gdiepen/latexbeamer-handoutWithNotes>


For all my presentations I have been using LaTeX-Beamer package. One of the things I missed was the possibility of having handouts of my slides with some lines for notes besides the slides. After some searching I found that in the mailing lists of latex-beamer somebody had already come up with a solution.

If you put the file  handoutWithNotes.sty (which you can obtain fromGitHub either in your local texmf directory or in the same directory as your presentation you can include it with the following command

`\usepackage{handoutWithNotes}`

After that, to get 4 sheets on the left side of the page with on the right side of the page some lines for people to write notes you can use the following command

`\pgfpagesuselayout{4 on 1 with notes}[a4paper,border shrink=5mm]`
