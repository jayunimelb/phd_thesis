% Class file for Loren Bruns' 2012 University of Melbourne
% Astrophysics thesis.
%
% This is based on the 2005 Reed College thesis template as
% modified for Loren Bruns' bachelors thesis, which is itself
% a modified version of book.cls

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{unimelb-thesis}[2012/01/30 v0.1 Unimelb Astrophysics Class]

\usepackage{fancyhdr}

\newcommand\@ptsize{}%
\newif\if@restonecol%
\newif\if@titlepage\@titlepagetrue%
\newif\if@openright%
\newif\if@mainmatter\@mainmattertrue%

\if@compatibility%
\else%
\DeclareOption{pinchedcrown}%
{\setlength\paperheight {244mm}%
  \setlength\paperwidth {170mm}}%
\DeclareOption{a4paper}%
{\setlength\paperheight {297mm}%
  \setlength\paperwidth {210mm}}%
\DeclareOption{a5paper}%
{\setlength\paperheight {210mm}%
  \setlength\paperwidth {148mm}}%
\DeclareOption{b5paper}%
{\setlength\paperheight {250mm}%
  \setlength\paperwidth {176mm}}%
\DeclareOption{letterpaper}%
{\setlength\paperheight {11in}%
  \setlength\paperwidth {8.5in}}%
\DeclareOption{legalpaper}%
{\setlength\paperheight {14in}%
  \setlength\paperwidth {8.5in}}%
\DeclareOption{executivepaper}
{\setlength\paperheight {10.5in}%
  \setlength\paperwidth {7.25in}}%
\DeclareOption{landscape}
{\setlength\@tempdima {\paperheight}%
  \setlength\paperheight {\paperwidth}%
  \setlength\paperwidth {\@tempdima}}%
\fi%

\if@compatibility%
\renewcommand\@ptsize{0}%
\else%
\DeclareOption{10pt}{\renewcommand\@ptsize{0}}%
\fi%

\DeclareOption{11pt}{\renewcommand\@ptsize{1}}%
\DeclareOption{12pt}{\renewcommand\@ptsize{2}}%

\if@compatibility\else%
\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}%
\fi%

\DeclareOption{twoside}{\@twosidetrue \@mparswitchtrue}%
\DeclareOption{draft}{\setlength\overfullrule{5pt}}%

\if@compatibility\else%
\DeclareOption{final}{\setlength\overfullrule{0pt}}%
\fi%

\DeclareOption{titlepage}{\@titlepagetrue}%

\if@compatibility\else%
\DeclareOption{notitlepage}{\@titlepagefalse}%
\fi%

\if@compatibility%
\@openrighttrue%
\else%
\DeclareOption{openright}{\@openrighttrue}%
\DeclareOption{openany}{\@openrightfalse}%
\fi%

\if@compatibility\else%
\DeclareOption{onecolumn}{\@twocolumnfalse}%
\fi%

