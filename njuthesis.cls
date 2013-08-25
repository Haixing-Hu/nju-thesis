%%
%% This is file `njuthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% njuthesis.dtx  (with options: `cls')
%% This is a generated file.
%% 
%% Copyright (C) 2013, Haixing Hu.
%% Department of Computer Science and Technology, Nanjing University.
%% 
%% Home Page of the Project: https://github.com/Haixing-Hu/nju-thesis
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
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{njuthesis}
[2013/08/24 1.0.0 Documents Class for Degree Papers of Nanjing University.]
\newif\ifnjut@oneside \njut@onesidetrue
\newif\ifnjut@twoside \njut@twosidefalse
\newif\ifnjut@adobefonts \njut@adobefontstrue
\newif\ifnjut@winfonts \njut@winfontsfalse
\newif\ifnjut@linuxfonts \njut@linuxfontsfalse
\newif\ifnjut@macfonts \njut@macfontsfalse
\newif\ifnjut@backinfo \njut@backinfotrue
\newif\ifnjut@phd \njut@phdfalse
\newif\ifnjut@master \njut@masterfalse
\newif\ifnjut@bachelor \njut@bachelorfalse
\newif\ifnjut@showcomments \njut@showcommentsfalse
\DeclareOption{oneside}{\njut@onesidetrue
  \njut@twosidefalse}
\DeclareOption{twoside}{\njut@twosidetrue
  \njut@onesidefalse}
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
  \njut@masterfalse}
\DeclareOption{master}{\njut@mastertrue
  \njut@phdfalse}
