%%% 

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{metodka}
                [2008/01/08 v0.0.0.2 
    Method Book Class, Russian Standard]
%%

\ExecuteOptions{a5paper,10pt,twoside,onecolumn,final,openany}
\ProcessOptions*\relax

\LoadClassWithOptions{kgeneric}
%%
% \RequirePackage{tocloft}
% \RequirePackage{cite}
\RequirePackage{keyval}
\RequirePackage{substr}

% \RequirePackage{longtable}
% \RequirePackage[longtable]{caption2}

\@addtoreset{figure}{chapter}
\renewcommand{\thefigure}%
{%
  \ifnum \c@chapter>\z@\thechapter.\fi \@arabic\c@figure%
}


%% FEXME need move to kermit bundle

\providecommand{\chapaftersnum}{.}
\providecommand{\secaftersnum}{.}

% FIXME Должно зависить от языка
\AtBeginDocument{%
\@ifpackageloaded{polyglossia}{}{%
        \renewcommand\appendixnum{\@Asbuk\c@chapter}
}
}

%\AtBeginDocument{%
%    \addto\captionsrussian{%
%       \def\chaptername{}%
%    }
%}

\RequirePackage{titlesec}

\titleformat{\chapter}[block]%
    {\raggedright\thispagestyle{fancy}\normalfont\chapterFontSize\chapterFontShape}{\chaptertitlename\space\thechapter\chapaftersnum}{0.8\baselineskip}{\chapterFontSize}
%    {\raggedright\thispagestyle{empty}\normalfont\chapterFontSize\chapterFontShape}{\chaptertitlename\space\thechapter\chapaftersnum}{0.8\baselineskip}{\chapterFontSize}    
%    {\normalfont\chapterFontSize\chapterFontShape}{\chaptertitlename\space\thechapter\chapaftersnum}{0.8\baselineskip}{\chapterFontSize}    
\titleformat{\section}[block]%
    {\raggedright\normalfont\sectionFontSize\sectionFontShape}{\thesection\secaftersnum}{1em}{}
\titleformat{\subsection}[block]%
    {\raggedright\normalfont\subsectionFontSize\subsectionFontShape}{\thesubsection\secaftersnum}{1em}{}
\titleformat{\subsubsection}[block]%
    {\raggedright\normalfont\subsubsectionFontSize\subsubsectionFontShape}{\thesubsubsection\secaftersnum}{1em}{}
\titleformat{\paragraph}[runin]%
    {\normalfont\paragraphFontSize\paragraphFontShape}{\theparagraph\secaftersnum}{1em}{}
\titleformat{\subparagraph}[runin]%
    {\normalfont\subparagraphFontSize\subparagraphFontShape}{\thesubparagraph\secaftersnum}{1em}{}

\titlespacing{\chapter}{0\p@}{0\p@}{10\p@}

\RequirePackage{ifthen}
\RequirePackage{truncate}
\newlength{\sectionmarkWidth}
\newlength{\chaptermarkWidth}
\newlength{\PFUmarkWidth}
\setlength{\PFUmarkWidth}{0.8\textwidth}

