%%% 

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pfuproc}
                [2010/03/14 v0.1.0
                Bulletin of Peoples’Friendship University of Russia]

\ExecuteOptions{a4paper,10pt,twoside,onecolumn,final,openany}
\ProcessOptions*\relax

\LoadClassWithOptions{kproc}

%{{{ List of Authors

\def\listofauthors{%
\begin{center}
  \Huge
  \textsc{{\CYRN}{\cyra}{\cyrsh}{\cyri} {\cyra}{\cyrv}{\cyrt}{\cyro}{\cyrr}{\cyrery}}
  % \textsc{Наши авторы}%
\end{center}%

\normalfont

\bigskip
\begin{raggedright}
\@starttoc{loa}
\end{raggedright}

}

\newcommand{\authorFont}{\bf}

\newcommand{\pfuproc@bra}{(}
\newcommand{\pfuproc@ket}{)}
\newcommand{\pfuproc@komma}{, }

\AtBeginDocument{%
  \def\pfuproc@phoneName{Phone}
  \@ifpackageloaded{polyglossia}{%
    \addto\captionsrussian@modern{%
      \def\pfuproc@phoneName{тел.}
    }
  }{%
    \addto\extrasrussian{%
      \def\pfuproc@phoneName{{\cyrt }{\cyre }{\cyrl }.}
    }
  }
}

\newenvironment{authordescription}%
{
  \let\pfuproc@authorlistentry\@empty
  \let\pfuproc@authorfull\@empty
  \let\pfuproc@authorrank\@empty
  \let\pfuproc@authordegree\@empty
  \let\pfuproc@authorpost\@empty
  \let\pfuproc@mail\@empty
  \let\pfuproc@phone\@empty
  \def\pfuproc@bra{(}
  \def\pfuproc@ket{)}
  \def\pfuproc@komma{, }
}%
{
  \ifx\pfuproc@mail\@empty
    \let\pfuproc@komma\@empty
    \ifx\pfuproc@phone\empty
      \let\pfuproc@bra\@empty
      \let\pfuproc@ket\@empty
    \fi
  \fi
  % Добавим в macro всё, что есть сейчас
  \g@addto@macro\pfuproc@authorlistentry{%
    \par
    {\authorFont
    \pfuproc@authorfull}~--- 
    \ifx\pfuproc@authorrank\@empty
    \else
    \pfuproc@authorrank,
    \fi
    \ifx\pfuproc@authordegree\@empty
    \else
    \pfuproc@authordegree,
    \fi
    \ifx\pfuproc@authorpost\@empty
    \else
    \pfuproc@authorpost{}
    \fi
    \pfuproc@bra%
    \ifx\pfuproc@mail\@empty
    \else
    email:~\pfuproc@mail{}%
    \fi
    \ifx\pfuproc@phone\@empty
    \else
    \pfuproc@komma\protect\mbox{\pfuproc@phoneName:~\pfuproc@phone{}}%
    \fi
    \pfuproc@ket%
  }

  \addtocontents{loa}{\pfuproc@authorlistentry}
}

\newcounter{c@pfuproc@authorlist}

% Автор
\DeclareRobustCommand{\authorfull}[1]{%
  \def\pfuproc@authorfull{#1}
}
\let\pfuproc@authorfull\@empty

% Учёное звание
\DeclareRobustCommand{\authorrank}[1]{%
  \def\pfuproc@authorrank{#1}
}
\let\pfuproc@authorrank\@empty

% Учёная степень
\DeclareRobustCommand{\authordegree}[1]{%
  \def\pfuproc@authordegree{#1}
}
\let\pfuproc@authordegree\@empty

% Учёная должность
\DeclareRobustCommand{\authorpost}[1]{%
  \def\pfuproc@authorpost{#1}
}
\let\pfuproc@authorpost\@empty

% e-mail
\DeclareRobustCommand{\email}[1]{%
  \def\pfuproc@mail{#1}
}
\let\pfuproc@mail\@empty

% Телефон
\DeclareRobustCommand{\phone}[1]{%
  \def\pfuproc@phone{#1}
}
\let\pfuproc@phone\@empty

%}}}

\newwrite\pfuproc@titleslist
\immediate\openout\pfuproc@titleslist titleslist.tex

 \def\@maketitle@hook{%
   \def\pfuproc@titleslist@entry{%
     % Authors
     % \ifx\@empty\authors\else\@setauthors\fi
     \@title
     \par
     %\authorstoc
     \par
%     \t@abstract 
     \par
     \keywordsname: \@keywords%
     \par\par
   }

   \immediate\write\pfuproc@titleslist{\pfuproc@titleslist@entry}
 }