\DeclareOption{showcomments}{\njut@showcommentstrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[12pt,a4paper]{book}
\RequirePackage{ifxetex}
\RequireXeTeX
\RequirePackage{lastpage}
\RequirePackage{geometry}
\RequirePackage{titlesec}
\RequirePackage{graphicx}
\DeclareGraphicsExtensions{.pdf,.eps,.jpg,.png}
\RequirePackage{subfig}
\RequirePackage{caption}
\RequirePackage{float}
\RequirePackage{array}
\RequirePackage{longtable}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{enumitem}
\RequirePackage{xcolor}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{bm}
\RequirePackage{mathrsfs}
\RequirePackage{txfonts}
\RequirePackage[amsmath,thmmarks,hyperref]{ntheorem}
\RequirePackage{makeidx}
\RequirePackage{setspace}
\RequirePackage[perpage,symbol*,stable]{footmisc}
\RequirePackage{fancyhdr}
\RequirePackage{shortvrb}
\RequirePackage{xltxtra}
\RequirePackage[CJKnumber,CJKchecksingle]{xeCJK}
\defaultfontfeatures{Mapping=tex-text}
\punctstyle{plain}
\RequirePackage{CJKfntef}
\renewcommand*{\CJKunderlinecolor}{\color{black}}
\RequirePackage{indentfirst}
\RequirePackage{hyperref}
\hypersetup{%
    CJKbookmarks=true,
    bookmarksnumbered=true,
    bookmarksopen=true,
    bookmarksopenlevel=0,
    breaklinks=true,
    colorlinks=false,
    plainpages=false,
    pdfpagelabels,
    pdfborder=0 0 0}
\urlstyle{same}
\RequirePackage[sort&compress,numbers]{natbib}
\RequirePackage{hypernat}
\RequirePackage{tabularx}
\ifnjut@showcomments
    \RequirePackage{etex}
    \RequirePackage[textwidth=2.5cm,shadow,textsize=footnotesize]{todonotes}
\fi
\input{njuthesis.cfg}
\ifnjut@adobefonts
  \newcommand*{\njut@zhfn@songti}{\njut@zhfn@songti@adobe}
  \newcommand*{\njut@zhfn@heiti}{\njut@zhfn@heiti@adobe}
  \newcommand*{\njut@zhfn@kaishu}{\njut@zhfn@kaishu@adobe}
  \newcommand*{\njut@zhfn@fangsong}{\njut@zhfn@fangsong@adobe}
\else
  \ifnjut@winfonts
     \newcommand*{\njut@zhfn@songti}{\njut@zhfn@songti@win}
     \newcommand*{\njut@zhfn@heiti}{\njut@zhfn@heiti@win}
     \newcommand*{\njut@zhfn@kaishu}{\njut@zhfn@kaishu@win}
     \newcommand*{\njut@zhfn@fangsong}{\njut@zhfn@fangsong@win}
  \else
    \ifnjut@linuxfonts
       \newcommand*{\njut@zhfn@songti}{\njut@zhfn@songti@linux}
       \newcommand*{\njut@zhfn@heiti}{\njut@zhfn@heiti@linux}
       \newcommand*{\njut@zhfn@kaishu}{\njut@zhfn@kaishu@linux}
       \newcommand*{\njut@zhfn@fangsong}{\njut@zhfn@fangsong@linux}
    \else
       \ifnjut@macfonts
          \newcommand*{\njut@zhfn@songti}{\njut@zhfn@songti@mac}
          \newcommand*{\njut@zhfn@heiti}{\njut@zhfn@heiti@mac}
          \newcommand*{\njut@zhfn@kaishu}{\njut@zhfn@kaishu@mac}
          \newcommand*{\njut@zhfn@fangsong}{\njut@zhfn@fangsong@mac}
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
                ItalicFont={\njut@zhfn@kaishu}]{\njut@zhfn@songti}
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
\newcommand*{\ziju}[1]{\renewcommand{\CJKglue}{\hskip {#1}}}
\renewcommand*{\theequation}{\arabic{section}--\arabic{equation}}
\renewcommand*{\thefigure}{\arabic{section}--\arabic{figure}}
\renewcommand*{\thetable}{\arabic{section}--\arabic{table}}
\renewcommand*{\thesubfigure}{(\alph{subfigure})}
\renewcommand*{\thesubtable}{(\alph{subtable})}
\theoremstyle{plain}
\theoremsymbol{}
\theoremseparator{：}
\newtheorem{assumption}{\njut@cap@assumption}[chapter]
\newtheorem{definition}{\njut@cap@definition}[chapter]
\newtheorem{proposition}{\njut@cap@proposition}[chapter]
\newtheorem{lemma}{\njut@cap@lemma}[chapter]
\newtheorem{theorem}{\njut@cap@theorem}[chapter]
\newtheorem{axiom}{\njut@cap@axiom}[chapter]
\newtheorem{corollary}{\njut@cap@corollary}[chapter]
\newtheorem{exercise}{\njut@cap@exercise}[chapter]
\newtheorem{example}{\njut@cap@example}[chapter]
\newtheorem{remark}{\njut@cap@remark}[chapter]
\newtheorem{problem}{\njut@cap@problem}[chapter]
\newtheorem{conjecture}{\njut@cap@conjecture}[chapter]
\newenvironment{proof}{\noindent\textbf{{\njut@cap@proof}：}}
                      {\hfill\ensuremath{\square}\vspace{1em}}
\newenvironment{solution}{\noindent\textbf{{\njut@cap@solution}：}}
                         {\vspace{1em}}
\newtheorem{algorithm}{\njut@cap@algorithm}[chapter]
\renewcommand*{\textfraction}{0.05}
\renewcommand*{\topfraction}{0.9}
\renewcommand*{\bottomfraction}{0.8}
\renewcommand*{\floatpagefraction}{0.85}
\newcommand*{\abstractname}{\njut@cap@abstractname}
\renewcommand*{\contentsname}{\njut@cap@contentsname}
\renewcommand*{\listfigurename}{\njut@cap@listfigurename}
\renewcommand*{\listtablename}{\njut@cap@listtablename}
\newcommand*{\listequationname}{\njut@cap@listequationname}
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
\titleformat{\section}[hang]
            {\zihao{-2}\bfseries}
            {\thesection}{1em}{}
\titleformat{\subsection}[hang]
            {\zihao{3}\bfseries}
            {\thesubsection}{1em}{}
\titleformat{\subsubsection}[hang]
            {\zihao{-3}\bfseries}
            {\thesubsubsection}{1em}{}
\titleformat{\paragraph}[hang]
            {\zihao{4}\bfseries}
            {\theparagraph}{1em}{}
\titleformat{\subparagraph}[hang]
            {\zihao{-4}\bfseries}
            {\thesubparagraph}{1em}{}

%% \renewcommand{\section}{%
%%   \@startsection{section}{1}%
%%                 {\z@}%
%%                 {-3.5ex \@plus -1ex \@minus -.2ex}%
%%                 {2.3ex \@plus .2ex}%
%%                 {\zihao{-2}\bfseries}}
%% \renewcommand{\subsection}{%
%%   \@startsection{subsection}{2}%
%%                 {\z@}%
%%                 {-3.0ex \@plus -1ex \@minus -.2ex}%
%%                 {1.5ex \@plus .2ex}%
%%                 {\zihao{3}\bfseries}}
%% \renewcommand{\subsubsection}{%
%%   \@startsection{subsubsection}{3}%
%%                 {\z@}%
%%                 {-2.5ex \@plus -1ex \@minus -.2ex}%
%%                 {1.5ex \@plus .2ex}%
%%                 {\zihao{-3}\bfseries}}
%% \renewcommand{\paragraph}{%
%%   \@startsection{paragraph}{4}%
%%                 {\z@}%
%%                 {-2.0ex \@plus -1ex \@minus -.2ex}%
%%                 {1ex \@plus .2ex}%
%%                 {\normalfont\zihao{4}\bfseries}}
%% \renewcommand{\subparagraph}{%
%%   \@startsection{subparagraph}{5}%
%%                 {\z@}%
%%                 {-1.5ex \@plus -1ex \@minus -.2ex}%
%%                 {1ex \@plus .2ex}%
%%                 {\normalfont\zihao{-4}\bfseries}}
\newcommand{\njut@titleformat}{\zihao{-1}\bfseries}
\newcommand{\njut@authorformat}{\zihao{-4}}
\newcommand{\njut@dateformat}{\zihao{-4}}
\setcounter{secnumdepth}{4}
\renewcommand*{\today}{{\number\year}年{\number\month}月{\number\day}日}
\setstretch{1.38}
\geometry{headheight=2.6cm,headsep=3mm,footskip=13mm}
\geometry{top=3.5cm,bottom=3.5cm,left=3.2cm,right=3.2cm}
\setlength{\parindent}{2em}
\fancypagestyle{plain}{%
  \fancyhf{}
  \fancyhead[C]{\if@mainmatter\small\leftmark\fi}
  \fancyfoot[C]{\small~{第{\thepage}页}~}
  \renewcommand{\headrulewidth}{\if@mainmatter 0.7pt\else 0pt \fi}
}
\pagestyle{plain}
\DefineFNsymbolsTM*{hurst}{%
    \textdagger       \dagger
      \textdaggerdbl  \ddagger
      \textsection      \mathsection
      \textparagraph  \mathparagraph
      \textbardbl       \|%
      {\textasteriskcentered\textasteriskcentered}{**}%
      {\textdagger\textdagger}{\dagger\dagger}%
      {\textdaggerdbl\textdaggerdbl}{\dagger\dagger}%
      {\textsection\textsection}{\mathsection\mathsection}%
      {\textparagraph\textparagraph}{\mathparagraph\mathparagraph}%
      {\textasteriskcentered\textasteriskcentered\textasteriskcentered}{***}%
      {\textdagger\textdagger\textdagger}{\dagger\dagger\dagger}%
      {\textdaggerdbl\textdaggerdbl\textdaggerdbl}{\ddagger\ddagger\ddagger}%
      {\textsection\textsection\textsection}%
      {\mathsection\mathsection\mathsection}%
      {\textparagraph\textparagraph\textparagraph}%
      {\mathparagraph\mathparagraph\mathparagraph}%
      \textasteriskcentered  *
}%
\setfnsymbol{hurst}
\setlist{%
  topsep=0.3em,             % 列表顶端的垂直空白
  partopsep=0pt,            % 列表环境前面紧接着一个空白行时其顶端的额外垂直空白
  itemsep=0ex plus 0.1ex,   % 列表项之间的额外垂直空白
  parsep=0pt,               % 列表项内的段落之间的垂直空白
  leftmargin=2em,           % 环境的左边界和列表之间的水平距离
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
\renewcommand{\tableofcontents}{%
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
\bibliographystyle{njuthesis}
\newcommand*{\classification}[1]{%
  \renewcommand*{\njut@value@nlc@classification}{#1}}
\newcommand*{\confidential}[1]{%
  \renewcommand*{\njut@value@nlc@confidential}{#1}}
\newcommand*{\udc}[1]{%
  \renewcommand*{\njut@value@nlc@udc}{#1}}
\newcommand*{\titlelinea}[1]{%
  \renewcommand{\njut@value@nlc@titlelinea}{#1}}
\newcommand*{\titlelineb}[1]{%
  \renewcommand{\njut@value@nlc@titlelineb}{#1}}
\newcommand*{\titlelinec}[1]{%
  \renewcommand{\njut@value@nlc@titlelinec}{#1}}
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
\renewcommand{\title}[1]{%
  \renewcommand{\njut@value@title}{#1}}
\renewcommand*{\author}[1]{%
  \renewcommand{\njut@value@author}{#1}}
\newcommand*{\studentnum}[1]{%
  \renewcommand{\njut@value@studentnum}{#1}}
\newcommand*{\grade}[1]{%
  \renewcommand{\njut@value@grade}{#1}}
\newcommand*{\supervisor}[1]{%
  \renewcommand{\njut@value@supervisor}{#1}}
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
\newcommand{\englishtitle}[1]{%
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
\newcommand*{\njut@makenlccover}{%
  \cleardoublepage
  \thispagestyle{empty}
  \pdfbookmark[0]{\njut@cap@nlc}{nlc}
  {\songti\zihao{-4}
    \njut@cap@nlc@classification~
    \njutunderline[150pt]{\njut@value@nlc@classification}
    \hfill
    \njut@cap@nlc@confidential~
    \njutunderline[150pt]{\njut@value@nlc@confidential}
    \vskip 10pt
    \njut@cap@nlc@udc~
    \njutunderline[160pt]{\njut@value@nlc@udc}
  }
  \vskip \stretch{2}
  \begin{center}
    \def\ULthickness{1pt}
    {\kaishu\zihao{-0} \njut@cap@nlc@title}
    {\kaishu\zihao{1}
    \vskip \stretch{1}
    \njutunderline[9em]{~\njut@value@nlc@titlelinea~}\\
    \njutunderline[9em]{~\njut@value@nlc@titlelineb~}\\
    \njutunderline[9em]{~\njut@value@nlc@titlelinec~}\\
    }
    \vskip \stretch{1}
    {\kaishu\zihao{4} \njut@cap@nlc@quotetitle}
    \vskip \stretch{1}
    {\kaishu\zihao{1} \njutunderline{~{\njut@value@author}~}}
    \vskip \stretch{1}
    {\kaishu\zihao{4} \njut@cap@nlc@author}
  \end{center}
  {\kaishu\zihao{4}
    \vskip \stretch{1}
    \noindent\njut@cap@nlc@supervisor%
    \njutunderline[94pt]{\njut@value@supervisor}

    \noindent\njutunderline[\textwidth]{\njut@value@nlc@supervisorinfo}

    \noindent\njut@cap@nlc@degree\njutunderline[8em]{\njut@value@degree}
    \njut@cap@nlc@major\njutunderline[164pt]{\njut@value@major}

    \noindent\njut@cap@nlc@submitdate%
    \njutunderline[8em]{\njut@value@submitdate}
    \njut@cap@nlc@defenddate%
    \njutunderline[134pt]{\njut@value@defenddate}

    \noindent\njut@cap@nlc@institute%
    \njutunderline[290pt]{}

    \noindent\hfill\njut@cap@nlc@chairman%
    \njutunderline[9em]{\njut@value@nlc@chairman}

    \noindent\hfill\njut@cap@nlc@reviwer%
    \njutunderline[9em]{\njut@value@nlc@reviewera}

    \noindent\hfill\njutunderline[9em]{\njut@value@nlc@reviewerb}

    \noindent\hfill\njutunderline[9em]{\njut@value@nlc@reviewerc}

    \noindent\hfill\njutunderline[9em]{\njut@value@nlc@reviewerd}
  }
  \clearpage
  \if@twoside
  \thispagestyle{empty}
  \cleardoublepage
  \fi
}
\newcommand*{\njut@makecover}{%
  \thispagestyle{empty}
  \pdfbookmark[0]{\njut@cap@cover}{cover}
  \begin{center}
    \vskip 10mm
    \includegraphics[width=1.96cm]{\njut@cap@institute@logo} \\
    \includegraphics[height=2cm]{\njut@cap@institute@name} \\
    \vskip 5mm
    {\bf\kaishu\zihao{1}\njut@cap@cover@thesis}\\
    \vskip 5mm
    {\bf\kaishu\zihao{1}（\njut@cap@cover@apply）}\\
    \vskip\stretch{1}
    \bf\kaishu\zihao{3}
    \def\tabcolsep{1pt}
    \def\arraystretch{1.5}
    \begin{tabular}{p{7.3em}c}
      \makebox[7em][s]{\njut@cap@cover@title}
      & \njutunderline[310pt]{\njut@value@title}\\
      \makebox[7em][s]{\njut@cap@cover@author}
      & \njutunderline[310pt]{\njut@value@author}\\
      \makebox[7em][s]{\njut@cap@cover@major}
      & \njutunderline[310pt]{\njut@value@major}\\
      \makebox[7em][s]{\njut@cap@cover@supervisor}
      & \njutunderline[310pt]{\njut@value@supervisor}\\
      \makebox[7em][s]{\njut@cap@cover@researchfield}
      & \njutunderline[310pt]{\njut@value@researchfield}\\
    \end{tabular}\\
    \vskip \stretch{1}
    {\bf\kaishu\zihao{4}\njut@value@date}
  \end{center}
}
\newcommand*{\njut@makecoverback}{%
  \thispagestyle{empty}
  \vspace*{\stretch{1}}
  {\bf\kaishu\zihao{-3}
   \noindent
   \begin{tabular}{p{6.2em}l}
   \makebox[6em][s]{\njut@cap@coverback@studentnum}： &\njut@value@studentnum\\
   \makebox[6em][s]{\njut@cap@coverback@defenddate}： &\njut@value@defenddate\\
   \makebox[6em][s]{\njut@cap@coverback@supervisor}： &\njut@cap@coverback@sign\\
   \end{tabular}}
}
\renewcommand*{\maketitle}{%
  \ifnjut@phd
    \njut@makenlccover
  \fi
  \if@twoside\cleardoublepage\else\clearpage\fi
  \njut@makecover
  \clearpage
  \ifnjut@backinfo
    \njut@makecoverback
  \fi
}
\newcommand*{\makeenglishtitle}{%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
    \vspace*{20pt}
      \bf\zihao{2}\njut@value@en@title
    \vskip \stretch{1}
      \normalfont\zihao{4}by
    \vskip 3pt
      \bf\zihao{4}\njut@value@en@author
    \vskip\stretch{1}
      \normalfont\zihao{4}\njut@cap@cover@en@supervisor
    \vskip 3pt
      \normalfont\zihao{4}\njut@value@en@supervisor
    \vskip \stretch{2}
      \normalfont\normalsize\njut@value@en@department\\
       \njut@value@en@institute
    \vskip 30pt
      \normalfont\normalsize\njut@value@en@date
    \vskip 20pt
      \it\normalsize\njut@cap@cover@en@statement
  \end{center}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}
\newenvironment{abstract}{%
  \if@twoside\cleardoublepage\else\clearpage\fi
  \thispagestyle{empty}
  \pdfbookmark[0]{\njut@cap@abstract}{abstract}
  \begin{center}
    {\bf\kaishu\zihao{-2}%
      \uuline{\njut@cap@abstract@chaptername}}
  \end{center}

  {\kaishu\zihao{4}%
    {\noindent\njut@cap@abstract@title{：}%
      \njutunderline[316pt]{\njut@value@title}}

    {\noindent\njutunderline[178pt]{\njut@value@major}%
      \njut@cap@abstract@major%
     \njutunderline[50pt]{\njut@value@grade}%
     \njut@cap@abstract@author{：}%
     \njutunderline[60pt]{\njut@value@author}}

    {\noindent\njut@cap@abstract@supervisor{：}%
      \njutunderline[252pt]{\njut@value@supervisor}}
  }
  \begin{center}
    {\heiti\zihao{-3}\njut@cap@abstract@abstractname}
  \end{center}
}{%
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}
\newcommand{\keywords}[1]{%
  \vspace{2ex}\noindent%
  {\renewcommand*{\njut@value@keywords}{#1}%
   \heiti\njut@cap@abstract@keywordsname{：}}{\ }{#1}%
}
\newenvironment{englishabstract}{%
  \if@twoside\cleardoublepage\else\clearpage\fi
  \thispagestyle{empty}
  \pdfbookmark[0]{\njut@cap@abstract@en}{englishabstract}
  \begin{center}
    {\bf\kaishu\zihao{-2}%
      \uuline{\njut@cap@abstract@en@chaptername}}
  \end{center}

  {\zihao{4}%
    \begin{description}[font=\normalfont, leftmargin=4em]
      \item[\njut@cap@abstract@en@title{:}] \njut@value@en@title
      \item[\njut@cap@abstract@en@major{:}] \njut@value@en@major
      \item[\njut@cap@abstract@en@author{:}] \njut@value@en@author
      \item[\njut@cap@abstract@en@supervisor{:}] \njut@value@en@supervisor
    \end{description}
  }
  \begin{center}
   {\bf\zihao{-3}\njut@cap@abstract@en@abstractname}
  \end{center}
}{%
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}
\newcommand{\englishkeywords}[1]{%
  \vspace{2ex}\noindent
  {\bf\njut@cap@abstract@en@keywordsname{:}}{\ }{#1}%
}
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
\newenvironment{acknowledgement}{%
  \nchapter{\njut@cap@acknowledgement@chaptername}
}{}
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
\newcommand{\comment}[3]{#1}
\ifnjut@showcomments
    \renewcommand\comment[3]{%
      \todo[linecolor={\commentlinecolor},
            bordercolor={\commentbordercolor},
            backgroundcolor={\commentbackgroundcolor}]
            {{#3}\par\hfill\zhdash{#2}}
            {\color{\commenttextcolor}#1}
    }
\fi
\newcommand*{\njut@setpdfinfo}{\hypersetup{%
        pdftitle={\njut@value@title},
        pdfauthor={\njut@value@author},
        pdfsubject={\njut@cap@cover@apply},
        pdfkeywords={\njut@value@keywords},
        pdfcreator={\njut@value@author},
        pdfproducer={XeLaTeX with the NJU-Thesis document class}}
}
\AtBeginDocument{\njut@setpdfinfo}
\endinput
%%
%% End of file `njuthesis.cls'.