\renewcommand{\chaptermark}[1]{%
    \settowidth{\sectionmarkWidth}{\thesection. #1}%
    \ifthenelse{\lengthtest{\sectionmarkWidth < \PFUmarkWidth}}{%
        \markboth{\chaptertitlename\ \thechapter. #1}{\chaptertitlename\ \thechapter. #1}
    }{%
        \markboth{\truncate{0.8\textwidth}{\hfill\chaptertitlename\ \thechapter. #1\hfill}}{\truncate{0.8\textwidth}{\hfill\chaptertitlename\ \thechapter. #1\hfill}}
    }
}
\renewcommand{\sectionmark}[1]{%
    \settowidth{\sectionmarkWidth}{\thesection. #1}%
    \ifthenelse{\lengthtest{\sectionmarkWidth < \PFUmarkWidth}}{%
        \markright{\thesection. #1}%
    }{% 
        \markright{\truncate{0.8\textwidth}{\hfill\thesection. #1\hfill}}%
    }
}

\fancyhead[CE]{\small \leftmark}%
\fancyhead[CO]{\small \rightmark}%

\RequirePackage{titletoc}

\titlecontents{chapter}[0pt]%
{\vspace{1ex minus .1ex}\chapterFontShape}%
{\chaptertitlename\space\thecontentslabel.\quad}%
{}%
{\titlerule*[1pc]{.}\contentspage}

\titlecontents{section}[0pt]%
{}%
{\thecontentslabel.\quad}%
{..}%
{\titlerule*[1pc]{.}\contentspage}


%%%
%%%
%%%
%%% Captions
%%%

% \InputIfFileExists{gost/caption.cli}{}{}

%%%
%%% Theorems
%%%

\InputIfFileExists{kermit/theorem.cli}{}{}

% \renewcommand{\captionlabeldelim}{.~}

% \renewcommand\chapter{%
%   \if@openright\cleardoublepage\else\clearpage\fi
%   \global\@topnum\z@
%   \@startsection {chapter}{0}{\z@}%
%   {20 \p@ \@plus -1ex \@minus -.2ex}%
%   {20 \p@ \@plus.2ex}%
%   {\noindent\chapterPosition\normalfont\chapterFontSize\chapterFontShape}%
% }

% \newcaptionstyle{table_right}{%
%   \renewcommand{\captionlabeldelim}{}
%   \usecaptionmargin\captionfont%
%   {\flushright\captionlabelfont\captionlabel\captionlabeldelim\par}
%   \onelinecaption{\captiontext}{\center\captiontext}\medskip
% }

% \renewcaptionstyle{longtable}{%
%   \renewcommand{\captionlabeldelim}{}
%   \usecaptionmargin%
%   {\flushright\captionlabelfont\captionlabel\captionlabeldelim\par}
%   \captionfont
%   \onelinecaption{\captiontext}{\center\captiontext}\medskip
% }

% \renewenvironment{table}{%
%   \captionstyle{table_right}%
%   \footnotesize
%%%   \small
%   \@float{table}%
% }{%
% \end@float%
% }
% \renewenvironment{figure}{%
%%%   \footnotesize
%   \scriptsize
%  \@float{figure}%
%}{%
% \end@float%
% }

\def\@floatboxreset{\global\@minipagefalse \centering}
%%
\def\@seccntformat#1{\csname the#1\endcsname.\quad}

%%%
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{1}

%%%

\renewcommand{\@biblabel}[1]{#1.}

%%%
%%%
%%%

\geometry{includehead}
% \geometry{includeheadfoot}
% \geometry{includefoot}
% \geometry{twoside}
\geometry{nofoot}
\geometry{bindingoffset=0pt}
\geometry{marginparwidth=0pt,marginparsep=0pt}

%\AtEndOfClass%
%{
%  \RequirePackage{geometry}
%% \geometry{reset}
%  \geometry{heightrounded}
%  \geometry{includeheadfoot}
%  \if@twoside\geometry{twoside}\fi
%  \geometry{papersize={145mm,215mm}}
%  \geometry{hmargin={11mm,17mm},vmargin={11mm,19mm}}
%% \geometry{total={117mm,185mm}}
%  \geometry{marginparwidth=0dd,marginparsep=0dd}
%  \geometry{twosideshift=0dd}
%  \geometry{headheight=4mm}
%  \geometry{footskip=2mm}
%}

%{{{ \paperid{}

\newwrite\paperidFile
\immediate\openout\paperidFile=split-paper

\renewcommand{\paperid}[1]{
  \immediate\write\paperidFile{#1 \thepage}
}

\AtEndDocument{%
  \immediate\closeout\paperidFile
}

% \newwrite\trackidFile
% \immediate\openout\trackidFile=split-track

% \newcommand{\trackid}[1]{
%   \immediate\write\trackidFile{#1 \thepage}
% }

% \AtEndDocument{%
%   \immediate\closeout\trackidFile
% }

%}}}
