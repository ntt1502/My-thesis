%
% CUEDthesis v1.1
% By Harish Bhanderi <harish.bhanderi@cantab.net
% Version 1.0 released 15/07/2002
% Version 1.1 released 14/07/2010
% -----------------------------------------------
% This template was adapted for University of Information Technology - Viet Nam 
% On 21/12/2012 
%-------------------------- identification ---------------------
%\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{CUEDthesisPSnPDF}[2010/07/14 v1.1 CUED thesis class]
%-------------------------- initial code -----------------------
\newif\ifCU@bookmode
\CU@bookmodetrue

\DeclareOption{report}{\CU@bookmodefalse}
\DeclareOption{book}{\CU@bookmodetrue}
\ProcessOptions\relax%

\ifCU@bookmode
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}%
\ProcessOptions\relax%
\ifx\pdfoutput\undefined%
   \LoadClass[dvips, a4paper]{book}%
\else%
   \LoadClass[pdftex, a4paper]{book}%
\fi%
\else
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}%
\ProcessOptions\relax%
\ifx\pdfoutput\undefined%
  \LoadClass[dvips, a4paper]{report}%
\else%
   \LoadClass[pdftex, a4paper]{report}%
\fi%
%\renewcommand{\refname}{References}%
\fi

%\DeclareOption{book}{%
%}%
\usepackage{setspace}
\usepackage{tocbibind}
\usepackage{amssymb}

%\usepackage{subfigure}
\usepackage{subcaption}
\usepackage{fancyhdr}
\usepackage{eucal}
%\usepackage[english]{babel}
\usepackage[usenames, dvipsnames]{color}
\usepackage[perpage]{footmisc}
%\usepackage[square, sort, numbers, authoryear]{natbib}
\usepackage{ifthen}
\usepackage{ifpdf}
\usepackage{hologo}

