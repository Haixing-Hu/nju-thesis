%%
%% This is file `njuthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% njuthesis.dtx  (with options: `cls')
%% This is a generated file.
%% 
%% Copyright (C) 2013-2017, Haixing Hu.
%% Department of Computer Science and Technology, Nanjing University.
%% 
%% Home Page of the Project: http://haixing-hu.github.io/nju-thesis/
%% 
%% It may be distributed and/or modified under the conditions of the LaTeX Project
%% Public License, either version 1.2 of this license or (at your option) any
%% later version.  The latest version of this license is in
%% 
%%    http://www.latex-project.org/lppl.txt
%% 
%% and version 1.2 or later is part of all distributions of LaTeX version
%% 1999/12/01 or later.
%% 
%% To produce the documentation run the original source files ending with `.dtx'
%% through LaTeX.
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{njuthesis.cls}
 [2018/08/07 v1.2.2 Document Class for the Degree Papers of Nanjing University]
\newif\ifnjut@adobefonts\njut@adobefontstrue
\newif\ifnjut@winfonts\njut@winfontsfalse
\newif\ifnjut@linuxfonts\njut@linuxfontsfalse
\newif\ifnjut@macfonts\njut@macfontsfalse
\newif\ifnjut@backinfo\njut@backinfotrue
\newif\ifnjut@phd\njut@phdfalse
\newif\ifnjut@master\njut@masterfalse
\newif\ifnjut@bachelor\njut@bachelorfalse
\DeclareOption{adobefonts}{\njut@adobefontstrue
  \njut@winfontsfalse
  \njut@linuxfontsfalse
  \njut@macfontsfalse}
\DeclareOption{winfonts}{\njut@winfontstrue
  \njut@adobefontsfalse
  \njut@linuxfontsfalse
  \njut@macfontsfalse}
\DeclareOption{linuxfonts}{\njut@linuxfontstrue
  \njut@adobefontsfalse
  \njut@winfontsfalse
  \njut@macfontsfalse}
\DeclareOption{macfonts}{\njut@macfontstrue
  \njut@adobefontsfalse
  \njut@winfontsfalse
  \njut@linuxfontsfalse}
\DeclareOption{nobackinfo}{\njut@backinfofalse}
\DeclareOption{phd}{\njut@phdtrue
  \njut@masterfalse
  \njut@bachelorfalse}
\DeclareOption{master}{\njut@mastertrue
  \njut@phdfalse
  \njut@bachelorfalse}
\DeclareOption{bachelor}{\njut@bachelortrue
  \njut@phdfalse
  \njut@masterfalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass[12pt,a4paper,doubleside]{book}
\RequirePackage{ifxetex}
\RequireXeTeX
\RequirePackage{lastpage}
\RequirePackage{geometry}
\RequirePackage{titlesec}
\RequirePackage{graphicx}
\DeclareGraphicsExtensions{.pdf,.eps,.jpg,.png}
\RequirePackage{caption}
\RequirePackage{float}
\RequirePackage{subfig}
\RequirePackage{array}
\RequirePackage{longtable}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{enumitem}
\RequirePackage{xcolor}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{bm}
\RequirePackage{mathrsfs}
\RequirePackage{wasysym}
\RequirePackage{pifont}
\RequirePackage{txfonts}
\RequirePackage{setspace}
\RequirePackage{fancyhdr}
\RequirePackage{shortvrb}
\RequirePackage{xltxtra}
\RequirePackage[CJKnumber,CJKchecksingle]{xeCJK}
\RequirePackage{CJKnumb}
\defaultfontfeatures{Mapping=tex-text}
\punctstyle{plain}
\RequirePackage{xeCJKfntef}
\xeCJKsetup{ underline/format = \color{black} }
\RequirePackage[hyphens]{url}
\RequirePackage{hyperref}
\hypersetup{%
    unicode=false,
    hyperfootnotes=true,
    hyperindex=true,
    pageanchor=true,
    CJKbookmarks=true,
    bookmarksnumbered=true,
    bookmarksopen=true,
    bookmarksopenlevel=0,
    breaklinks=true,
    colorlinks=false,
    plainpages=false,
    pdfpagelabels,
    pdfborder=0 0 0%
}
\urlstyle{same}
\RequirePackage[sort&compress,numbers]{natbib}
\RequirePackage{hypernat}
\RequirePackage{tabularx}
\RequirePackage{makeidx}
\RequirePackage{glossaries}
\RequirePackage{ifthen}
\RequirePackage[perpage,symbol*]{footmisc}
\RequirePackage{etoolbox}
\input{njuthesis.cfg}
\ifnjut@adobefonts
  \newcommand*{\njut@zhfn@songti}{\njut@zhfn@songti@adobe}
  \newcommand*{\njut@zhfn@heiti}{\njut@zhfn@heiti@adobe}
  \newcommand*{\njut@zhfn@kaishu}{\njut@zhfn@kaishu@adobe}
  \newcommand*{\njut@zhfn@fangsong}{\njut@zhfn@fangsong@adobe}
  \newcommand*{\njut@enfn@main}{\njut@enfn@main@adobe}
  \newcommand*{\njut@enfn@sans}{\njut@enfn@sans@adobe}
  \newcommand*{\njut@enfn@mono}{\njut@enfn@mono@adobe}
\else
  \ifnjut@winfonts
      \newcommand*{\njut@zhfn@songti}{\njut@zhfn@songti@win}
      \newcommand*{\njut@zhfn@heiti}{\njut@zhfn@heiti@win}
      \newcommand*{\njut@zhfn@kaishu}{\njut@zhfn@kaishu@win}
      \newcommand*{\njut@zhfn@fangsong}{\njut@zhfn@fangsong@win}
      \newcommand*{\njut@enfn@main}{\njut@enfn@main@win}
      \newcommand*{\njut@enfn@sans}{\njut@enfn@sans@win}
      \newcommand*{\njut@enfn@mono}{\njut@enfn@mono@win}
  \else
    \ifnjut@linuxfonts
      \newcommand*{\njut@zhfn@songti}{\njut@zhfn@songti@linux}
      \newcommand*{\njut@zhfn@heiti}{\njut@zhfn@heiti@linux}
      \newcommand*{\njut@zhfn@kaishu}{\njut@zhfn@kaishu@linux}
      \newcommand*{\njut@zhfn@fangsong}{\njut@zhfn@fangsong@linux}
      \newcommand*{\njut@enfn@main}{\njut@enfn@main@linux}
      \newcommand*{\njut@enfn@sans}{\njut@enfn@sans@linux}
      \newcommand*{\njut@enfn@mono}{\njut@enfn@mono@linux}
    \else
       \ifnjut@macfonts
          \newcommand*{\njut@zhfn@songti}{\njut@zhfn@songti@mac}
          \newcommand*{\njut@zhfn@heiti}{\njut@zhfn@heiti@mac}
          \newcommand*{\njut@zhfn@kaishu}{\njut@zhfn@kaishu@mac}
          \newcommand*{\njut@zhfn@fangsong}{\njut@zhfn@fangsong@mac}
          \newcommand*{\njut@enfn@main}{\njut@enfn@main@mac}
          \newcommand*{\njut@enfn@sans}{\njut@enfn@sans@mac}
          \newcommand*{\njut@enfn@mono}{\njut@enfn@mono@mac}
       \else
         \ClassError{njuthesis}{No fonts was selected.}{}
       \fi
    \fi
  \fi
\fi
\setCJKfamilyfont{song}{\njut@zhfn@songti}
\setCJKfamilyfont{hei}{\njut@zhfn@heiti}
\setCJKfamilyfont{kai}{\njut@zhfn@kaishu}
\setCJKfamilyfont{fangsong}{\njut@zhfn@fangsong}
\setCJKmainfont[BoldFont={\njut@zhfn@heiti},%
                ItalicFont={\njut@zhfn@kaishu}]%
               {\njut@zhfn@songti}
\setCJKsansfont{\njut@zhfn@heiti}
\setCJKmonofont{\njut@zhfn@fangsong}
\setmainfont{\njut@enfn@main}
\setsansfont{\njut@enfn@sans}
\setmonofont{\njut@enfn@mono}
\newcommand*{\songti}{\CJKfamily{song}}
\newcommand*{\heiti}{\CJKfamily{hei}}
\newcommand*{\kaishu}{\CJKfamily{kai}}
\newcommand*{\fangsong}{\CJKfamily{fangsong}}
\newcommand*{\njut@fs@eight}{5.02} % 八号字 5bp
\newcommand*{\njut@fs@eightskip}{6.02}
\newcommand*{\njut@fs@seven}{5.52} % 七号字 5.5bp
\newcommand*{\njut@fs@sevenskip}{6.62}
\newcommand*{\njut@fs@ssix}{6.52} % 小六号 6.5bp
\newcommand*{\njut@fs@ssixskip}{7.83}
\newcommand*{\njut@fs@six}{7.53} % 六号字 7.5bp
\newcommand*{\njut@fs@sixskip}{9.03}
\newcommand*{\njut@fs@sfive}{9.03} % 小五号 9bp
\newcommand*{\njut@fs@sfiveskip}{10.84}
\newcommand*{\njut@fs@five}{10.54} % 五号 10bp
\newcommand*{\njut@fs@fiveskip}{12.65}
\newcommand*{\njut@fs@sfour}{12.05} % 小四号 12bp
\newcommand*{\njut@fs@sfourskip}{14.45}
\newcommand*{\njut@fs@four}{14.05} % 四号字 14bp
\newcommand*{\njut@fs@fourskip}{16.86}
\newcommand*{\njut@fs@sthree}{15.06} % 小三号 15bp
\newcommand*{\njut@fs@sthreeskip}{18.07}
\newcommand*{\njut@fs@three}{16.06} % 三号字 16bp
\newcommand*{\njut@fs@threeskip}{19.27}
\newcommand*{\njut@fs@stwo}{18.07} % 小二号 18bp
\newcommand*{\njut@fs@stwoskip}{21.68}
\newcommand*{\njut@fs@two}{22.08} % 二号字 22bp
\newcommand*{\njut@fs@twoskip}{26.50}
\newcommand*{\njut@fs@sone}{24.09} % 小一号 24bp
\newcommand*{\njut@fs@soneskip}{28.91}
\newcommand*{\njut@fs@one}{26.10} % 一号字 26bp
\newcommand*{\njut@fs@oneskip}{31.32}
\newcommand*{\njut@fs@szero}{36.14} % 小初号 36bp
\newcommand*{\njut@fs@szeroskip}{43.36}
\newcommand*{\njut@fs@zero}{42.16} % 初号字 42bp
\newcommand*{\njut@fs@zeroskip}{50.59}
\DeclareMathSizes{\njut@fs@eight}
                 {\njut@fs@eight}
                 {5}
                 {5}
\DeclareMathSizes{\njut@fs@seven}
                 {\njut@fs@seven}
                 {5}
                 {5}
\DeclareMathSizes{\njut@fs@ssix}
                 {\njut@fs@ssix}
                 {5}
                 {5}
\DeclareMathSizes{\njut@fs@six}
                 {\njut@fs@six}
                 {5}
                 {5}
\DeclareMathSizes{\njut@fs@sfive}
                 {\njut@fs@sfive}
                 {6}
                 {5}
\DeclareMathSizes{\njut@fs@five}
                 {\njut@fs@five}
                 {7}
                 {5}
\DeclareMathSizes{\njut@fs@sfour}
                 {\njut@fs@sfour}
                 {8}
                 {6}
\DeclareMathSizes{\njut@fs@four}
                 {\njut@fs@four}
                 {\njut@fs@five}
                 {\njut@fs@six}
\DeclareMathSizes{\njut@fs@sthree}
                 {\njut@fs@sthree}
                 {\njut@fs@sfour}
                 {\njut@fs@sfive}
\DeclareMathSizes{\njut@fs@three}
                 {\njut@fs@three}
                 {\njut@fs@four}
                 {\njut@fs@five}
\DeclareMathSizes{\njut@fs@stwo}
                 {\njut@fs@stwo}
                 {\njut@fs@sthree}
                 {\njut@fs@sfour}
\DeclareMathSizes{\njut@fs@two}
                 {\njut@fs@two}
                 {\njut@fs@three}
                 {\njut@fs@four}
\DeclareMathSizes{\njut@fs@sone}
                 {\njut@fs@sone}
                 {\njut@fs@stwo}
                 {\njut@fs@sthree}
\DeclareMathSizes{\njut@fs@one}
                 {\njut@fs@one}
                 {\njut@fs@two}
                 {\njut@fs@three}
\DeclareMathSizes{\njut@fs@szero}
                 {\njut@fs@szero}
                 {\njut@fs@sone}
                 {\njut@fs@stwo}
\DeclareMathSizes{\njut@fs@zero}
                 {\njut@fs@zero}
                 {\njut@fs@one}
                 {\njut@fs@two}
\def\njut@zihao{}
\DeclareRobustCommand*{\zihao}[1]{%
  \def\njut@zihao{#1}%
  \ifnum #11<0%
    \@tempcnta=-#1
    \ifcase\@tempcnta%
        \fontsize\njut@fs@szero\njut@fs@szeroskip%
    \or \fontsize\njut@fs@sone\njut@fs@soneskip%
    \or \fontsize\njut@fs@stwo\njut@fs@stwoskip%
    \or \fontsize\njut@fs@sthree\njut@fs@sthreeskip%
    \or \fontsize\njut@fs@sfour\njut@fs@sfourskip%
    \or \fontsize\njut@fs@sfive\njut@fs@sfiveskip%
    \or \fontsize\njut@fs@ssix\njut@fs@ssixskip%
    \else \ClassError{njuthesis}{%
            Undefined Chinese font size in command \protect\zihao}{%
            The old font size is used if you continue.}%
    \fi%
  \else%
    \@tempcnta=#1
    \ifcase\@tempcnta%
        \fontsize\njut@fs@zero\njut@fs@zeroskip%
    \or \fontsize\njut@fs@one\njut@fs@oneskip%
    \or \fontsize\njut@fs@two\njut@fs@twoskip%
    \or \fontsize\njut@fs@three\njut@fs@threeskip%
    \or \fontsize\njut@fs@four\njut@fs@fourskip%
    \or \fontsize\njut@fs@five\njut@fs@fiveskip%
    \or \fontsize\njut@fs@six\njut@fs@sixskip%
    \or \fontsize\njut@fs@seven\njut@fs@sevenskip%
    \or \fontsize\njut@fs@eight\njut@fs@eightskip%
    \else \ClassError{njuthesis}{%
            Undefined Chinese font size in command \protect\zihao}{%
            The old font size is used if you continue.}%
    \fi%
  \fi%
  \selectfont\ignorespaces}
\renewcommand{\tiny}{% 小六号 6.5bp
  \@setfontsize\tiny{\njut@fs@ssix}{\njut@fs@ssixskip}}
\renewcommand{\scriptsize}{% 六号字 7.5bp
  \@setfontsize\scriptsize{\njut@fs@six}{\njut@fs@sixskip}}
\renewcommand{\footnotesize}{% 小五号 9bp
  \@setfontsize\footnotesize{\njut@fs@sfive}{\njut@fs@sfiveskip}%
  \abovedisplayskip 6\p@ \@plus2\p@ \@minus4\p@
  \abovedisplayshortskip \z@ \@plus\p@
  \belowdisplayshortskip 3\p@ \@plus\p@ \@minus2\p@
  \def\@listi{\leftmargin\leftmargini
    \topsep 3\p@ \@plus\p@ \@minus\p@
    \parsep 2\p@ \@plus\p@ \@minus\p@
    \itemsep \parsep}%
  \belowdisplayskip \abovedisplayskip}
\renewcommand{\small}{% 五号 10bp
  \@setfontsize\small{\njut@fs@five}{\njut@fs@fiveskip}%
  \abovedisplayskip 8.5\p@ \@plus3\p@ \@minus4\p@
  \abovedisplayshortskip \z@ \@plus2\p@
  \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
  \def\@listi{\leftmargin\leftmargini
    \topsep 4\p@ \@plus2\p@ \@minus2\p@
    \parsep 2\p@ \@plus\p@ \@minus\p@
    \itemsep \parsep}%
  \belowdisplayskip \abovedisplayskip}
\renewcommand{\normalsize}{% 小四号 12bp
  \@setfontsize\normalsize{\njut@fs@sfour}{\njut@fs@sfourskip}%
  \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
  \abovedisplayshortskip \z@ \@plus3\p@
  \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
  \belowdisplayskip \abovedisplayskip
  \let\@listi\@listI}
\renewcommand{\large}{% 小三号 15bp
  \@setfontsize\large{\njut@fs@sthree}{\njut@fs@sthreeskip}}
\renewcommand{\Large}{% 小二号 18bp
  \@setfontsize\Large{\njut@fs@stwo}{\njut@fs@stwoskip}}
\renewcommand{\LARGE}{% 小一号 24bp
  \@setfontsize\LARGE{\njut@fs@sone}{\njut@fs@soneskip}}
\renewcommand{\huge}{% 一号 26bp
  \@setfontsize\huge{\njut@fs@one}{\njut@fs@oneskip}}
\renewcommand{\Huge}{% 小初号 36bp
  \@setfontsize\Huge{\njut@fs@szero}{\njut@fs@szeroskip}}
\newcommand*{\ziju}[1]{\renewcommand*{\CJKglue}{\hskip {#1}}}
\renewcommand{\textsc}[1]{{\usefont{OT1}{cmr}{m}{sc}{#1}}}
\newcommand{\dashnumber}[2]%
  {{#1}\kern.07em\rule[.5ex]{.4em}{.15ex}\kern.07em{#2}}
\renewcommand*{\thefigure}{\dashnumber{\thechapter}{\arabic{figure}}}
\renewcommand*{\thetable}{\dashnumber{\thechapter}{\arabic{table}}}
\renewcommand*{\theequation}{\dashnumber{\thechapter}{\arabic{equation}}}
\renewcommand*{\thesubfigure}{(\alph{subfigure})}
\renewcommand*{\thesubtable}{(\alph{subtable})}
\newtheoremstyle{plain}% name
                {1em}%      Space above, empty = `usual value'
                {1em}%      Space below
                {\normalfont}% Body font
                {}%         Indent amount
                {\normalfont\bfseries}% Thm head font
                {}%         Punctuation after thm head
                {1em}%      Space after thm head: \newline = linebreak
                {}%         Thm head spec
