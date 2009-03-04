%%
%% This is file `amsproc.cls',
%%% ====================================================================
\NeedsTeXFormat{LaTeX2e}% LaTeX 2.09 can't be used (nor non-LaTeX)
[1994/12/01]% LaTeX date must December 1994 or later
\ProvidesClass{pfuconf}[1996/11/05 v1.2q]
\def\@tempa#1#2\@nil{\edef\@classname{#1}}
\expandafter\@tempa\@currnamestack{}{}{}\@nil
\ifx\@classname\@empty \edef\@classname{\@currname}\fi
%%%
%%%
%%%
%%%
%%
%\def\@namedef#1{\expandafter\def\csname test:#1\endcsname}
%\def\@nameuse#1{\csname #1\endcsname}


\chardef\@currsizeindex=6
\widowpenalty=10000
\clubpenalty=10000
\brokenpenalty=10000
\newdimen\linespacing
\lineskip=1pt \lineskiplimit=1pt
\normallineskip=1pt \normallineskiplimit=1pt
\let\baselinestretch=\@empty
\headheight=5pt \headsep=14pt
\footskip=12pt
\textheight=50.5pc \topskip=10pt
\textwidth=30pc
\columnsep=10pt \columnseprule=0pt
\marginparwidth=90pt
\marginparsep=11pt
\marginparpush=5pt
\AtBeginDocument{\settoheight{\footnotesep}{\footnotesize M$^1$}}
\skip\footins=7pt plus11pt
\skip\@mpfootins=\skip\footins
\fboxsep=3pt \fboxrule=.4pt
\arrayrulewidth=.4pt    \doublerulesep=2pt
\labelsep=5pt           \arraycolsep=\labelsep
\tabcolsep=\labelsep    \tabbingsep=\labelsep
\floatsep=15pt plus 12pt    \dblfloatsep=15pt plus 12pt
\textfloatsep=\floatsep  \dbltextfloatsep=15pt plus 12pt
\intextsep=\floatsep
\@fptop=0pt plus1fil     \@dblfptop=0pt plus1fil
\@fpbot=0pt plus1fil     \@dblfpbot=0pt plus1fil
\@fpsep=8pt plus2fil     \@dblfpsep=8pt plus2fil\relax
\parskip=0pt \relax
\newdimen\normalparindent
\normalparindent=18pt
\parindent=\normalparindent
\partopsep=0pt \relax \parsep=0pt \relax \itemsep=0pt \relax
\@lowpenalty=51         \@medpenalty=151        \@highpenalty=301
\@beginparpenalty=-\@lowpenalty
\@endparpenalty=-\@lowpenalty
\@itempenalty=-\@lowpenalty


% \ExecuteOptions{a4paper,10dd,twoside,onecolumn,final,openany}

%\ProcessOptions*\relax
%\LoadClassWithOptions{kgeneric}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{kgeneric}}

\ExecuteOptions{a4paper,10dd,twoside,onecolumn,final,openany}
\ProcessOptions\relax
\LoadClass{kgeneric}

\newcounter{title}
\def\label#1{\@bsphack
  \protected@write\@auxout{}%
         {\string\newlabel{\thetitle:#1}{{\@currentlabel}{\thepage}}}%
  \@esphack}
\def\ref#1{\expandafter\@setref\csname r@\thetitle:#1\endcsname\@firstoftwo{\thetitle:#1}}
\def\pageref#1{\expandafter\@setref\csname r@\thetitle:#1\endcsname
                                   \@secondoftwo{\thetitle:#1}}
\renewcommand*{\title}[2][]{\gdef\shorttitle{#1}\gdef\@title{#2}}
\let\@title\@empty
%%%
\newcommand*{\alttitle}[2][]{\gdef\shorttitle{#1}\gdef\@alttitle{#2}}
\let\@alttitle\empty
%%%
\renewcommand{\author}[2][]{%
  \ifx\@empty\authors
    \gdef\shortauthors{#1}\gdef\authors{#2}%
  \else
    \g@addto@macro\shortauthors{\and#1}%
    \g@addto@macro\authors{\and#2}%
    \g@addto@macro\addresses{\author{}}%
  \fi
}
%%%
\newcommand{\altauthor}[2][]{%
  \ifx\@empty\altauthors
    \gdef\shortaltauthors{#1}\gdef\altauthors{#2}%
  \else
    \g@addto@macro\shortaltauthors{\altand#1}%
    \g@addto@macro\altauthors{\altand#2}%
    \g@addto@macro\altaddresses{\altauthor{}}%
  \fi
}
\DeclareRobustCommand{\udc}[1]{%
  \def\@udcnum{#1}}
\let\@udcnum\@empty
\DeclareRobustCommand{\pacs}[1]{%
  \def\@pacsnum{#1}}
\let\@pacsnum\@empty  
%%%
\let\shortauthors\@empty   \let\authors\@empty
\let\addresses\@empty      \let\thankses\@empty
%%%
\let\shortaltauthors\@empty   \let\altauthors\@empty
\let\altaddresses\@empty      \let\thankses\@empty
%%%
\newcommand{\address}[2][]{\g@addto@macro\addresses{\address{#1}{#2}}}
\newcommand{\curraddr}[2][]{\g@addto@macro\addresses{\curraddr{#1}{#2}}}
%%%
\newcommand{\altaddress}[2][]{\g@addto@macro\altaddresses{\altaddress{#1}{#2}}}
\newcommand{\altcurraddr}[2][]{\g@addto@macro\altaddresses{\altcurraddr{#1}{#2}}}
%%%
\newcommand{\altabstracts}[2][]{\gdef\shortabstract{#1}\gdef\@altabstracts{#2}}
\let\@altabstracts\@empty
%%%
\newcommand{\email}[2][]{\g@addto@macro\addresses{\email{#1}{#2}}}
\newcommand{\urladdr}[2][]{\g@addto@macro\addresses{\urladdr{#1}{#2}}}
\renewcommand{\thanks}[1]{\g@addto@macro\thankses{\thanks{#1}}}
%\def\enddoc@text{\ifx\@empty\@translators \else\@settranslators\fi
%  \ifx\@empty\addresses \else\@setaddresses\fi}
\def\enddoc@text{\ifx\@empty\@translators \else\@settranslators\fi
%  \ifx\@empty\altaddresses \else\@setaltaddresses\fi
%  \@alttitle
%  \altauthors
  }

\newcommand{\uppercasenonmath}[1]{\toks@\@emptytoks
  \@xp\@skipmath\@xp\@empty#1$$%
  \edef#1{\@nx\@upprep\the\toks@}%
}
\newcommand{\@upprep}{%
  \spaceskip1.3\fontdimen2\font plus1.3\fontdimen3\font
  \upchars@}
\newcommand{\upchars@}{%
  \def\ss{SS}\def\i{I}\def\j{J}\def\ae{\AE}\def\oe{\OE}%
  \def\o{\O}\def\aa{\AA}\def\l{\L}\def\Mc{M{\scshape c}}}
\newcommand{\@skipmath}{}
\long\def\@skipmath#1$#2${%
  \@xskipmath#1\(\)%
  \@ifnotempty{#2}{\toks@\@xp{\the\toks@$#2$}\@skipmath\@empty}}%
\newcommand{\@xskipmath}{}
\long\def\@xskipmath#1\(#2\){%
  \uppercase{\toks@\@xp\@xp\@xp{\@xp\the\@xp\toks@#1}}%
  \@ifnotempty{#2}{\toks@\@xp{\the\toks@\(#2\)}\@xskipmath\@empty}}%

\AtEndDocument{\enddoc@text}
%%%
%%%
\def\@setaddresses{\par
  \nobreak \begingroup
\footnotesize
  \def\author##1{\nobreak\addvspace\bigskipamount}%
  \def\\{\unskip, \ignorespaces}%
  \interlinepenalty\@M
  \def\address##1##2{\begingroup
    \par\addvspace\bigskipamount\indent
    \@ifnotempty{##1}{(\ignorespaces##1\unskip) }%
    {\scshape\ignorespaces##2}\par\endgroup}%
  \def\curraddr##1##2{\begingroup
    \@ifnotempty{##2}{\nobreak\indent{\itshape Current address}%
      \@ifnotempty{##1}{, \ignorespaces##1\unskip}\/:\space
      ##2\par\endgroup}}%
  \def\email##1##2{\begingroup
    \@ifnotempty{##2}{\nobreak\indent{\itshape E-mail address}%
      \@ifnotempty{##1}{, \ignorespaces##1\unskip}\/:\space
      \ttfamily##2\par\endgroup}}%
  \def\urladdr##1##2{\begingroup
    \@ifnotempty{##2}{\nobreak\indent{\itshape URL}%
      \@ifnotempty{##1}{, \ignorespaces##1\unskip}\/:\space
      \ttfamily##2\par\endgroup}}%
  \addresses
  \endgroup
}
%%%
\def\@setaltaddresses{\par
  \nobreak \begingroup
\footnotesize
  \def\author##1{\nobreak\addvspace\bigskipamount}%
  \def\\{\unskip, \ignorespaces}%
  \interlinepenalty\@M
  \def\address##1##2{\begingroup
    \par\addvspace\bigskipamount\indent
    \@ifnotempty{##1}{(\ignorespaces##1\unskip) }%
    {\scshape\ignorespaces##2}\par\endgroup}%
  \def\curraddr##1##2{\begingroup
    \@ifnotempty{##2}{\nobreak\indent{\itshape Current address}%
      \@ifnotempty{##1}{, \ignorespaces##1\unskip}\/:\space
      ##2\par\endgroup}}%
  \def\email##1##2{\begingroup
    \@ifnotempty{##2}{\nobreak\indent{\itshape E-mail address}%
      \@ifnotempty{##1}{, \ignorespaces##1\unskip}\/:\space
      \ttfamily##2\par\endgroup}}%
  \def\urladdr##1##2{\begingroup
    \@ifnotempty{##2}{\nobreak\indent{\itshape URL}%
      \@ifnotempty{##1}{, \ignorespaces##1\unskip}\/:\space
      \ttfamily##2\par\endgroup}}%
  \addresses
  \endgroup
}
%%%
\let\@date\@empty
\def\dedicatory#1{\def\@dedicatory{#1}}
\let\@dedicatory=\@empty
\def\keywords#1{\def\@keywords{#1}}
\let\@keywords=\@empty
\def\subjclass#1{\def\@subjclass{#1}}
\let\@subjclass=\@empty
\def\translator#1{%
  \ifx\@empty\@translators \def\@translators{#1}%
  \else\g@addto@macro\@translators{\and#1}\fi}
\let\@translators=\@empty
\def\@settranslators{\par\begingroup
  \addvspace{6\p@\@plus9\p@}%
  \hbox to\columnwidth{\hss\normalfont\normalsize
    Translated by %
    \andify\@translators \uppercasenonmath\@translators
    \@translators}
  \endgroup
}
%%
\newcommand{\xaltandlist}[4]{\@altandlista{{#1}{#2}{#3}}#4\altand\altand}
\def\@altandlista#1#2\altand#3\altand{\@altandlistc{#2}\@ifnotempty{#3}{%
  \@altandlistb#1{#3}}}
\def\@altandlistb#1#2#3#4#5\altand{%
  \@ifempty{#5}{%
    \@altandlistc{#2#4}%
  }{%
    \@altandlistc{#1#4}\@altandlistb{#1}{#3}{#3}{#5}%
  }}
\let\@altandlistc\@iden
\newcommand{\nxaltandlist}[4]{%
  \def\@altandlistc##1{\toks@\@xp{\the\toks@##1}}%
  \toks@{\toks@\@emptytoks \@altandlista{{#1}{#2}{#3}}}%
  \the\@xp\toks@#4\altand\altand
  \edef#4{\the\toks@}%
  \let\@altandlistc\@iden}
%%
\newcommand{\xandlist}[4]{\@andlista{{#1}{#2}{#3}}#4\and\and}
\def\@andlista#1#2\and#3\and{\@andlistc{#2}\@ifnotempty{#3}{%
  \@andlistb#1{#3}}}
\def\@andlistb#1#2#3#4#5\and{%
  \@ifempty{#5}{%
    \@andlistc{#2#4}%
  }{%
    \@andlistc{#1#4}\@andlistb{#1}{#3}{#3}{#5}%
  }}
\let\@andlistc\@iden
\newcommand{\nxandlist}[4]{%
  \def\@andlistc##1{\toks@\@xp{\the\toks@##1}}%
  \toks@{\toks@\@emptytoks \@andlista{{#1}{#2}{#3}}}%
  \the\@xp\toks@#4\and\and
  \edef#4{\the\toks@}%
  \let\@andlistc\@iden}
%%%
\newcommand{\andify}{%
  \nxandlist{\unskip, }{\unskip{},~}{\unskip,~}}
\def\and{\unskip{ } \ignorespaces}
%%%
% \newcommand{\altandify}{%
%   \nxaltandlist{\unskip, }{\unskip{} and~}{\unskip, and~}}
% \def\altand{\unskip{ }and \ignorespaces}
\newcommand{\altandify}{%
  \nxaltandlist{\unskip, }{\unskip{},~}{\unskip,~}}
\def\altand{\unskip{ }and \ignorespaces}
%%%%
\def\maketitle{\par
%  \@topnum\z@ % this prevents figures from falling at the top of page 1
  \refstepcounter{title}
  \@setcopyright
  \uppercasenonmath\shorttitle
  \ifx\@empty\shortauthors \let\shortauthors\shorttitle
  \else \andify\shortauthors \uppercasenonmath\shortauthors \fi
  \altandify\altauthors
  \@maketitle@hook
  \begingroup
  \@maketitle
  \toks@\@xp{\shortauthors}\@temptokena\@xp{\shorttitle}%
%  \edef\@tempa{\@nx\markboth{\the\toks@}{\the\@temptokena}}\@tempa
  \endgroup
  \edef\@alts{}
  \ifx\@empty\altauthors \relax
    \else \g@addto@macro\@alts{{\textit{\altauthors}}} \fi
  \ifx\@empty\@alttitle \relax
    \else \g@addto@macro\@alts{\ {\textbf{\@alttitle}}} \fi
  \ifx\@empty\@altabstracts \relax
    \else \g@addto@macro\@alts{\ {\@altabstracts}} \fi
%   \addcontentsline{alt}{alttitle}{\@alttitle}
%   \addcontentsline{alt}{altauthors}{\altauthors}
%   \addcontentsline{alt}{altaddresses}{\altaddresses}
%   \addcontentsline{alt}{altaddresses}{}
%   \addcontentsline{alt}{altabstracts}{\@altabstracts}
    \addcontentsline{toc}{chapter}{{\bfseries \authors} \@title}
  \ifx\@empty\@alts \relax  
  \else \addcontentsline{alt}{alts}{\@alts} \fi
%  \thispagestyle{firstpage}% this sets first page specifications
%  \c@footnote\z@
%  \def\do##1{\let##1\relax}%
%  \do\maketitle \do\@maketitle \do\title \do\@xtitle \do\@title
%  \do\author \do\@xauthor \do\address \do\@xaddress
%  \do\email \do\@xemail \do\curraddr \do\@xcurraddr
%  \do\dedicatory \do\@dedicatory \do\thanks \do\thankses
%  \do\keywords \do\@keywords \do\subjclass \do\@subjclass
%%%
\let\shortauthors\@empty   \let\authors\@empty
\let\addresses\@empty      \let\thankses\@empty
%%%
\let\shortaltauthors\@empty   \let\altauthors\@empty
\let\altaddresses\@empty      \let\thankses\@empty
\let\@altabstracts\@empty     \let\@alttitle\@empty
}
\def\@maketitle@hook{\global\let\@maketitle@hook\@empty}
\def\@maketitle{%
  \normalfont\normalsize
  \let\@makefnmark\relax  \let\@thefnmark\relax
  \ifx\@empty\@subjclass\else \@footnotetext{\@setsubjclass}\fi
  \ifx\@empty\@keywords\else \@footnotetext{\@setkeywords}\fi
%   \ifx\@empty\thankses\else \@footnotetext{%
%     \def\par{\let\par\@par}\@setthanks}\fi
%  \@mkboth{\@nx\shortauthors}{\@nx\shorttitle}%
%  \global\topskip8pc\relax % 10pc to base of first title line
  \bigskip
    %% FIXME убрать? или сделать переключатель?
    \hrule
  \bigskip
  \vbox{%
  \ifx\@empty\@udcnum \else \noindent \PFUudcName{} \@udcnum \hfill\par \fi
  \ifx\@empty\@pacsnum \else \noindent \PFUpacsName{} \@pacsnum \hfill\par \fi  
  \@settitle\nobreak
  \ifx\@empty\authors \else \@setauthors \fi
  \nobreak
  \ifx\@empty\@dedicatory
  \else
    \baselineskip26\p@
    \vtop{\centering{\footnotesize\itshape\@dedicatory\@@par}%
      \global\dimen@i\prevdepth}\prevdepth\dimen@i
  \fi
  \nobreak%
  \begingroup
  \footnotesize
  \centering
  \addresses 
  \par
  \endgroup
  \@setabstract
  \ifx\@empty\thankses\else \medskip \footnotesize \@setthanks\fi
  }\nobreak%
  \normalsize\nobreak%
  \bigskip\nobreak%
%   \if@titlepage
%     \newpage
%   \else
%     \dimen@34\p@ \advance\dimen@-\baselineskip
%     \vskip\dimen@\relax
%   \fi
} % end \@maketitle

\renewcommand{\DivFontShape}{\scshape}
%\providecommand{\DivFontSize}{}
%\providecommand{\DivPosition}{}
%%
\providecommand{\titleFontShape}{\DivFontShape}
\providecommand{\titleFontSize}{\Large}
\providecommand{\titlePosition}{}


\AtBeginDocument{%
  \@ifundefined{publname}{%
    \let\publname\@empty
    \let\@serieslogo\@empty
  }{%
    \def\@serieslogo{%
      \vbox to\headheight{%
        \parindent\z@ \fontsize{6}{7\p@}\selectfont
        \noindent\publname\newline
        \volinfo\endgraf
        \vss
      }%
    }%
  }%
}
\@ifundefined{volinfo}{\let\volinfo\@empty}{}
\def\issueinfo#1#2#3#4{\def\currentvolume{#1}\def\currentissue{#2}%
  \def\currentmonth{#3}\def\currentyear{#4}}
\issueinfo{00}% volume number
  {0}%        % issue number
  {Xxxx}%     % month
  {XXXX}%     % year
\def\copyrightinfo#1#2{\def\copyrightyear{#1}\def\copyrightholder{#2}}
\copyrightinfo{0000}{(copyright holder)}
\def\pagespan#1#2{\setcounter{page}{#1}%
  \ifnum\c@page<\z@ \pagenumbering{roman}\setcounter{page}{-#1}\fi
  \def\start@page{#1}\def\end@page{#2}}
\pagespan{000}{000}
\newinsert\copyins
\skip\copyins=1.5pc
\count\copyins=1000 % magnification factor, 1000 = 100%
\dimen\copyins=.5\textheight % maximum allowed per page
\def\@setcopyright{%
  \ifx\@empty\@serieslogo
  \else\ifx\@empty\copyrightyear
  \else
    \insert\copyins{\hsize\textwidth
      \parfillskip\z@ \leftskip\z@\@plus.9\textwidth
      \fontsize{6}{7\p@}\normalfont\upshape
      \everypar{}%
      \vskip-\skip\copyins \nointerlineskip
      \noindent\vrule\@width\z@\@height\skip\copyins
      \copyright\copyrightyear\ \copyrightholder
      \par
      \kern\z@}%
  \fi\fi
}
\def\@combinefloats{%
  \ifx \@toplist\@empty \else \@cflt \fi
  \ifx \@botlist\@empty \else \@cflb \fi
  \ifvoid\copyins \else \@cflci \fi
}
\def\@cflci{%
  \if\if@twocolumn \if@firstcolumn F\else T\fi\else T\fi T%
      \setbox\@outputbox\vbox{%
        \unvbox\@outputbox
        \vskip\skip\copyins
        \hbox to\columnwidth{%
          \hss\vbox to\z@{\vss\unvbox\copyins}}}%
  \fi
}
\def\@settitle{%
  \begin{center}%
    \titleFontShape
    \titleFontSize
    \titlePosition
    \@title\nobreak
  \end{center}%
  \nobreak%
}
\def\@setauthors{%
%  \begingroup
  \begin{center}
   \large 
%  \trivlist
%  \centering \fontsize{11}{13\p@}\selectfont\@topsep13\p@\relax
%  \item\relax
  \andify\authors
  \authors
  \endtrivlist
%  \endgroup%
  \end{center}%
  \nobreak
}
\def\@setdate{\datename\ \@date\@addpunct.}
\def\@setsubjclass{%
  {\itshape\subjclassname.}\enspace\@subjclass\@addpunct.}
\def\@setkeywords{%
  {\itshape \keywordsname.}\enspace \@keywords\@addpunct.}
\def\@setthanks{\def\thanks##1{\par##1\@addpunct.}\thankses}
\newbox\abstractbox
\renewenvironment{abstract}{%
  \ifx\maketitle\relax
    \ClassWarning{\@classname}{Abstract should precede
      \protect\maketitle\space in AMS documentclasses; reported}%
  \fi
  \global\setbox\abstractbox=\vtop \bgroup
  \normalfont\Small
  \Small
  \list{}{\labelwidth\z@
    \leftmargin3pc \rightmargin\leftmargin
    \listparindent\normalparindent \itemindent\z@
    \parsep\z@ \@plus\p@
    \let\fullwidthdisplay\relax
    }%
  \item[\hskip\labelsep\scshape\abstractname.]%
}{%
  \endlist\egroup
  \ifx\@setabstract\relax \@setabstracta \fi
}
\def\@setabstract{\@setabstracta \global\let\@setabstract\relax}
\def\@setabstracta{%
  \ifvoid\abstractbox
  \else
    \skip@20\p@ \advance\skip@-\lastskip
    \advance\skip@-\baselineskip \vskip\skip@
    \box\abstractbox
    \prevdepth\z@ % because \abstractbox is a vtop
  \fi
}
%%%
\newcommand{\altabstractname}{Abstract}
\newbox\altabstractbox
\newenvironment{altabstract}{%
  \ifx\maketitle\relax
    \ClassWarning{\@classname}{Abstract should precede
      \protect\maketitle\space in AMS documentclasses; reported}%
  \fi
  \global\setbox\altabstractbox=\vtop \bgroup
  \normalfont\Small
  \Small
  \list{}{\labelwidth\z@
    \leftmargin3pc \rightmargin\leftmargin
    \listparindent\normalparindent \itemindent\z@
    \parsep\z@ \@plus\p@
    \let\fullwidthdisplay\relax
    }%
  \item[\hskip\labelsep\scshape\altabstractname.]%
}{%
  \endlist\egroup
  \ifx\@setaltabstract\relax \@setaltabstracta \fi
}
\def\@setaltabstract{\@setaltabstracta \global\let\@setaltabstract\relax}
\def\@setaltabstracta{%
  \ifvoid\altabstractbox
  \else
    \skip@20\p@ \advance\skip@-\lastskip
    \advance\skip@-\baselineskip \vskip\skip@
    \box\altabstractbox
    \prevdepth\z@ % because \altabstractbox is a vtop
  \fi
}
%%%
\def\titlepage{%
  \clearpage
  \thispagestyle{empty}\setcounter{page}{0}}
\def\endtitlepage{\newpage}
\def\labelenumi{\theenumi.}
\def\theenumi{\@arabic\c@enumi}
\def\labelenumii{(\theenumii)}
\def\theenumii{\@alph\c@enumii}
\def\p@enumii{\theenumi}
\def\labelenumiii{(\theenumiii)}
\def\theenumiii{\@roman\c@enumiii}
\def\p@enumiii{\theenumi(\theenumii)}
\def\labelenumiv{(\theenumiv)}
\def\theenumiv{\@Alph\c@enumiv}
\def\p@enumiv{\p@enumiii\theenumiii}
\def\labelitemi{$\m@th\bullet$}
\def\labelitemii{\bfseries --}% \upshape already done by \itemize
\def\labelitemiii{$\m@th\ast$}
\def\labelitemiv{$\m@th\cdot$}
\AtBeginDocument{%
  \settowidth\leftmargini{\labelenumi\hskip\labelsep}%
  \advance\leftmargini by \normalparindent
  \settowidth\leftmarginii{\labelenumii\hskip\labelsep}%
  \advance\leftmarginii by 15pt
  \settowidth\leftmarginiii{\labelenumiii\hskip\labelsep}%
  \advance\leftmarginiii by 12pt
  \settowidth\leftmarginiv{\labelenumiv\hskip\labelsep}%
  \advance\leftmarginiv by 10pt
  \leftmarginv=10pt
  \leftmarginvi=10pt
  \leftmargin=\leftmargini
  \labelsep=5pt
  \labelwidth=\leftmargini \advance\labelwidth-\labelsep
  \@listi}
%\newcounter{title}
\setcounter{secnumdepth}{3}
\@addtoreset{equation}{title}
\def\tableofcontents{%
\chapter*{\contentsname}
\@starttoc{toc}
%\@mkboth{%
%    \MakeUppercase\contentsname}{\MakeUppercase\contentsname}
    \newpage
}
\def\listoffigures{\@starttoc{lof}\listfigurename}
\def\listoftables{\@starttoc{lot}\listtablename}
%%
\def\listofalts{\@starttoc{alt}\listaltname}
%%
\AtBeginDocument{%
  \@for\@tempa:=-1,0,1,2,3\do{%
    \@ifundefined{r@tocindent\@tempa}{%
      \@xp\gdef\csname r@tocindent\@tempa\endcsname{0pt}}{}%
  }%
}
\def\@writetocindents{%
  \begingroup
  \@for\@tempa:=-1,0,1,2,3\do{%
    \immediate\write\@auxout{%
      \string\newlabel{tocindent\@tempa}{%
        \csname r@tocindent\@tempa\endcsname}}%
  }%
  \endgroup}
\AtEndDocument{\@writetocindents}

\let\indentlabel\@empty
\def\@tochangmeasure#1{\sbox\z@{#1}%
  \ifdim\wd\z@>\csname r@tocindent\@toclevel\endcsname\relax
    \@xp\xdef\csname r@tocindent\@toclevel\endcsname{\the\wd\z@}%
  \fi
}
\def\@toclevel{0}
\def\@tocline#1#2#3#4#5#6#7{\relax
  \ifnum #1>\c@tocdepth % then omit
  \else
    \par \addpenalty\@secpenalty\addvspace{#2}%
    \begingroup \hyphenpenalty\@M
    \@ifempty{#4}{%
      \@tempdima\csname r@tocindent\number#1\endcsname\relax
    }{%
      \@tempdima#4\relax
    }%
    \parindent\z@ \leftskip#3\relax \advance\leftskip\@tempdima\relax
    \rightskip\@pnumwidth plus1em \parfillskip-\@pnumwidth
    #5\leavevmode\hskip-\@tempdima #6\relax
    \hfil\hbox to\@pnumwidth{\@tocpagenum{#7}}\par
    \nobreak
    \endgroup
  \fi}
\def\@tocpagenum#1{\hss{\mdseries #1}}
\def\@tocwrite#1{\@xp\@tocwriteb\csname toc#1\endcsname{#1}}
\def\@tocwriteb#1#2#3{%
  \begingroup
    \def\@tocline##1##2##3##4##5##6{%
      \ifnum##1>\c@tocdepth
      \else \sbox\z@{##5\let\indentlabel\@tochangmeasure##6}\fi}%
    \csname l@#2\endcsname{#1{\csname#2name\endcsname}{\@secnumber}{}}%
  \endgroup
  \addcontentsline{toc}{#2}%
    {\protect#1{\csname#2name\endcsname}{\@secnumber}{#3}}}
\def\l@section{\@tocline{1}{0pt}{1pc}{}{}}
\newcommand{\tocsection}[3]{%
  \indentlabel{\@ifnotempty{#2}{\ignorespaces#1 #2.\quad}}#3}
\def\l@subsection{\@tocline{2}{0pt}{1pc}{5pc}{}}
\let\tocsubsection\tocsection
\def\l@subsubsection{\@tocline{3}{0pt}{1pc}{7pc}{}}
\let\tocsubsubsection\tocsection
\def\l@part{\@tocline{-1}{12pt plus2pt}{0pt}{}{\bfseries}}
\let\tocpart\tocsection
\def\l@chapter{\@tocline{0}{8pt plus1pt}{0pt}{}{}}
\let\tocchapter\tocsection
\let\tocappendix\tocchapter
\def\l@figure{\@tocline{0}{3pt plus2pt}{0pt}{}{}}
\let\l@table=\l@figure
%%
%%
\def\l@alts#1#2{%
\begingroup
\noindent#1
\endgroup
\\[6pt]
}
\def\l@alttitle#1#2{%
\ifx#1\@empty\relax \else
  \begin{center}%
    \large
    \bfseries
    #1
  \end{center}%
  \fi\nobreak
}
\def\l@altauthors#1#2{%
\ifx#1\@empty\relax \else
%  \begingroup
  \begin{center}
%   \trivlist
%  \centering %\fontsize{11}{13\p@}\selectfont\@topsep13\p@\relax
  \normalsize
%  \item
%  \relax
   #1
%  \endtrivlist
 \end{center}
% \endgroup
%  \smallskip
 \fi\nobreak
}
\def\l@altaddresses#1#2{%
%  \begingroup
  \begin{center}
%  \trivlist
%  \centering %\fontsize{11}{13\p@}\selectfont\@topsep13\p@\relax
%  \normalsize
  \footnotesize
%  \item
%  \relax
   #1
%  \endtrivlist
 \end{center}
% \endgroup 
  \smallskip\nobreak
}
\def\l@altabstracts#1#2{%
\ifx#1\@empty\relax \else
  \begingroup
%  \trivlist
%  \centering %\fontsize{11}{13\p@}\selectfont\@topsep13\p@\relax
%  \normalsize
%  \footnotesize
%  \item
%  \relax
   #1
%  \endtrivlist
  \endgroup \\
  \fi
  \medskip
}
%\newbox\altabstractsbox
%\def\l@altabstracts#1#2{%
%  \begingroup
%  \trivlist
%  \footnotesize
%  \leftmargin3pc \rightmargin\leftmargin
%   #1
%   \endtrivlist
%  \endgroup
%  \global\setbox\altabstractsbox=\vtop \bgroup
%  \normalfont\Small
%  \Small
% \list{}{\labelwidth\z@
%    \leftmargin3pc \rightmargin\leftmargin
%    \listparindent\normalparindent \itemindent\z@
%    \parsep\z@ \@plus\p@
%    \let\fullwidthdisplay\relax
%    }%
% \item[\hskip\labelsep\scshape\altabstractname.]%
%}{%
%  \endlist
% \egroup
%  \ifx\@setaltabstract\relax \@setaltabstracta \fi
%    \relax #1 
%}
%\def\l@part4alt#1#2{\begin{center}%
% \Large
%    \bfseries
%  #1
%  \end{center}%
%  \bigskip
%}
\def\l@altpart#1#2{\bigskip
\begin{center}
{\Large\scshape #1}
\end{center}\nobreak
\bigskip\bigskip\nobreak}
%\def\l@alttitle#1#2{\centering{\bfseries #1}\par}
%\def\l@altauthors#1#2{#1\par}
\def\l@altabstract#1#2{#1\par}
%\def\l@alttitle{\@tocline{1}{0pt}{1pc}{}{}}
%\def\l@altauthors{\@tocline{1}{0pt}{1pc}{}{}}
%\newcommand{\l@alttitle}[2]{#1}
%\newcommand{\l@altauthors}[2]{#1}
%%
\def\refname{References}
\def\bibname{Bibliography}
\def\bibliographystyle#1{%
   \if@filesw\immediate\write\@auxout
    {\string\bibstyle{#1}}\fi
        \def\@tempa{#1}%
        \def\@tempb{amsplain}%
        \def\@tempc{}%
        \ifx\@tempa\@tempb
                \def\@biblabel##1{##1.}%
                \def\bibsetup{}%
        \else
                \def\bibsetup{\labelsep6\p@}%
        \ifx\@tempa\@tempc
                \def\@biblabel##1{}%
                \def\bibsetup{\labelwidth\z@ \leftmargin24\p@
                \itemindent-24\p@
                          \labelsep\z@ }%
        \fi
\fi}
%%%
\RequirePackage{titletoc}

\titlecontents{chapter}[0pt]%
{\vspace{1ex minus .1ex}\chapterFontShape}%
{\chaptertitlename\space\thecontentslabel.\quad}%
{}%
{\titlerule*[1pc]{.}\contentspage}

\titlecontents{section}[1pc]%
{}%
{\thecontentslabel.\quad}%
{..}%
{\titlerule*[1pc]{.}\contentspage}
%%%
\AtBeginDocument%
{%
%  \providecommand{\etal}{et al.}
  \addto\extrasrussian%
  {
    \def\PFUudcName{\CYRU\CYRD\CYRK}
    \def\PFUpacsName{PACS}
    % Статья поступила в редакцию
    \def\PFUreceivedName{{\CYRS}{\cyrt}{\cyra}{\cyrt}{\cyrsftsn}{\cyrya} {\cyrp}{\cyro}{\cyrs}{\cyrt}{\cyru}{\cyrp}{\cyri}{\cyrl}{\cyra} {\cyrv} {\cyrr}{\cyre}{\cyrd}{\cyra}{\cyrk}{\cyrc}{\cyri}{\cyryu}}%
    \def\PFUrevisedName{Revised }%
    \def\PFUacceptedName{Accepted }%
    \def\PFUpublishedName{Published }%
    \def\etal{\cyri{} \cyrd\cyrr.}
    % Ключевые слова
    \renewcommand{\keywordsname}{{\CYRK}{\cyrl}{\cyryu}{\cyrch}{\cyre}{\cyrv}{\cyrery}{\cyre} {\cyrs}{\cyrl}{\cyro}{\cyrv}{\cyra}}
  }
  \addto\extrasenglish%
  {
    \def\PFUudcName{UDC}
    \def\PFUpacsName{PACS}
    \def\PFUreceivedName{Received }%
    \def\PFUrevisedname{Revised }%
    \def\PFUacceptedname{Accepted }%
    \def\PFUpublishedname{Published }%
     \def\etal{et al.}
%%    \renewcommand{\etal}{et al.}
%%     \providecommand{\etal}{et al.}
    \renewcommand{\keywordsname}{Key words and phrases}
  }
}

\def\calclayout{\advance\textheight -\headheight
  \advance\textheight -\headsep
  \oddsidemargin\paperwidth
  \advance\oddsidemargin -\textwidth
  \divide\oddsidemargin\tw@
  \ifdim\oddsidemargin<.5truein \oddsidemargin.5truein \fi
  \advance\oddsidemargin -1truein
  \evensidemargin\oddsidemargin
  \topmargin\paperheight \advance\topmargin -\textheight
  \advance\topmargin -\headheight \advance\topmargin -\headsep
  \divide\topmargin\tw@
  \ifdim\topmargin<.5truein \topmargin.5truein \fi
  \advance\topmargin -1truein\relax
}
\calclayout % initialize
\pagenumbering{arabic}
\pagestyle{headings}
% \thispagestyle{plain}
\if@compatibility \else\endinput\fi
\def\tiny{\Tiny}
\def\defaultfont{\normalfont}
\def\rom{\textup}
\endinput
%%
%% End of file `amsproc.cls'.