%%%% For typing Vietnamese %%%%%%%
\usepackage[utf8]{inputenc} % This for vietnamese 
\usepackage[utf8]{vntex}
\usepackage[english]{babel} % This for vietnamese 
%%%%For quote %%%%
\usepackage{csquotes}
%\usepackage{dirtytalk}
%%%%%%%For math %%%%%
\usepackage{amsmath}
\newcommand\abs[1]{\left|#1\right|}
%%%%%%Indent First in each Chapter %%%%%
\usepackage{indentfirst}
%Bibliography
%uncomment next line to change bibliography name to references for Book document class
%\renewcommand{\bibname}{References}
% note that this doesn't do much if you later define another bibliography style 


% Nomenclature
\usepackage{nomencl}
\makenomenclature
\renewcommand\nomgroup[1]{%
  \ifthenelse{\equal{#1}{A}}{%
   \item[\textbf{Roman Symbols}] }{%             A - Roman
    \ifthenelse{\equal{#1}{G}}{%
     \item[\textbf{Greek Symbols}]}{%             G - Greek
      \ifthenelse{\equal{#1}{R}}{%
        \item[\textbf{Superscripts}]}{%              R - Superscripts
          \ifthenelse{\equal{#1}{S}}{%
           \item[\textbf{Subscripts}]}{{%             S - Subscripts
	    \ifthenelse{\equal{#1}{X}}{%
	     \item[\textbf{Other Symbols}]}{{%    X - Other Symbols
	    \ifthenelse{\equal{#1}{Z}}{%
	     \item[\textbf{Acronyms}]}%              Z - Acronyms
              			{{}}}}}}}}}}

\ifpdf

 

%-->
%--> Google.com search "hyperref options"
%--> 
%--> http://www.ai.mit.edu/lab/sysadmin/latex/documentation/latex/hyperref/manual.pdf
%--> http://www.chemie.unibas.ch/~vogtp/LaTeX2PDFLaTeX.pdf 
%--> http://www.uni-giessen.de/partosch/eurotex99/ oberdiek/print/sli4a4col.pdf
%--> http://me.in-berlin.de/~miwie/tex-refs/html/latex-packages.html
%-->
    \usepackage[ pdftex, plainpages = false, pdfpagelabels, 
                 pdfpagelayout = OneColumn, % display single page, advancing flips the page - Sasa Tomic
                 bookmarks,
                 bookmarksopen = true,
                 bookmarksnumbered = true,
                 breaklinks = true,
                 linktocpage,
                 pagebackref,
                 colorlinks = true,
                 linkcolor = blue,
                 urlcolor  = blue,
                 citecolor = red,
                 anchorcolor = green,
                 hyperindex = true,
                 hyperfigures
                 ]{hyperref} 
    \usepackage[pdftex]{graphicx}
    \DeclareGraphicsExtensions{.png, .jpg, .pdf}

    \pdfcompresslevel=9
    \graphicspath{{ThesisFigs/PNG/}{ThesisFigs/PDF/}{ThesisFigs/}}
\else
    \usepackage[ dvips, 
                 bookmarks,
                 bookmarksopen = true,
                 bookmarksnumbered = true,
                 breaklinks = true,
                 linktocpage,
                 pagebackref,
                 colorlinks = true,
                 linkcolor = blue,
                 urlcolor  = blue,
                 citecolor = red,
                 anchorcolor = green,
                 hyperindex = true,
                 hyperfigures
                 ]{hyperref}

    %\usepackage{epsfig}
    \usepackage{graphicx}
    \DeclareGraphicsExtensions{.eps, .ps}
    \graphicspath{{ThesisFigs/EPS/}{ThesisFigs/}}
\fi

%define the page size including an offset for binding
%\setlength{\topmargin}{0.0in}
%\setlength{\oddsidemargin}{0in}
%\setlength{\evensidemargin}{0in}
%\setlength{\textheight}{700pt}
%\setlength{\textwidth}{500pt}


%A4 settings
\ifpdf
   \pdfpageheight=297mm
   \pdfpagewidth=210mm
\else
   \setlength{\paperheight}{297mm}
   \setlength{\paperwidth}{210mm}
\fi

\setlength{\hoffset}{0.00cm}
\setlength{\voffset}{0.00cm}

%\setlength{\evensidemargin}{1.96cm}
%\setlength{\oddsidemargin}{-0.54cm}
%\setlength{\topmargin}{1mm}
%\setlength{\headheight}{1.36cm}
%\setlength{\headsep}{1.00cm}
%\setlength{\textheight}{20.84cm}
%\setlength{\textwidth}{14.5cm}
%\setlength{\marginparsep}{1mm}
%\setlength{\marginparwidth}{3cm}
%\setlength{\footskip}{2.36cm}

%Dont know how it work set A4 custom size :
\usepackage{geometry}
\geometry{
 a4paper,
 total={170mm,257mm},
 left=35mm,
 top=20mm,
 bottom=25mm,
 right=20mm,
}

\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{\MakeUppercase{\thechapter. #1 }}{}}
\renewcommand{\sectionmark}[1]{}
\fancyhf{}
\fancyhead[RO]{\bfseries\rightmark}
\fancyhead[LE]{\bfseries\leftmark}
\fancyfoot[R]{\thepage}
\fancyfoot[L]{Thesis is performed by: Vu Quoc Huy - 20111669 - AS-K56}
%\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0.5pt}
%\addtolength{\headheight}{0.5pt}
\fancypagestyle{plain}{
  \fancyhead{}
  \renewcommand{\headrulewidth}{0pt}
}

 
\newcommand{\submittedtext}{\Huge\textbf{THESIS\vspace*{1ex}}}
%
%
% DECLARATIONS
%
% These macros are used to declare arguments needed for the
% construction of the title page and other preamble.

% Supervisor 
\def\supervisor#1{\gdef\@supervisor{#1}}

% The year and term the degree will be officially conferred
\def\degreedate#1{\gdef\@degreedate{#1}}
% The full (unabbreviated) name of the mydegree
\def\mydegree#1{\gdef\@mydegree{#1}}
% The name of your college or department(eg. Trinity, Pembroke, Maths, Physics)
\def\collegeordept#1{\gdef\@collegeordept{#1}}
% The name of your University
\def\university#1{\gdef\@university{#1}}
% Defining the crest
\def\crest#1{\gdef\@crest{#1}}

% These macros define an environment for front matter that is always 
% single column even in a double-column document.

\newenvironment{alwayssingle}{%
       \@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
       \else\newpage\fi}
       {\if@restonecol\twocolumn\else\newpage\fi}
%define title page layout
\usepackage{helvet}
\usepackage{fancybox}
\renewcommand{\familydefault}{\rmdefault}
\renewcommand{\maketitle}{%
\thisfancypage{
\setlength{\fboxsep}{0pt}
\fbox}{}
\pagenumbering{roman} % Sasa Tomic
\setcounter{page}{0}  % Sasa Tomic
\begin{alwayssingle}

    \renewcommand{\footnotesize}{\small}
    \renewcommand{\footnoterule}{\relax}
    \thispagestyle{empty}
%  \null\vfill
  \begin{center}
     {\normalsize{\@university} \par}
     {\normalsize{\@collegeordept} \par}
     {\textbf{---------------*---------------}}\\
%{\vspace*{10mm} {{\@crest}\par}}
  \vspace*{20mm}

    {\fontsize{30}{40} \selectfont{{\submittedtext}} \par}
    {\large{SUBMITTED FOR PARTIAL FULFILLMENT OF\\THE REQUIREMENTS FOR THE DEGREE OF}}\\
\vspace*{1ex}
    {\begin{Huge}\textbf{\@mydegree} \par\end{Huge}}
    {\begin{large} IN\par\end{large}}
    {\LARGE{\textbf{INFORMATION TECHNOLOGY}\par}}
\vspace*{2ex}
       \vspace*{20mm}
     { \Large {\bfseries {\@title}} \par}
     
  \end{center}
   \vspace*{30mm}
   {\fontsize{14}{18}\selectfont{
   \begin{tabular}{l l l l }
 \textbf{ } \hspace*{35pt} \textbf{ } &  \textbf{ } \hspace*{35pt} \textbf{ } & Author: & {\textbf{\@author}} \\ 
 \textbf{ } \hspace*{35pt} \textbf{ } &  \textbf{ } \hspace*{35pt} \textbf{ } & \textbf{ } \hspace*{35pt} \textbf{ } & Class AS-K56 \\[0.2cm] 
 \textbf{ } \hspace*{35pt} \textbf{ } &  \textbf{ } \hspace*{35pt} \textbf{ } & Supervisor: & {\textbf{Assoc. Prof.}} \\
 \textbf{ } \hspace*{35pt} \textbf{ } &  \textbf{ } \hspace*{35pt} \textbf{ } & \textbf{ } \hspace*{35pt} \textbf{ } & {\textbf{\@supervisor}}
    \end{tabular}\\
    }}
  \begin{center}
   \vspace*{20mm}
  {\large {HANOI {\@degreedate} }}
  \end{center}
%  \null\vfill
\end{alwayssingle}}

% DEDICATION
%
% The dedication environment makes sure the dedication gets its
% own page and is set out in verse format.

\newenvironment{dedication}
{\begin{alwayssingle}
  \pagestyle{empty}
  \begin{center}
  \vspace*{1.5cm}
  {\LARGE }
  \end{center}
  \vspace{0.5cm}
  \begin{quote} \begin{center}}
{\end{center} \end{quote} \end{alwayssingle}}


% ACKNOWLEDGEMENTS
%
% The acknowledgements environment puts a large, bold, centered 
% "Acknowledgements" label at the top of the page. The acknowledgements
% themselves appear in a quote environment, i.e. tabbed in at both sides, and
% on its own page.

\newenvironment{acknowledgements}
{\pagestyle{plain}
\begin{alwayssingle}
\begin{center}
\vspace*{1.5cm}
{\Large \bfseries ACKNOWLEDGEMENTS}
\end{center}
\vspace{0.5cm}
\begin{quote}}
{\end{quote}\end{alwayssingle}}

% The acknowledgementslong environment puts a large, bold, centered 
% "Acknowledgements" label at the top of the page. The acknowledgement itself 
% does not appears in a quote environment so you can get more in.

\newenvironment{acknowledgementslong}
{\pagestyle{plain}
\begin{alwayssingle}
\begin{center}
\vspace*{1.5cm}
{\Large \bfseries REQUIREMENTS FOR THE THESIS}
\end{center}
\vspace{0.5cm}\begin{quote}}
{\end{quote}\end{alwayssingle}}

%ABSTRACT
%
%The abstract environment puts a large, bold, centered "Abstract" label at
%the top of the page. The abstract itself appears in a quote environment,
%i.e. tabbed in at both sides, and on its own page.

\newenvironment{abstracts} {\begin{alwayssingle} \pagestyle{plain}
  \begin{center}
  \vspace*{1.5cm}
  {\Large \bfseries  TÓM TẮT NỘI DUNG ĐỒ ÁN TỐT NGHIỆP}
  \end{center}
  \vspace{0.5cm}
   \begin{quote}}
{\end{quote}\end{alwayssingle}}

%The abstractlong environment puts a large, bold, centered "Abstract" label at
%the top of the page. The abstract itself does not appears in a quote
%environment so you can get more in.

\newenvironment{abstractsEnglish} {\begin{alwayssingle} \pagestyle{plain}
  \begin{center}
  \vspace*{1.5cm}
  {\Large \bfseries  ABSTRACT OF THESIS}
  \end{center}
  \vspace{0.5cm} \begin{quote}}
{\end{quote}\end{alwayssingle}}

%The abstractseparate environment is for running of a page with the abstract
%on including title and author etc as required to be handed in separately

\newenvironment{abstractseparate} {\begin{alwayssingle} \pagestyle{plain}
  \vspace*{-1in}
 \begin{center}
    { \Large {\bfseries {\@title}} \par}
    {{\large \vspace*{1ex} \@author} \par}
{\large \vspace*{1ex}
    {{\@collegeordept} \par}
    {{\@university} \par}
\vspace*{1ex}
    {{\it \submittedtext} \par}
    {\it {\@mydegree} \par}
\vspace*{2ex}
    {\@degreedate}}
  \end{center}}
{\end{alwayssingle}}

%ROMANPAGES
%
% The romanpages environment set the page numbering to lowercase roman one
% for the contents and figures lists. It also resets
% page-numbering for the remainder of the dissertation (arabic, starting at 1).

\newenvironment{romanpages}
{\setcounter{page}{1}
  \renewcommand{\thepage}{\roman{page}}}
{\newpage\renewcommand{\thepage}{\arabic{page}}}
%{\newpage\renewcommand{\thepage}{\arabic{page}}\setcounter{page}{1}}