\newtheorem{definition}{\njut@cap@definition}[chapter]
\newtheorem{notation}[definition]{\njut@cap@notation}
\newtheorem{theorem}{\njut@cap@theorem}[chapter]
\newtheorem{lemma}[theorem]{\njut@cap@lemma}
\newtheorem{corollary}[theorem]{\njut@cap@corollary}
\newtheorem{proposition}[theorem]{\njut@cap@proposition}
\newtheorem{fact}[theorem]{\njut@cap@fact}
\newtheorem{assumption}[theorem]{\njut@cap@assumption}
\newtheorem{conjecture}[theorem]{\njut@cap@conjecture}
\newtheorem{hypothesis}{\njut@cap@hypothesis}[chapter]
\newtheorem{axiom}{\njut@cap@axiom}[chapter]
\newtheorem{postulate}{\njut@cap@postulate}[chapter]
\newtheorem{principle}{\njut@cap@principle}[chapter]
\newtheorem{problem}{\njut@cap@problem}[chapter]
\newtheorem{exercise}{\njut@cap@exercise}[chapter]
\newtheorem{example}{\njut@cap@example}[chapter]
\newtheorem{remark}{\njut@cap@remark}[chapter]

\renewenvironment{proof}[1][\njut@cap@proof]{\par
  \pushQED{\qed}%
  \normalfont \topsep6\p@\@plus6\p@\relax
  \trivlist
  \item[\hskip\labelsep\textbf{#1}\@addpunct{:}]\ignorespaces
}{\popQED\endtrivlist\@endpefalse}

\newenvironment{solution}[1][\njut@cap@solution]{\par
  \normalfont \topsep6\p@\@plus6\p@\relax
  \trivlist
  \item[\hskip\labelsep\textbf{#1}\@addpunct{:}]\ignorespaces
}{\endtrivlist\@endpefalse}

\newtheorem{algorithm}{\njut@cap@algorithm}[chapter]
\renewcommand*{\thedefinition}{\dashnumber{\thechapter}{\arabic{definition}}}
\renewcommand*{\thetheorem}{\dashnumber{\thechapter}{\arabic{theorem}}}
\renewcommand*{\theaxiom}{\dashnumber{\thechapter}{\arabic{axiom}}}
\renewcommand*{\theproblem}{\dashnumber{\thechapter}{\arabic{problem}}}
\renewcommand*{\theexercise}{\dashnumber{\thechapter}{\arabic{exercise}}}
\renewcommand*{\theexample}{\dashnumber{\thechapter}{\arabic{example}}}
\renewcommand*{\theremark}{\dashnumber{\thechapter}{\arabic{remark}}}
\renewcommand*{\textfraction}{0.05}
\renewcommand*{\topfraction}{0.9}
\renewcommand*{\bottomfraction}{0.8}
\renewcommand*{\floatpagefraction}{0.85}
\newcommand*{\abstractname}{\njut@cap@abstractname}
\renewcommand*{\contentsname}{\njut@cap@contentsname}
\renewcommand*{\listfigurename}{\njut@cap@listfigurename}
\renewcommand*{\listtablename}{\njut@cap@listtablename}
\newcommand*{\listsymbolname}{\njut@cap@listsymbolname}
\newcommand*{\listequationname}{\njut@cap@listequationname}
\renewcommand*{\glossaryname}{\njut@cap@glossaryname}
\renewcommand*{\indexname}{\njut@cap@indexname}
\newcommand*{\equationname}{\njut@cap@equationname}
\renewcommand*{\bibname}{\njut@cap@bibname}
\renewcommand*{\figurename}{\njut@cap@figurename}
\renewcommand*{\tablename}{\njut@cap@tablename}
\renewcommand*{\chaptername}{\njut@cap@chaptername}
\renewcommand*{\appendixname}{\njut@cap@appendixname}
\titleformat{\chapter}[hang]
            {\centering\zihao{1}\bfseries}
            {\chaptertitlename}{1em}{}
\titlespacing{\chapter}
             {0pt}
             {*4}
             {*3}
\titleformat{\section}[hang]
            {\zihao{-2}\bfseries}
            {\thesection}{1em}{}
\titlespacing{\section}
             {0pt}
             {*3.5}
             {*2.3}
\titleformat{\subsection}[hang]
            {\zihao{3}\bfseries}
            {\thesubsection}{1em}{}
\titlespacing{\subsection}
             {0pt}
             {*3}
             {*1.5}
\titleformat{\subsubsection}[hang]
            {\zihao{-3}\bfseries}
            {\thesubsubsection}{1em}{}
\titlespacing{\subsubsection}
             {0pt}
             {*2.5}
             {*1.5}
\titleformat{\paragraph}[hang]
            {\zihao{4}\bfseries}
            {}{0em}{}
\titlespacing{\paragraph}
             {0pt}
             {*2}
             {*1}
\titleformat{\subparagraph}[hang]
            {\zihao{-4}\bfseries}
            {}{0em}{}
\titlespacing{\subparagraph}
             {0pt}
             {*1.5}
             {*1}
\setcounter{secnumdepth}{4}
\renewcommand{\thechapter}{\arabic{chapter}}
\renewcommand{\thesection}{\thechapter\thinspace.\thinspace\arabic{section}}
\renewcommand{\thesubsection}{\thesection\thinspace.\thinspace\arabic{subsection}}
\renewcommand{\thesubsubsection}{\thesubsection\thinspace.\thinspace\arabic{subsubsection}}
\captionsetup{font=small}
\captionsetup[table]{position=above}
\captionsetup[figure]{position=below}
\floatstyle{plaintop}
\restylefloat{table}
\renewcommand*{\baselinestretch}{1.38}
\let\njut@oldtabular\tabular
\let\njut@endoldtabular\endtabular
\renewenvironment{tabular}%
{\bgroup%
\renewcommand{\arraystretch}{1.38}%
\njut@oldtabular}%
{\njut@endoldtabular\egroup}
\geometry{headheight=2.6cm,headsep=3mm,footskip=13mm}
\geometry{top=3.5cm,bottom=3.5cm,left=3.2cm,right=3.2cm}
\def\njut@CJK@charwidth{\hskip \f@size \p@}
\newdimen\njut@CJK@chardimen
\settowidth\njut@CJK@chardimen{\njut@CJK@charwidth\CJKglue}
\newcommand{\njut@CJK@setfontspace}{%
\settowidth\njut@CJK@chardimen{\njut@CJK@charwidth\CJKglue}%
\ifdim\parindent=0pt\relax\else\parindent2\njut@CJK@chardimen\fi%
}
\renewcommand*{\indent}{\njut@CJK@setfontspace\parindent2\njut@CJK@chardimen}
\AtBeginDocument{\indent}
\fancypagestyle{plain}{%
   \fancyhead{}                       % get rid of headers and footers
   \renewcommand{\headrulewidth}{0pt} % and the header line
   \renewcommand{\footrulewidth}{0pt} % and the footer line
}
\fancyfoot{}
\renewcommand{\footrulewidth}{0pt}
\fancyhead[LE,RO]{\thepage}
\renewcommand{\headrulewidth}{1pt}
\fancyhead[RE]{\leftmark}
\fancyhead[LO]{%
 \ifthenelse{\equal{\rightmark}{}}% if \rightmark is empty
            {\leftmark}%
            {\rightmark}%
}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{%
 \bfseries\if@mainmatter\chaptertitlename\hspace{1em}\fi{#1}%
}{}}
\renewcommand{\sectionmark}[1]{\markright{%
 \bfseries\if@mainmatter\thesection\hspace{1em}\fi{#1}%
}}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
  \hbox{}\thispagestyle{empty}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\setlist{%
  topsep=0.3em,             % 列表顶端的垂直空白
  partopsep=0pt,            % 列表环境前面紧接着一个空白行时其顶端的额外垂直空白
  itemsep=0ex plus 0.1ex,   % 列表项之间的额外垂直空白
  parsep=0pt,               % 列表项内的段落之间的垂直空白
  leftmargin=1.5em,         % 环境的左边界和列表之间的水平距离
  rightmargin=0em,          % 环境的右边界和列表之间的水平距离
  labelsep=0.5em,           % 包含标签的盒子与列表项的第一行文本之间的间隔
  labelwidth=2em,           % 包含标签的盒子的正常宽度；若实际宽度更宽，则使用实际宽度。
}
\setlist[itemize,1]{label=$\medbullet$}
\setlist[itemize,2]{label=$\blacksquare$}
\setlist[itemize,3]{label=$\Diamondblack$}
\renewenvironment{quote}%
                 {\list{}{\leftmargin=4em\rightmargin=4em}\item[]}%
                 {\endlist}
\renewenvironment{quotation}%
                 {\list{}{\leftmargin=4em\rightmargin=4em}\item[]}%
                 {\endlist}
\newcommand\nchapter[1]{%
  \if@mainmatter%
    \@mainmatterfalse%
    \chapter{#1}%
    \@mainmattertrue%
  \else
    \chapter{#1}%
  \fi
}
\def\@dottedtocline#1#2#3#4#5{%
  \ifnum #1>\c@tocdepth \else
    \vskip \z@ \@plus.2\p@
    {\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
     \parindent #2\relax\@afterindenttrue
     \interlinepenalty\@M
     \leavevmode
     \@tempdima #3\relax
     \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
     {#4}\nobreak
     \leaders\hbox{$\m@th\mkern 1.5mu\cdot\mkern 1.5mu$}\hfill
     \nobreak
     \hb@xt@\@pnumwidth{\hfil\normalfont \normalcolor #5}%
     \par}%
  \fi}
\renewcommand*{\l@part}[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \addvspace{2.25em \@plus\p@}%
    \setlength\@tempdima{3em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \large \bfseries #1
       \leaders\hbox{$\m@th\mkern 1.5mu\cdot\mkern 1.5mu$}
       \hfil \hb@xt@\@pnumwidth{\hss #2}}\par
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
    \endgroup
  \fi}
\renewcommand*{\l@chapter}[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak
      \leaders\hbox{$\m@th\mkern 1.5mu\cdot\mkern 1.5mu$}
      \hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\renewcommand*{\tableofcontents}{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \nchapter{\contentsname}%
    \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}%
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
}
\renewcommand*{\listoftables}{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \nchapter{\listtablename}%
    \@mkboth{\MakeUppercase\listtablename}{\MakeUppercase\listtablename}%
    \@starttoc{lot}%
    \if@restonecol\twocolumn\fi
}
\renewcommand*{\listoffigures}{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \nchapter{\listfigurename}%
    \@mkboth{\MakeUppercase\listfigurename}{\MakeUppercase\listfigurename}%
    \@starttoc{lof}%
    \if@restonecol\twocolumn\fi
}
\renewenvironment{thebibliography}[1]
     {\nchapter{\bibname}%
      \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\bibliographystyle{gbt7714-2005}
\setcitestyle{super,square}
\renewcommand\NAT@citesuper[3]{%
\ifNAT@swa%
  \if*#2*\else#2\NAT@spacechar\fi%
  \unskip\kern\p@\textsuperscript{\NAT@@open#1\NAT@@close#3}%
\else #1\fi\endgroup%
}
\AtBeginDocument{%
\let\oldref\ref%
\renewcommand*{\ref}[1]{\thinspace\oldref{#1}}%
\renewcommand*{\eqref}[1]{(\oldref{#1})}
}
\DefineFNsymbols*{circlednumber}[text]{%
   {\ding{192}} %
   {\ding{193}} %
   {\ding{194}} %
   {\ding{195}} %
   {\ding{196}} %
   {\ding{197}} %
   {\ding{198}} %
   {\ding{199}} %
   {\ding{200}} %
   {\ding{201}} %
}%
\setfnsymbol{circlednumber}
\newcommand*{\classification}[1]{%
  \renewcommand*{\njut@value@nlc@classification}{#1}}
\newcommand*{\securitylevel}[1]{%
  \renewcommand*{\njut@value@nlc@securitylevel}{#1}}
\newcommand*{\openlevel}{\njut@cap@nlc@openlevel}
\newcommand*{\controllevel}{\njut@cap@nlc@controllevel}
\newcommand*{\confidentiallevel}{\njut@cap@nlc@confidentiallevel}
\newcommand*{\clasifiedlevel}{\njut@cap@nlc@clasifiedlevel}
\newcommand*{\mostconfidentiallevel}{\njut@cap@nlc@mostconfidentiallevel}
\newcommand*{\udc}[1]{%
  \renewcommand*{\njut@value@nlc@udc}{#1}}
\newcommand*{\nlctitlea}[1]{%
  \renewcommand{\njut@value@nlc@titlea}{#1}}
\newcommand*{\nlctitleb}[1]{%
  \renewcommand{\njut@value@nlc@titleb}{#1}}
\newcommand*{\nlctitlec}[1]{%
  \renewcommand{\njut@value@nlc@titlec}{#1}}
\newcommand*{\supervisorinfo}[1]{%
  \renewcommand{\njut@value@nlc@supervisorinfo}{#1}}
\newcommand*{\chairman}[1]{%
  \renewcommand{\njut@value@nlc@chairman}{#1}}
\newcommand*{\reviewera}[1]{%
  \renewcommand{\njut@value@nlc@reviewera}{#1}}
\newcommand*{\reviewerb}[1]{%
  \renewcommand{\njut@value@nlc@reviewerb}{#1}}
\newcommand*{\reviewerc}[1]{%
  \renewcommand{\njut@value@nlc@reviewerc}{#1}}
\newcommand*{\reviewerd}[1]{%
  \renewcommand{\njut@value@nlc@reviewerd}{#1}}
\newcommand*{\nlcdate}[1]{%
  \renewcommand{\njut@value@nlc@date}{#1}}
\renewcommand*{\title}[1]{%
  \renewcommand{\njut@value@title}{#1}}
\newcommand*{\titlea}[1]{%
  \renewcommand{\njut@value@titlea}{#1}}
\newcommand*{\titleb}[1]{%
  \renewcommand{\njut@value@titleb}{#1}}
\renewcommand*{\author}[1]{%
  \renewcommand{\njut@value@author}{#1}}
\newcommand*{\telphone}[1]{%
  \renewcommand{\njut@value@telphone}{#1}}
\newcommand*{\email}[1]{%
  \renewcommand{\njut@value@email}{#1}}
\newcommand*{\studentnum}[1]{%
  \renewcommand{\njut@value@studentnum}{#1}}
\newcommand*{\grade}[1]{%
  \renewcommand{\njut@value@grade}{#1}}
\newcommand*{\supervisor}[1]{%
  \renewcommand{\njut@value@supervisor}{#1}}
\newcommand*{\supervisortelphone}[1]{%
  \renewcommand{\njut@value@supervisortelphone}{#1}}
\newcommand*{\major}[1]{%
  \renewcommand{\njut@value@major}{#1}}
\newcommand*{\researchfield}[1]{%
  \renewcommand{\njut@value@researchfield}{#1}}
\newcommand*{\department}[1]{%
  \renewcommand{\njut@value@department}{#1}}
\newcommand*{\institute}[1]{%
  \renewcommand{\njut@value@institute}{#1}}
\newcommand*{\submitdate}[1]{%
  \renewcommand{\njut@value@submitdate}{#1}}
\newcommand*{\defenddate}[1]{%
  \renewcommand{\njut@value@defenddate}{#1}}
\renewcommand*{\date}[1]{%
  \renewcommand{\njut@value@date}{#1}}
\newcommand*{\englishtitle}[1]{%
  \renewcommand{\njut@value@en@title}{#1}}
\newcommand*{\englishauthor}[1]{%
  \renewcommand{\njut@value@en@author}{#1}}
\newcommand{\englishsupervisor}[1]{%
  \renewcommand{\njut@value@en@supervisor}{#1}}
\newcommand{\englishmajor}[1]{%
  \renewcommand{\njut@value@en@major}{#1}}
\newcommand{\englishdepartment}[1]{%
  \renewcommand{\njut@value@en@department}{#1}}
\newcommand{\englishinstitute}[1]{%
  \renewcommand{\njut@value@en@institute}{#1}}
\newcommand*{\englishdate}[1]{%
  \renewcommand{\njut@value@en@date}{#1}}
\newcommand{\njut@underline}[2][\textwidth]%
           {\CJKunderline{\makebox[#1]{#2}}}
\def\njutunderline{\@ifnextchar[\njut@underline\CJKunderline}
\newcommand*{\makenlctitle}{%
  \thispagestyle{empty}
  \pdfbookmark[0]{\njut@cap@nlc}{nlc}
  {\songti\zihao{-4}
    \makebox[40pt][l]{\njut@cap@nlc@classification}
    \njutunderline[150pt]{\njut@value@nlc@classification}
    \hfill
    \makebox[40pt][r]{\njut@cap@nlc@securitylevel}
    \njutunderline[150pt]{\njut@value@nlc@securitylevel}
    \vskip 10pt
    \makebox[40pt][l]{\njut@cap@nlc@udc}
    \njutunderline[150pt]{\njut@value@nlc@udc}
  }
  \vskip\stretch{2}
  \begin{center}
    \def\ULthickness{1pt}
    {\kaishu\zihao{-0} \njut@cap@nlc@title}
    {\kaishu\zihao{1}
    \vskip \stretch{1}
    \njutunderline[12em]{\njut@value@nlc@titlea}\\
    \njutunderline[12em]{\njut@value@nlc@titleb}\\
    \njutunderline[12em]{\njut@value@nlc@titlec}\\
    }
    \vskip \stretch{1}
    {\kaishu\zihao{4}\njut@cap@nlc@quotetitle}
    \vskip \stretch{1}
    {\kaishu\zihao{1}\njutunderline{\njut@value@author}}
    \vskip \stretch{1}
    {\kaishu\zihao{4}\njut@cap@nlc@author}
  \end{center}
  \vskip\stretch{1}
  {\kaishu\zihao{4}
    \noindent\njut@cap@nlc@supervisor%
    \njutunderline[94pt]{\njut@value@supervisor}\par
    \noindent\njutunderline[\textwidth]{%
      \njut@value@nlc@supervisorinfo}\par
    \noindent\njut@cap@nlc@degree%
    \njutunderline[8em]{\njut@value@degree}%
    \noindent\njut@cap@nlc@major%
    \njutunderline[164pt]{\njut@value@major}\par
    \noindent\njut@cap@nlc@submitdate%
    \njutunderline[8em]{\njut@value@submitdate}%
    \njut@cap@nlc@defenddate%
    \njutunderline[134pt]{\njut@value@defenddate}\par
    \noindent\njut@cap@nlc@institute\njutunderline[290pt]{}\par
    \noindent\hfill\njut@cap@nlc@chairman%
    \njutunderline[9em]{\njut@value@nlc@chairman}\par
    \noindent\hfill\njut@cap@nlc@reviwer%
    \njutunderline[9em]{\njut@value@nlc@reviewera}\par
    \noindent\hfill\njutunderline[9em]{\njut@value@nlc@reviewerb}\par
    \noindent\hfill\njutunderline[9em]{\njut@value@nlc@reviewerc}\par
    \noindent\hfill\njutunderline[9em]{\njut@value@nlc@reviewerd}\par
  }
  \cleardoublepage
}
\newcommand*{\njut@covertable@onelinetitle}{
  \begin{tabular}{p{7.3em}c}
      \makebox[7em][s]{\njut@cap@cover@title}
      & \njutunderline[310pt]{\njut@value@title}\\
      \makebox[7em][s]{\njut@cap@cover@author}
      & \njutunderline[310pt]{\njut@value@author}\\
      \makebox[7em][s]{\njut@cap@cover@major}
      & \njutunderline[310pt]{\njut@value@major}\\
      \makebox[7em][s]{\njut@cap@cover@researchfield}
      & \njutunderline[310pt]{\njut@value@researchfield}\\
      \makebox[7em][s]{\njut@cap@cover@supervisor}
      & \njutunderline[310pt]{\njut@value@supervisor}\\
  \end{tabular}
}
\newcommand*{\njut@covertable@twolinetitle}{
  \begin{tabular}{p{7.3em}c}
      \makebox[7em][s]{\njut@cap@cover@title}
      & \njutunderline[310pt]{\njut@value@titlea}\\
      \makebox[7em][s]{}
      & \njutunderline[310pt]{\njut@value@titleb}\\
      \makebox[7em][s]{\njut@cap@cover@author}
      & \njutunderline[310pt]{\njut@value@author}\\
      \makebox[7em][s]{\njut@cap@cover@major}
      & \njutunderline[310pt]{\njut@value@major}\\
      \makebox[7em][s]{\njut@cap@cover@researchfield}
      & \njutunderline[310pt]{\njut@value@researchfield}\\
      \makebox[7em][s]{\njut@cap@cover@supervisor}
      & \njutunderline[310pt]{\njut@value@supervisor}\\
  \end{tabular}
}
\renewcommand*{\maketitle}{%
  \thispagestyle{empty}
  \pdfbookmark[0]{\njut@cap@cover}{cover}
  \begin{center}
    \vskip 10mm
    \includegraphics[width=1.96cm]{\njut@cap@institute@logo} \\
    \includegraphics[height=2cm]{\njut@cap@institute@name} \\
    \vskip 8mm
    {\bf\kaishu\zihao{1}\makebox[10em][s]{\njut@cap@cover@thesis}}\\
    \vskip 5mm
    {\bf\kaishu\zihao{1}（\makebox[7em][s]{\njut@cap@cover@apply}）}\\
    \vskip\stretch{1}
    {\bgroup
    \bf\kaishu\zihao{3}
    \def\tabcolsep{1pt}
    \def\arraystretch{1.5}
    \ifdefempty{\njut@cap@cover@title}{\njut@covertable@onelinetitle}{\njut@covertable@twolinetitle}
    \egroup}\\
    \vskip \stretch{1}
    {\bf\kaishu\zihao{4}\njut@value@date}
  \end{center}
  \ifnjut@backinfo
    \clearpage
    \thispagestyle{empty}
    \vspace*{\stretch{1}}
    {\bf\kaishu\zihao{-3}
    \noindent
    \begin{tabular}{p{6.2em}l}
    \makebox[6em][s]{\njut@cap@coverback@studentnum}： &\njut@value@studentnum\\
    \makebox[6em][s]{\njut@cap@coverback@defenddate}： &\njut@value@defenddate\\
    \makebox[6em][s]{\njut@cap@coverback@supervisor}： &\njut@cap@coverback@sign\\
    \end{tabular}}
    \clearpage
  \else
    \cleardoublepage
  \fi
}
\newcommand*{\makeenglishtitle}{%
  \thispagestyle{empty}
  \begin{center}
    \vspace*{20pt}
    \bf\sffamily\zihao{2}\njut@value@en@title
    \vskip \stretch{1}
    \normalfont\rmfamily\zihao{4}\njut@cap@cover@en@by
    \vskip 3pt
    \bf\sffamily\zihao{4}\njut@value@en@author
    \vskip\stretch{1}
    \normalfont\rmfamily\zihao{4}\njut@cap@cover@en@supervisor
    \vskip 3pt
    \normalfont\sffamily\zihao{4}\njut@value@en@supervisor
    \vskip\stretch{1}
    \normalsize\rmfamily\njut@cap@cover@en@statement
    \vskip\stretch{2}
    \includegraphics[width=2.5cm]{\njut@cap@institute@logo} \\
    \vskip 3mm
    \normalfont\njut@value@en@department\\
    \njut@value@en@institute
    \vskip 30pt
    \normalfont\normalsize\njut@value@en@date
  \end{center}
  \normalfont
  \cleardoublepage
}
\newcommand*{\abstracttitlea}[1]{%
  \renewcommand{\njut@value@abstract@titlea}{#1}%
}
\newcommand*{\abstracttitleb}[1]{%
  \renewcommand{\njut@value@abstract@titleb}{#1}%
}
\newenvironment{abstract}{%
  \thispagestyle{empty}
  \pdfbookmark[0]{\njut@cap@abstract}{abstract}
  \begin{center}
    {\bf\kaishu\zihao{-2}%
     \njutunderline{\njut@cap@abstract@chaptername}}
  \end{center}
  \vspace{3mm}
  {\kaishu\zihao{4}%
  \noindent\njut@cap@abstract@title{：}%
  \njutunderline[318pt]{\njut@value@abstract@titlea}\\
  \noindent\njutunderline[\textwidth]{\njut@value@abstract@titleb}\\
  \noindent\njutunderline[178pt]{\njut@value@major}%
  \njut@cap@abstract@major%
  \njutunderline[50pt]{\njut@value@grade}%
  \njut@cap@abstract@author{：}%
  \njutunderline[61pt]{\njut@value@author}\\
  \noindent\njut@cap@abstract@supervisor{：}%
  \njutunderline[248pt]{\njut@value@supervisor}\\
  }
  \vspace{5mm}
  \begin{center}
    {\heiti\zihao{-3}\njut@cap@abstract@abstractname}
  \end{center}%
  \normalsize\par%
}{%
  \cleardoublepage
}
\newcommand{\keywords}[1]{%
  \renewcommand*{\njut@value@abstract@keywords}{#1}%
  \par\vspace{2ex}\noindent%
  {\bf\njut@cap@abstract@keywordsname{：}}~{#1}%
}
\newcommand*{\englishabstracttitlea}[1]{%
  \renewcommand{\njut@value@abstract@en@titlea}{#1}%
}
\newcommand*{\englishabstracttitleb}[1]{%
  \renewcommand{\njut@value@abstract@en@titleb}{#1}%
}
\newenvironment{englishabstract}{%
  \thispagestyle{empty}
  \pdfbookmark[0]{\njut@cap@abstract@en}{englishabstract}
  \begin{center}
    {\bf\kaishu\zihao{-2}%
     \njutunderline{\njut@cap@abstract@en@chaptername}}
  \end{center}
  {\zihao{4}%
   \njut@cap@abstract@en@title{:}~%
   \njutunderline[360pt]{\njut@value@abstract@en@titlea}\\
   \njutunderline[\textwidth]{\njut@value@abstract@en@titleb}\\
   \njut@cap@abstract@en@major{:}~%
   \njutunderline[298pt]{\njut@value@en@major}\\
   \njut@cap@abstract@en@author{:}~%
   \njutunderline[299pt]{\njut@value@en@author}\\
   \njut@cap@abstract@en@supervisor{:}~%
   \njutunderline[348pt]{\njut@value@en@supervisor}\\
  }
  \vspace{5mm}
  \begin{center}
    {\bf\zihao{-3}\njut@cap@abstract@en@abstractname}
  \end{center}%
  \normalsize\par%
}{%
  \cleardoublepage
}
\newcommand{\englishkeywords}[1]{%
  \renewcommand*{\njut@value@abstract@en@keywords}{#1}%
  \par\vspace{2ex}\noindent%
  {\bf\njut@cap@abstract@en@keywordsname{:}}~~{#1}%
}
\newenvironment{preface}{%
  \nchapter{\njut@cap@preface}
}{}
\newenvironment{acknowledgement}{%
  \nchapter{\njut@cap@acknowledgementname}
}{}
\newenvironment{resume}{%
  \nchapter{\njut@cap@resume@chaptername}
}{}
\newenvironment{authorinfo}{%
  \paragraph*{\njut@cap@resume@authorinfo}
}{}
\newenvironment{education}{%
  \paragraph*{\njut@cap@resume@education}
  \begin{description}[labelindent=0em, leftmargin=8em, style=sameline]
}{%
  \end{description}
}
\newenvironment{publications}{%
  \paragraph*{\njut@cap@resume@publications}
  \begin{enumerate}[label=\arabic*., labelindent=0em, leftmargin=*]
}{%
  \end{enumerate}
}
\newenvironment{projects}{%
  \paragraph*{\njut@cap@resume@projects}
  \begin{enumerate}[label=\arabic*., labelindent=0em, leftmargin=*]
}{%
  \end{enumerate}
}
\newcommand*{\njut@cap@datefield}{%
\njutunderline[1cm]{}{\njut@cap@year}%
\njutunderline[1cm]{}{\njut@cap@month}%
\njutunderline[1cm]{}{\njut@cap@day}
}
\newcommand*{\njut@license@makedeclaration}{%
\par\njut@cap@license@declaration
\vspace{5mm}
\begin{flushright}
  \njut@cap@license@sign\njutunderline[6cm]{}\\
  \njut@cap@datefield\\
\end{flushright}%
}
\newcommand*{\njut@license@maketable}{%
\noindent\zihao{5}%
\begin{tabular*}{\textwidth}
    {|C{2.2cm}|C{2cm}|C{1.5cm}|C{2.1cm}|C{1.42cm}C{1.5cm}|C{1.25cm}|}
  \hline
  \cell{2.2cm}{1cm}{\njut@cap@license@title}
  & \multicolumn{6}{c|}{\njut@value@title} \\
  \hline
  \cell{2.2cm}{1cm}{\njut@cap@license@studentnum}
  & {\njut@value@studentnum}
  & {\njut@cap@license@department}
  & \multicolumn{2}{c|}{%
    \cell{3.52cm}{1cm}{\njut@value@department}%
  }
  & {\njut@cap@license@grade}
  & {\njut@value@grade} \\
  \hline
  \cell{2.2cm}{1.5cm}{\njut@cap@license@category}
  & \multicolumn{3}{c}{
    \begin{tabular*}{5.6cm}{p{2.8cm}p{2.8cm}}
       \ifnjut@master%
           {{\zihao{-4}$\CheckedBox$}}%
       \else%
           {{\zihao{4}$\Square$}}%
       \fi%
       \njut@cap@license@categorymaster
      & {\zihao{4}$\Square$}%
       \njut@cap@license@categorymasterspec \\
       \ifnjut@phd%
           {{\zihao{-4}$\CheckedBox$}}%
       \else%
           {{\zihao{4}$\Square$}}%
       \fi%
       \njut@cap@license@categoryphd
      & {\zihao{4}$\Square$}%
       \njut@cap@license@categoryphdspec \\
    \end{tabular*}}
  & \multicolumn{3}{c|}{%
    \raisebox{-1em}{\njut@cap@license@categoryhint}}\\
  \hline
  \cell{2.2cm}{1cm}{\njut@cap@license@telphone}
  & \multicolumn{2}{c|}{{\njut@value@telphone}}
  & {\njut@cap@license@email}
  & \multicolumn{3}{c|}{{\njut@value@email}}  \\
  \hline
  \cell{2.2cm}{1cm}{\njut@cap@license@supervisorname}
  & \multicolumn{2}{c|}{{\njut@value@supervisor}}
  & {\njut@cap@license@supervisortelphone}
  & \multicolumn{3}{c|}{{\njut@value@supervisortelphone}} \\
  \hline
\end{tabular*}
}
\newcommand*{\makelicense}{%
  \thispagestyle{empty}
  \nchapter{\njut@cap@license@chaptername}
  \njut@license@makedeclaration
  \par\vspace{1em}
  \njut@license@maketable
  \par\vspace{1em}
  \noindent\njut@cap@license@securitylevel\par
  \noindent\ifthenelse{\equal{\njut@value@nlc@securitylevel}
                             {\njut@cap@nlc@openlevel}}
                      {{\zihao{-4}$\CheckedBox$}}
                      {{\zihao{4}$\Square$}}%
  {\njut@cap@license@public}\par
  \noindent\ifthenelse{\equal{\njut@value@nlc@securitylevel}
                             {\njut@cap@nlc@openlevel}}
                      {{\zihao{4}$\Square$}}
                      {{\zihao{-4}$\CheckedBox$}}%
  {\njut@cap@license@secret}%
  \njut@cap@datefield\hspace{0.5em}%
  \njut@cap@to\hspace{0.5em}%
  \njut@cap@datefield\par
  \vspace{1em}
  \noindent\njut@cap@license@remark%
  \normalfont
  \cleardoublepage
}
\newcommand{\njuthesis}{\texttt{NJU-Thesis}}
\newcommand{\zhdash}{\kern0.3ex\rule[0.8ex]{2em}{0.1ex}\kern0.3ex}
\newcommand{\cell}[3]{\parbox[c][#2][c]{#1}{\makebox[#1]{#3}}}
\newcolumntype{C}[1]{>{\centering\let\newline\\%
    \arraybackslash\hspace{0pt}}p{#1}}
\newlist{arabicenum}{enumerate}{3}
\setlist[arabicenum,1]{label=\textnormal%
  {\textnormal{(\arabic*)}}}
\setlist[arabicenum,2]{label=\textnormal%
  {\textnormal{(\arabic{arabicenumi}.\arabic*)}}}
\setlist[arabicenum,3]{label=\textnormal%
  {\textnormal{(\arabic{arabicenumi}.\arabic{arabicenumii}.\arabic*)}}}
\newlist{romanenum}{enumerate}{2}
\setlist[romanenum,1]{label={\textnormal{\roman*.}}}
\setlist[romanenum,2]{label={\textnormal{\alph*\,)}}}
\newlist{alphaenum}{enumerate}{2}
\setlist[alphaenum,1]{label={\textnormal{\alph*\,)}}}
\setlist[alphaenum,2]{label={\textnormal{\alph{alphaenumi}.\arabic*\,)}}}
\newlist{caseenum}{enumerate}{2}
\setlist[caseenum,1]{label={\textnormal{\njut@cap@case\arabic*.}}}
\setlist[caseenum,2]{label={\textnormal{\njut@cap@subcase\arabic{caseenumi}.\arabic*.}}}
\setlist[caseenum]{leftmargin=*}
\newlist{stepenum}{enumerate}{2}
\setlist[stepenum,1]{label={\textnormal{\njut@cap@step\arabic*.}}}
\setlist[stepenum,2]{label={\textnormal{\njut@cap@substep\arabic{stepenumi}.\arabic*.}}}
\setlist[stepenum]{leftmargin=*}
\newcommand*{\njut@setpdfinfo}{\hypersetup{%
        pdftitle={\njut@value@title},
        pdfauthor={\njut@value@author},
        pdfsubject={\njut@cap@cover@apply},
        pdfkeywords={\njut@value@abstract@keywords},
        pdfcreator={\njut@value@author},
        pdfproducer={XeLaTeX with the NJU-Thesis document class}}
}
\AtBeginDocument{\njut@setpdfinfo}
\endinput
%%
%% End of file `njuthesis.cls'.
