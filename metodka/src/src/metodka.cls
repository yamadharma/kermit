%%% 

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{metodka}
                [2000/01/01 v0.0.0 
    Method Book Class, Russian Standard]
%%

\ExecuteOptions{a4paper,10dd,twoside,onecolumn,final,openany}
\ProcessOptions*\relax

\LoadClassWithOptions{kgeneric}
%%
% \RequirePackage{tocloft}
\RequirePackage{cite}
\RequirePackage{keyval}
\RequirePackage{substr}

\RequirePackage{longtable}
% \RequirePackage[longtable]{caption2}

%%%
%%% Sections
%%%


%%
%\renewcommand{\cftchapaftersnum}{.}
%\renewcommand{\cftsecaftersnum}{.}

%\renewcommand{\cftchapfont}{\normalfont}
%\renewcommand{\cftchappagefont}{\normalfont}
%\renewcommand{\cftchapdotsep}{\cftdotsep}

%%
\renewcommand{\chapterFontShape}{\scshape}
\renewcommand{\chapterFontSize}{\huge}
\renewcommand{\chapterPosition}{}
%%
\renewcommand{\sectionFontShape}{\scshape}
\renewcommand{\sectionFontSize}{\Large}
\renewcommand{\sectionPosition}{}
%%
\renewcommand{\subsectionFontShape}{\scshape}
\renewcommand{\subsectionFontSize}{\large}
\renewcommand{\subsectionPosition}{}
%%
\renewcommand{\subsubsectionFontShape}{\scshape}
\renewcommand{\subsubsectionFontSize}{\normalsize}
\renewcommand{\subsubsectionPosition}{}
%%
\renewcommand{\paragraphFontShape}{\scshape}
\renewcommand{\paragraphFontSize}{\normalsize}
\renewcommand{\paragraphPosition}{}
%%
\renewcommand{\subparagraphFontShape}{\scshape}
\renewcommand{\subparagraphFontSize}{\normalsize}
\renewcommand{\subparagraphPosition}{}

%% FEXME need move to kermit bundle

\RequirePackage{fancyhdr}%
\AtEndOfClass{
\pagestyle{fancy} 
\fancyhead{}%
\fancyfoot{}%
\fancyhead[LE,RO]{\small \thepage}%
\renewcommand{\headrulewidth}{0.4dd}
}

%% FEXME need move to kermit bundle

\RequirePackage{titlesec}

\titleformat{\chapter}[block]%
    {\thispagestyle{fancy}\normalfont\chapterFontSize\chapterFontShape}{\chaptertitlename\ \thechapter.}{0.8\baselineskip}{\chapterFontSize}
\titleformat{\section}[block]%
    {\normalfont\sectionFontSize\sectionFontShape}{\thesection.}{1em}{}
\titleformat{\subsection}[block]%
    {\normalfont\subsectionFontSize\subsectionFontShape}{\thesubsection.}{1em}{}
\titleformat{\subsubsection}[block]%
    {\normalfont\subsubsectionFontSize\subsubsectionFontShape}{\thesubsubsection.}{1em}{}
\titleformat{\paragraph}[runin]%
    {\normalfont\paragraphFontSize\paragraphFontShape}{\theparagraph.}{1em}{}
\titleformat{\subparagraph}[runin]%
    {\normalfont\subparagraphFontSize\subparagraphFontShape}{\thesubparagraph.}{1em}{}

%% FEXME need move to kermit bundle

\RequirePackage{titletoc}

\titlecontents{chapter}[0pt]%                                                                                                                                  
{\vspace{1ex minus .1ex}}%
{\thecontentslabel.\quad}%
{}%                                                                                                                                                          
{\titlerule*[1pc]{.}\contentspage}                                                                                                                             

\titlecontents{section}[1pc]%                                                                                                                                  
{}%                                                                                                                                                            
{\thecontentslabel.\quad}%                                                                                                                                  
{..}%                                                                                                                                                          
{\titlerule*[1pc]{.}\contentspage}                 


%%%
%%%
%%%
%%% Captions
%%%

\InputIfFileExists{gost/caption.cli}{}{}

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
%%% Headers
%%%

\RequirePackage{fancyhdr}%
\pagestyle{fancy}%
\fancyhead{}%
\fancyhead[C]{\small \thepage}%
\renewcommand{\headrulewidth}{0dd}%
\fancyfoot{}%

%%%
%%%
%%%

\AtEndOfClass%
{
  \RequirePackage{geometry}
% \geometry{reset}
  \geometry{heightrounded}
  \geometry{includeheadfoot}
  \if@twoside\geometry{twoside}\fi
  \geometry{papersize={145mm,215mm}}
  \geometry{hmargin={11mm,17mm},vmargin={11mm,19mm}}
% \geometry{total={117mm,185mm}}
  \geometry{marginparwidth=0dd,marginparsep=0dd}
  \geometry{twosideshift=0dd}
  \geometry{headheight=4mm}
  \geometry{footskip=2mm}
}