\DeclareOption{twocolumn}{\@twocolumntrue}%
\DeclareOption{leqno}{\input{leqno.clo}}%
\DeclareOption{fleqn}{\input{fleqn.clo}}%
\DeclareOption{openbib}{%
  \AtEndOfPackage{%
    \renewcommand\@openbib@code{%
      \advance\leftmargin\bibindent \itemindent -\bibindent%
      \listparindent \itemindent \parsep \z@ }%
    \renewcommand\newblock{\par}}%
}%
\ExecuteOptions{letterpaper,10pt,twoside,onecolumn,final,openright}%
\ProcessOptions%
\input{bk1\@ptsize.clo}%
\setlength\lineskip{1\p@}%
\setlength\normallineskip{1\p@}%
\renewcommand\baselinestretch{}%
\setlength\parskip{0\p@ \@plus \p@}%
\@lowpenalty 51%
\@medpenalty 151%
\@highpenalty 301%
\setcounter{topnumber}{2}%
\renewcommand\topfraction{.7}%
\setcounter{bottomnumber}{1}%
\renewcommand\bottomfraction{.3}%
\setcounter{totalnumber}{3}%
\renewcommand\textfraction{.2}%
\renewcommand\floatpagefraction{.5}%
\setcounter{dbltopnumber}{2}%
\renewcommand\dbltopfraction{.7}%
\renewcommand\dblfloatpagefraction{.5}%
\if@twoside \def\ps@headings{%
  \let\@oddfoot\@empty\let\@evenfoot\@empty%
  \def\@evenhead{\thepage\hfil\slshape\leftmark}%
  \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
  \let\@mkboth\markboth \def\chaptermark##1{%
    \markboth {\MakeUppercase{%
        \ifnum \c@secnumdepth >\m@ne \if@mainmatter \@chapapp\ %
        \thechapter. \ %
        \fi \fi ##1}}{}}%
  \def\sectionmark##1{%
    \markright {\MakeUppercase{%
        \ifnum \c@secnumdepth >\z@ \thesection. \ %
        \fi ##1}}}} \else \def\ps@headings{%
  \let\@oddfoot\@empty%
  \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
  \let\@mkboth\markboth \def\chaptermark##1{%
    \markright {\MakeUppercase{%
        \ifnum \c@secnumdepth >\m@ne \if@mainmatter \@chapapp\ %
        \thechapter. \ %
        \fi \fi ##1}}}} \fi \def\ps@myheadings{%
  \let\@oddfoot\@empty\let\@evenfoot\@empty%
  \def\@evenhead{\thepage\hfil\slshape\leftmark}%
  \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
  \let\@mkboth\@gobbletwo \let\chaptermark\@gobble%
  \let\sectionmark\@gobble } \if@titlepage%

%\newcommand\maketitle{\begin{titlepage}%
%    \let\footnotesize\small \let\footnoterule\relax \let \footnote%
%    \thanks \null\vfil \vskip 60\p@%
%    \begin{center}%
%      {\LARGE \@title \par}%
%      \vskip 3em%
%      {\large%
%        \lineskip .75em%
%        \begin{tabular}[t]{c}%
%          \@author%
%        \end{tabular}\par}%
%      \vskip 1.5em%
%      {\large \@date \par}%       % Set date in \large size.
%    \end{center}\par%
%    \@thanks \vfil\null%
%  \end{titlepage}%
%  \setcounter{footnote}{0}%
%  \global\let\thanks\relax%
%  \global\let\maketitle\relax%
%  \global\let\@thanks\@empty%
%  \global\let\@author\@empty%
%  \global\let\@date\@empty%
%  \global\let\@title\@empty%
%  \global\let\title\relax%
%  \global\let\author\relax%
%  \global\let\date\relax%
%  \global\let\and\relax%
%}%
%\else%
%\newcommand\maketitle{\par%
%  \begingroup%
%  \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
%  \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
%  \long\def\@makefntext##1{\parindent 1em\noindent
%    \hb@xt@1.8em{%
%      \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
%  \if@twocolumn%
%  \ifnum \col@number=\@ne%
%  \@maketitle%
%  \else%
%  \twocolumn[\@maketitle]%
%  \fi%
%  \else%
%  \newpage%
%  \global\@topnum\z@   % Prevents figures from going at top of page.
%  \@maketitle%
%  \fi%
%  \thispagestyle{plain}\@thanks%
%  \endgroup%
%  \setcounter{footnote}{0}%
%  \global\let\thanks\relax%
%  \global\let\maketitle\relax%
%  \global\let\@maketitle\relax%
%  \global\let\@thanks\@empty%
%  \global\let\@author\@empty%
%  \global\let\@date\@empty%
%  \global\let\@title\@empty%
%  \global\let\title\relax%
%  \global\let\author\relax%
%  \global\let\date\relax%
%  \global\let\and\relax%
%}%
%\def\@maketitle{%
%  \newpage%
%  \null%
%  \vskip 2em%
%  \begin{center}%
%    \let \footnote \thanks {\LARGE \@title \par}%
%    \vskip 1.5em%
%    {\large \lineskip .5em%
%      \begin{tabular}[t]{c}%
%        \@author%
%      \end{tabular}\par}%
%    \vskip 1em%
%    {\large \@date}%
%  \end{center}%
%  \par%
%  \vskip 1.5em}%
%\fi%


% ABSTRACT
%\newenvironment{Abstract}{%
%  \cleardoublepage%
%  \setbox0=\hbox{\huge \bf Abstract}%
%  \thispagestyle{empty}%
%  \null\vfil % just below center of page
%  \par\vskip -2cm % above center, not center
%  \centerline{\copy0}
%  \par\vskip 1cm
%  \noindent%
%  \large
%}%
%{\par\vfil\null\normalsize}%

% BEGIN FANCY HEADER

%Default for frontmatter
\fancypagestyle{frontmatter}{
  \renewcommand{\headrulewidth}{0.4pt}
  \renewcommand{\footrulewidth}{0pt}
  \fancyhf{}
  \fancyhead[CE]{ \textsc{\large \leftmark} }
  \fancyhead[CO]{ \textsc{\large \rightmark} }
  \fancyhead[LE,RO]{ \textsc{\thepage} }
}

%Default for mainmatter
\fancypagestyle{mainmatter}{
  \renewcommand{\headrulewidth}{0.4pt}
  \renewcommand{\footrulewidth}{0pt}
  \fancyhf{}
  \fancyhead[CE]{ \textsc{\large \@chapapp\ \thechapter: \leftmark} }
  \fancyhead[CO]{ \textbf{\boldmath \rightmark} }
  \fancyhead[LE,RO]{ \textsc{\thepage} }
}

%Default for backmatter
\fancypagestyle{backmatter}{
  \renewcommand{\headrulewidth}{0.4pt}
  \renewcommand{\footrulewidth}{0pt}
  \fancyhf{}
  \fancyhead[CE]{ \textsc{\large \leftmark} }
  \fancyhead[CO]{ \textsc{\large \rightmark} }
  \fancyhead[LE,RO]{ \textsc{\thepage} }
}

%Ensure empty pages are indeed empty
\fancypagestyle{empty}{
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
  \fancyhf{}
}

%Ensure plain pages are empty as well
\fancypagestyle{plain}{
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
  \fancyhf{}
}

%\chaptermark must be after \pagestyle, BUT NOT AFTER \pagestylenew!!!!
\newcommand{\chaptermarknew}[1]{\markboth{#1}{}}
\newcommand{\sectionmarknew}[1]{\markright{\S\thesection\ #1}}

% Finally update the pagestyle with the new markings
\newcommand{\pagestylenew}[1]{%
  \pagestyle{#1}
  \renewcommand{\chaptermark}{\chaptermarknew}
  \renewcommand{\sectionmark}{\sectionmarknew}
}
% END FANCY HEADER


% BEGIN ABSTRACT
\newenvironment{abstract}{%
  \cleardoublepage%
  \chapter*{Abstract}
}%
% END ABSTRACT

% BEGIN DECLARATION
\newenvironment{declaration}{%
  \cleardoublepage%
  \chapter*{Declaration}
}%
{% Add dotted line that just fits over the length of the printed name
  \begin{flushright}
    \newlength{\@authorlen}
    \settowidth{\@authorlen}{\@author}
    \makebox[1.15 \@authorlen][l]{{\leavevmode \cleaders \hb@xt@ .3em{\hss.\hss}\hfill \kern\z@}}\\%\dotfill}\\
    \@author
  \end{flushright}
}%
% END DECLARATION

% BEGIN PREFACE
\newenvironment{preface}{%
  \cleardoublepage%
  \chapter*{Preface}
}%
% END PREFACE

% BEGIN ACKNOWLEDGEMENTS
\newenvironment{acknowledgements}{%
  \cleardoublepage%
  \chapter*{Acknowledgements}
}%
% END ACKNOWLEDGEMENTS

%% LB: Here we clean up reedthesis.cls
\newcommand{\faculty}[1]{\gdef \@faculty{#1}}%
\def\@faculty{\@latex@warning@no@line{No \noexpand\faculty given}}%

\newcommand{\degree}[1]{\gdef \@degree{#1}}%
\def\@degree{\@latex@warning@no@line{No \noexpand\degree given}}%

%% Our custom maketitle
\newcommand\maketitle{%
  {\pagestyle{empty}%
    \fontsize{12}{14}\selectfont%
    \begin{titlepage}%
      \newpage%
      \let\footnotesize\small%
      \let\footnoterule\relax%
      \let\footnote\thanks%
      \baselineskip = 1.4\baselineskip%
      \setbox0=\hbox{of the Requirements of the Degree of}% Set the width of the horizontal bars to widest required line
      \begin{center}%
        \setcounter{page}{1}%
        \null\vfil%
        {\fontsize{14}{18}\selectfont \@title}%
        \vfil%
        \centerline{\hbox to \wd0 {\hbox{}\hrulefill\hbox{}}}%
        \vfil%
        Submitted in Total Fulfillment \\[-2.5ex]%%
        of the Requirements of the Degree of \\%
        \@degree%
        \vfil%
        \centerline{\hbox to \wd0 {\hbox{}\hrulefill\hbox{}}}%
        \vfil%
        \@faculty \\%
        The University of Melbourne
        \vfil
        \centerline{\hbox to \wd0 {\hbox{}\hrulefill\hbox{}}}%
        \bigskip%
        \centerline{}%
        \bigskip%
        {\fontsize{14}{18}\selectfont%
          \lineskip .75em%
          \begin{tabular}[t]{c}%
            \@author%
          \end{tabular}\par%
        }%
        \vskip 1em%
        {\fontsize{14}{18}\selectfont \@date \par}%
        \vfil
      \end{center}%
      \par%
    \end{titlepage}%
    \cleardoublepage%
  }%
}%

\newcommand*\chaptermark[1]{}%
\setcounter{secnumdepth}{2}%
\newcounter{part}%
\newcounter{chapter}%
\newcounter{section}[chapter]%
\newcounter{subsection}[section]%
\newcounter{subsubsection}[subsection]%
\newcounter{paragraph}[subsubsection]%
\newcounter{subparagraph}[paragraph]%
\renewcommand\thepart{\@Roman\c@part}%
\renewcommand\thechapter{\@arabic\c@chapter}%
\renewcommand\thesection{\thechapter.\@arabic\c@section}%
\renewcommand\thesubsection{\thesection.\@arabic\c@subsection}%
\renewcommand\thesubsubsection{\thesubsection.\@arabic\c@subsubsection}%
\renewcommand\theparagraph{\thesubsubsection.\@arabic\c@paragraph}%
\renewcommand\thesubparagraph{\theparagraph.\@arabic\c@subparagraph}%
\newcommand\@chapapp{\chaptername}%

% Code to allow for adding prefix and postfix to chapter name in TOC, define with defaults
\newcommand\frontmatter{%
  \cleardoublepage%
  \@mainmatterfalse%
  \pagenumbering{roman}
  \pagestylenew{frontmatter}%
}%
\newcommand\mainmatter{%
  \cleardoublepage%
  \@mainmattertrue%
  \pagenumbering{arabic}%
  \pagestylenew{mainmatter}%
}%
\newcommand\backmatter{%
  \if@openright%
  \cleardoublepage%
  \else%
  \clearpage%
  \fi%
  \@mainmatterfalse%
  \pagestylenew{backmatter}%
}%
\newcommand\appendix{%
  \cleardoublepage%
  \@mainmattertrue%
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \gdef\@chapapp{\appendixname}%
  \gdef\thechapter{\@Alph\c@chapter}%
  \pagestylenew{mainmatter}%
}%
\newcommand\part{%
  \if@openright%
  \cleardoublepage%
  \else%
  \clearpage%
  \fi%
  \thispagestyle{plain}%
  \if@twocolumn%
  \onecolumn%
  \@tempswatrue%
  \else%
  \@tempswafalse%
  \fi%
  \null\vfil%
  \secdef\@part\@spart%
}%

\def\@part[#1]#2{%
  \ifnum%
  \c@secnumdepth >-2\relax%
  \refstepcounter{part}%
  \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
  \else%
  \addcontentsline{toc}{part}{#1}%
  \fi%
  \markboth{}{}%
  {\centering%
    \interlinepenalty%
    \@M%
    \normalfont%
    \ifnum%
    \c@secnumdepth >-2\relax%
    \huge\bfseries\partname\nobreakspace\thepart%
    \par%
    \vskip 20\p@%
    \fi%
    \Huge \bfseries #2\par
  }%
  \@endpart}%

\def\@spart#1{%
  {\centering%
    \interlinepenalty%
    \@M%
    \normalfont%
    \Huge\bfseries #1\par%
  }%
  \@endpart}%

\def\@endpart{%
  \vfil\newpage%
  \if@twoside%
  \if@openright%
  \null%
  \thispagestyle{empty}%
  \newpage%
  \fi%
  \fi%
  \if@tempswa%
  \twocolumn%
  \fi}%

\newcommand\chapter{%
  \if@openright%
  \cleardoublepage%
  \else%
  \clearpage%
  \fi%
  \thispagestyle{plain}%
  \global\@topnum\z@%
  \@afterindentfalse%
  \secdef\@chapter\@schapter
}%

%\def\@dottedtocline#1#2#3#4#5{%
%  \ifnum #1>\c@tocdepth \else
%    \vskip \z@ \@plus.2\p@
%    {\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
%     \parindent #2\relax\@afterindenttrue
%     \interlinepenalty\@M
%     \leavevmode
%     \@tempdima #3\relax
%     \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
%     {#4}\nobreak
%     \leaders\hbox{$\m@th
%        \mkern \@dotsep mu\hbox{.}\mkern \@dotsep
%        mu$}\hfill
%     \nobreak
%     \hb@xt@\@pnumwidth{\hfil\normalfont \normalcolor #5}%
%     \par}%
%  \fi}
%\newcommand*\l@section{\@dottedtocline{1}{1.5em}{2.3em}}%
%\newcommand*\l@subsection{\@dottedtocline{2}{3.8em}{3.2em}}%
%\newcommand*\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}}%
%\newcommand*\l@paragraph{\@dottedtocline{4}{10em}{5em}}%
%\newcommand*\l@subparagraph{\@dottedtocline{5}{12em}{6em}}%

\def\@chapter[#1]#2{%
  \ifnum%
  \c@secnumdepth >\m@ne%
  \if@mainmatter%
  \refstepcounter{chapter}%
  \typeout{\@chapapp\space\thechapter.}%
  \addcontentsline{toc}{chapter}%
  {\@tempdima5.5em\relax%
  \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip%
  \protect\numberline{\boldmath \@chapapp\ \thechapter:}%
  {\boldmath #1}}% LB: Wrapped #1 with boldmath, Moved \thechapter into second {}
  \else%
  \addcontentsline{toc}{chapter}{#1}%
  \fi%
  \else%
  \addcontentsline{toc}{chapter}{#1}%
  \fi%
  \chaptermark{#1}%
  \addtocontents{lof}{\protect\addvspace{10\p@}}%
  \addtocontents{lot}{\protect\addvspace{10\p@}}%
  \if@twocolumn%
  \@topnewpage[\@makechapterhead{#2}]%
  \else%
  \@makechapterhead{#2}%
  \@afterheading%
  \fi%
}%

%\def\@chapter[#1]#2{%
%  \ifnum%
%  \c@secnumdepth >\m@ne%
%  \if@mainmatter%
%  \refstepcounter{chapter}%
%  \typeout{\@chapapp\space\thechapter.}%
%  \addcontentsline{toc}{chapter}%
%  {\protect\numberline{}{\boldmath
%  \@chapapp\ \thechapter: #1}}% LB: Wrapped #1 with boldmath, Moved \thechapter into second {}
%  \else%
%  \addcontentsline{toc}{chapter}{#1}%
%  \fi%
%  \else%
%  \addcontentsline{toc}{chapter}{#1}%
%  \fi%
%  \chaptermark{#1}%
%  \addtocontents{lof}{\protect\addvspace{10\p@}}%
%  \addtocontents{lot}{\protect\addvspace{10\p@}}%
%  \if@twocolumn%
%  \@topnewpage[\@makechapterhead{#2}]%
%  \else%
%  \@makechapterhead{#2}%
%  \@afterheading%
%  \fi%
%}%

\def\@makechapterhead#1{% LB: Saucy chapter!!
  \vspace*{25\p@}%
  {\parindent \z@%
    \raggedright%
    \normalfont%
    \ifnum%
    \c@secnumdepth >\m@ne%
    \if@mainmatter%
    {\fontsize{48}{60}\textbf{\@chapapp\ \thechapter}}%
    \par\nobreak%
    \vskip 20\p@%
    \fi%
    \fi%
    \interlinepenalty\@M%
%    {\fontsize{24}{40} \bfseries #1}%
    {\Huge\bfseries #1}%
  }%
  \par\nobreak%
  \vskip 3\p@%
  \hrule width5cm height 1pt%
  \hrule width2cm height 3pt%
  \vskip 15\p@%
}%

\def\@schapter#1{%
  \if@twocolumn%
  \@topnewpage[\@makeschapterhead{#1}]%
  \else%
  \@makeschapterhead{#1}%
  \@afterheading%
  \fi%
}%

\def\@makeschapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@%
    \raggedright%
    \normalfont%
    \interlinepenalty\@M%
    \Huge \bfseries #1\par\nobreak%
    \vskip 40\p@%
  }%
}%

   \newcommand\section{%
    \@startsection{section}{1}{\z@}%
    {-2.3ex \@plus -1ex \@minus -.2ex}%
    {1.3ex \@plus .2ex}%
    {\large\bfseries}}%
  % {-3.5ex \@plus -1ex \@minus -.2ex}%
  % {2.3ex \@plus.2ex}%
  % {\normalfont\Large\bfseries}}

  \newcommand\subsection{%
     \@startsection{subsection}{2}{\z@}%
     {-2.3ex\@plus -1ex \@minus -.2ex}%
     {1.3ex \@plus .2ex}%
     {\em\large\bfseries}}%
   % {-3.25ex\@plus -1ex \@minus -.2ex}%
   % {1.5ex \@plus .2ex}%
   % {\normalfont\large\bfseries}}

   \newcommand\subsubsection{%
     \@startsection{subsubsection}{3}{\z@}%
     {-3.25ex\@plus -1ex \@minus -.2ex}%
     {1.5ex \@plus .2ex}%
     {\normalsize\bfseries}}%

   \newcommand\paragraph{%
     \@startsection{paragraph}{4}{\z@}%
     {3.25ex \@plus1ex \@minus.2ex}%
     {-1em}%
     {\normalfont\normalsize\bfseries}}%
   \newcommand\subparagraph{%
     \@startsection{subparagraph}{5}{\parindent}%
     {3.25ex \@plus1ex \@minus .2ex}%
     {-1em}%
     {\normalfont\normalsize\bfseries}}%
\if@twocolumn%
\setlength\leftmargini{2em}%
\else%
\setlength\leftmargini{2.5em}%
\fi%

\leftmargin%
\leftmargini%
\setlength\leftmarginii{2.2em}%
\setlength\leftmarginiii{1.87em}%
\setlength\leftmarginiv{1.7em}%

\if@twocolumn%
\setlength\leftmarginv{.5em}%
\setlength\leftmarginvi{.5em}%
\else
\setlength\leftmarginv{1em}%
\setlength\leftmarginvi{1em}%
\fi%

\setlength\labelsep{.5em}%
\setlength\labelwidth{\leftmargini}%
\addtolength\labelwidth{-\labelsep}%
\@beginparpenalty -\@lowpenalty%
\@endparpenalty   -\@lowpenalty%
\@itempenalty     -\@lowpenalty%
\renewcommand\theenumi{\@arabic\c@enumi}%
\renewcommand\theenumii{\@alph\c@enumii}%
\renewcommand\theenumiii{\@roman\c@enumiii}%
\renewcommand\theenumiv{\@Alph\c@enumiv}%
\newcommand\labelenumi{\theenumi.}%
\newcommand\labelenumii{(\theenumii)}%
\newcommand\labelenumiii{\theenumiii.}%
\newcommand\labelenumiv{\theenumiv.}%
\renewcommand\p@enumii{\theenumi}%
\renewcommand\p@enumiii{\theenumi(\theenumii)}%
\renewcommand\p@enumiv{\p@enumiii\theenumiii}%
\newcommand\labelitemi{\textbullet}%
\newcommand\labelitemii{\normalfont\bfseries \textendash}%
\newcommand\labelitemiii{\textasteriskcentered}%
\newcommand\labelitemiv{\textperiodcentered}%
\newenvironment{description}{%
  \list{}%
  {\labelwidth\z@%
    \itemindent-\leftmargin%
    \let\makelabel\descriptionlabel}%
}{\endlist}%

\newcommand*\descriptionlabel[1]{%
  \hspace\labelsep%
  \normalfont\bfseries #1%
}%

\newenvironment{verse}%
{\let\\\@centercr%
  \list{}%
  {\itemsep \z@%
    \itemindent -1.5em%
    \listparindent\itemindent%
    \rightmargin%
    \leftmargin%
    \advance\leftmargin 1.5em
  }%
\item\relax}{\endlist}%

\newenvironment{quotation}{%
  \list{}%
  {\listparindent 1.5em%
    \itemindent%
    \listparindent%
    \rightmargin%
    \leftmargin%
    \parsep \z@%
    \@plus\p@
  }%
\item\relax}{\endlist}%

\newenvironment{quote}{%
  \list{}%
  {\rightmargin
    \leftmargin
  }%
\item\relax}{\endlist}%

\if@compatibility \newenvironment{titlepage}{%
  \cleardoublepage%
  \if@twocolumn%
  \@restonecoltrue\onecolumn%
  \else%
  \@restonecolfalse\newpage%
  \fi%
  \thispagestyle{empty}%
  \setcounter{page}\z@%
} {%
  \if@restonecol\twocolumn%
  \else%
  \newpage%
  \fi%
} \else%
\newenvironment{titlepage}{%
  \cleardoublepage%
  \if@twocolumn%
  \@restonecoltrue\onecolumn%
  \else%
  \@restonecolfalse\newpage%
  \fi%
  \thispagestyle{empty}%
  \setcounter{page}\@ne%
} {%
  \if@restonecol\twocolumn%
  \else%
  \newpage%
  \fi%
  \if@twoside\else%
  \setcounter{page}\@ne%
  \fi%
}%
\fi%

\setlength\arraycolsep{5\p@}%
\setlength\tabcolsep{6\p@}%
\setlength\arrayrulewidth{.4\p@}%
\setlength\doublerulesep{2\p@}%
\setlength\tabbingsep{\labelsep}%
\skip\@mpfootins = \skip\footins%
\setlength\fboxsep{3\p@}%
\setlength\fboxrule{.4\p@}%
\@addtoreset {equation}{chapter}%
\renewcommand\theequation{%
  \ifnum%
  \c@chapter>\z@%
  \thechapter.\fi\@arabic\c@equation%
}

\newcounter{figure}[chapter]%
\renewcommand\thefigure{%
  \ifnum%
  \c@chapter>\z@%
  \thechapter.\fi\@arabic\c@figure%
}
\def\fps@figure{tbp}%
\def\ftype@figure{1}%
\def\ext@figure{lof}%
\def\fnum@figure{\figurename\nobreakspace\thefigure}%
\newenvironment{figure}{\@float{figure}}{\end@float}%
\newenvironment{figure*}{\@dblfloat{figure}}{\end@dblfloat}%

\newcounter{table}[chapter]%
\renewcommand\thetable{%
  \ifnum%
  \c@chapter>\z@%
  \thechapter.\fi\@arabic\c@table%
}
\def\fps@table{tbp}%
\def\ftype@table{2}%
\def\ext@table{lot}%
\def\fnum@table{\tablename\nobreakspace\thetable}%
\newenvironment{table}{\@float{table}}{\end@float}%
\newenvironment{table*}{\@dblfloat{table}}{\end@dblfloat}%

\newlength\abovecaptionskip%
\newlength\belowcaptionskip%
\setlength\abovecaptionskip{10\p@}%
\setlength\belowcaptionskip{0\p@}%
\long\def\@makecaption#1#2{\small% LB: Made captions not suck
  \vskip\abovecaptionskip%
  \sbox\@tempboxa{\textbf{#1:} #2}%
  \ifdim%
  \wd\@tempboxa >\hsize%
  {\textbf{#1:} #2\par}%
  \else%
  \global%
  \@minipagefalse%
  \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi%
  \vskip\belowcaptionskip%
}

\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}%
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}%
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}%
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}%
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}%
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}%
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}%
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}%
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}%

\newcommand\@pnumwidth{1.55em}%
\newcommand\@tocrmarg{2.55em}%
\newcommand\@dotsep{4.5}%
\setcounter{tocdepth}{2}%
\newcommand\tableofcontents{%
  \if@twocolumn%
  \@restonecoltrue\onecolumn%
  \else%
  \@restonecolfalse%
  \fi%
  \chapter*{%
    \contentsname%
    \@mkboth{\contentsname}{\contentsname}}% LB: removed \MakeUppercase
  \@starttoc{toc}%
  \if@restonecol\twocolumn\fi%
}%
\newcommand*\l@part[2]{%
  \ifnum%
  \c@tocdepth >-2\relax%
  \addpenalty{-\@highpenalty}%
  \addvspace{2.25em \@plus\p@}%
  \setlength\@tempdima{3em}%
  \begingroup%
  \parindent \z@%
  \rightskip%
  \@pnumwidth%
  \parfillskip -\@pnumwidth%
  {\leavevmode%
    \large \bfseries #1\hfil \hb@xt@\@pnumwidth{\hss #2}}\par%
  \nobreak%
  \global\@nobreaktrue%
  \everypar{\global\@nobreakfalse\everypar{}}%
  \endgroup%
  \fi%
}
\newcommand*\l@chapter[2]{%
  \ifnum%
  \c@tocdepth >\m@ne%
  \addpenalty{-\@highpenalty}%
  \vskip 1.0em \@plus\p@%
  \setlength\@tempdima{0em}%1.5em  NOTE: Removed spacing when changed numberline in \@chapter
  \begingroup%
  \parindent \z@%
  \rightskip%
  \@pnumwidth%
  \parfillskip -\@pnumwidth%
  \leavevmode \bfseries%
  \advance\leftskip\@tempdima%
  \hskip -\leftskip%
  #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par%
  \penalty\@highpenalty%
  \endgroup%
  \fi%
}%

\newcommand*\l@section{\@dottedtocline{1}{1.5em}{2.3em}}%
\newcommand*\l@subsection{\@dottedtocline{2}{3.8em}{3.2em}}%
\newcommand*\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}}%
\newcommand*\l@paragraph{\@dottedtocline{4}{10em}{5em}}%
\newcommand*\l@subparagraph{\@dottedtocline{5}{12em}{6em}}%


% LB: the fixme parade
\newcommand\listoffixmes{%
  \if@twocolumn%
  \@restonecoltrue\onecolumn%
  \else
  \@restonecolfalse%
  \fi%
  \chapter*{\listfixmesname}%
  \@mkboth{\listfixmesname}{\listfixmesname}%
  \@starttoc{tofmes}%
  \if@restonecol\twocolumn\fi%
}%
\newcommand{\@addfixme}[1]{%
  \addcontentsline{tofmes}{fixmes}{%
    \protect\numberline{\thesection}{\ignorespaces #1}%
  }%
}%
%\newcommand{\fixme}[1]{\@addfixme[#1]}%

\newcommand{\fixme}[1]{% A fancier version
  {\footnote{\fontfamily{txr}\textbf{\textsc{FixMe:}}\ #1}}%
  {\@addfixme{#1}}}


\newcommand{\l@fixmes}{\@dottedtocline{1}{1.5em}{2.3em}}%
%% End fixme parade

\newcommand\listoffigures{%
  \if@twocolumn%
  \@restonecoltrue\onecolumn%
  \else%
  \@restonecolfalse%
  \fi%
  \chapter*{\listfigurename}%
  \@mkboth{\listfigurename}{\listfigurename}% LB: Get rid of uppercase
  \@starttoc{lof}%
  \if@restonecol\twocolumn\fi%
}%
\newcommand*\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}%

\newcommand\listoftables{%
  \if@twocolumn%
  \@restonecoltrue\onecolumn%
  \else%
  \@restonecolfalse%
  \fi%
  \chapter*{\listtablename}%
  \@mkboth{\listtablename}{\listtablename}% LB: Get rid of uppercase
  \@starttoc{lot}%
  \if@restonecol\twocolumn\fi%
}%
\let\l@table\l@figure%
\newdimen\bibindent%
\setlength\bibindent{1.5em}%

\newenvironment{thebibliography}[1]{
  \chapter*{\bibname}%
  \@mkboth{\bibname}{\bibname}% LB: got rid of \MakeUppercase
  \list{\@biblabel{\@arabic\c@enumiv}}%
  {\settowidth\labelwidth{\@biblabel{#1}}%
    \leftmargin\labelwidth%
    \advance\leftmargin\labelsep%
    \@openbib@code%
    \usecounter{enumiv}%
    \let\p@enumiv\@empty%
    \renewcommand\theenumiv{\@arabic\c@enumiv}%
  }%
  \sloppy%
  \clubpenalty4000%
  \@clubpenalty%
  \clubpenalty%
  \widowpenalty4000%
  \sfcode`\.\@m%
}%

{\def\@noitemerr%
  {\@latex@warning{Empty `thebibliography' environment}}%
  \endlist%
}%

\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}%
\let\@openbib@code\@empty%

{\if@restonecol\onecolumn\else\clearpage\fi}%

\newcommand\@idxitem{\par\hangindent 40\p@}%
\newcommand\subitem{\@idxitem \hspace*{20\p@}}%
\newcommand\subsubitem{\@idxitem \hspace*{30\p@}}%
\newcommand\indexspace{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}%
\renewcommand\footnoterule{%
  \kern-3\p@%
  \hrule\@width.4\columnwidth%
  \kern2.6\p@}%
\@addtoreset{footnote}{chapter}%
\newcommand\@makefntext[1]{%
    \parindent 1em%
    \noindent%
    \hb@xt@1.8em{\hss\@makefnmark}#1}%

\newcommand\contentsname{Contents}%{Table of Contents}
\newcommand\listfigurename{List of Figures}%
\newcommand\listtablename{List of Tables}%
\newcommand\bibname{Bibliography}%{References}
\newcommand\indexname{Index}%
\newcommand\figurename{Figure}%
\newcommand\tablename{Table}%
\newcommand\partname{Part}%
\newcommand\chaptername{Chapter}%
\newcommand\appendixname{Appendix}%
\newcommand\listfixmesname{List of FixMes} % LB: fixme name
\def\today{%
  \ifcase\month\or January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}%
\setlength\columnsep{10\p@}%
\setlength\columnseprule{0\p@}%
\pagestyle{headings}%
\pagenumbering{arabic}%
\if@twoside%
\else%
\raggedbottom%
\fi%
\if@twocolumn%
\twocolumn%
\sloppy%
\flushbottom%
\else%
\onecolumn%
\fi%

% LB: some code to make the cleardoublepage thing work right
\def\cleardoublepage{%
  \clearpage%
  \if@twoside%
  \ifodd\c@page\else%
  \hbox{}%
  \vspace*{\fill}%
  \begin{center}%
    % This page intentionally left blank.  Except for these two sentences.
  \end{center}%
  \vspace{\fill}%
  \thispagestyle{empty}%
  \newpage%
  \if@twocolumn\hbox{}%
  \newpage\fi\fi\fi%
}%
% End cleardoublepage

\endinput%
%%
%% End of file `thesis-lb.cls'.



