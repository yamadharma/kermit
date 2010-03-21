%%% 

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pfuproc}
                [2010/03/14 v0.1.0
                Bulletin of Peoples’Friendship University of Russia]

\ExecuteOptions{a4paper,10pt,twoside,onecolumn,final,openany}
\ProcessOptions*\relax

\LoadClassWithOptions{kproc}

% List of Authors

\def\writeauthorlist{%
  \@starttoc{alist}
}

\let\pfuproc@authorlistentry\@empty

\def\pfuproc@flushauthorlist{%
  % Добавим в macro всё, что есть сейчас
  \g@addto@macro\pfuproc@authorlistentry{%
    \par
    \pfuproc@authorfull~--- 
    \pfuproc@authorrank
    \pfuproc@authordegree
    \pfuproc@authorpost
    email:~\pfuproc@mail
    Phone:~\pfuproc@phone
  }
  \let\pfuproc@authorrank\@empty
  \let\pfuproc@authordegree\@empty
  \let\pfuproc@authorpost\@empty
  \let\pfuproc@mail\@empty
  \let\pfuproc@phone\@empty
}

% Автор
\DeclareRobustCommand{\authorfull}[1]{%
  \ifx\pfuproc@authorfull\@empty
  \def\pfuproc@authorfull{#1}
  \else
  \pfuproc@flushauthorlist
  \def\pfuproc@authorfull{#1}
  \fi
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

\def\@maketitle@hook{%
  \ifx\pfuproc@authorfull\@empty
  \else
  \pfuproc@flushauthorlist
  \addtocontents{alist}{\pfuproc@authorlistentry}
  \fi

\let\pfuproc@authorlistentry\@empty
\let\pfuproc@authorfull\@empty
}
