\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{spaced}[choose.sty class file]
\LoadClass[]{scrreprt}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Essentials%
\RequirePackage{asymptote}
\begin{asydef}
size(6cm);
import olympiad;
import cse5;
import geometry;
\end{asydef}

\RequirePackage{tikz}
\RequirePackage{tkz-euclide}
\usetikzlibrary{calc}

\RequirePackage{babel}

\RequirePackage{amsmath,amssymb,amsthm}
\RequirePackage{mdframed}
\RequirePackage{xcolor}
%xcolor
\usepackage{xcolor}
\definecolor{dpurple}{RGB}{155, 50, 168} %dark purple
\definecolor{lpurple}{RGB}{253, 237, 255} %light purple
\definecolor{dorange}{RGB}{235, 197, 45} %dark orange
\definecolor{lyellow}{RGB}{255, 255, 227} %yellow
\definecolor{dneonblue}{RGB}{89, 212, 212} %neon blue
\definecolor{lmintblue}{RGB}{235, 255, 255} %mint blue
\definecolor{dblue}{RGB}{45, 80, 235} %dark blue
\definecolor{lblue}{RGB}{230, 234, 255} %light blue
\definecolor{dgreen}{RGB}{2, 117, 15} %dark green
\definecolor{lgreen}{RGB}{227, 255, 230} %light green
\definecolor{dred}{RGB}{227, 11, 11} %dark red
\definecolor{lred}{RGB}{255, 237, 237}
\definecolor{titlegreen}{RGB}{9, 66, 82}
\definecolor{MidnightBlue}{HTML}{191970} 
%fonts
\RequirePackage{newpxtext,newpxmath}

\RequirePackage{fontawesome}
\RequirePackage{marvosym}
\RequirePackage{pifont}

\RequirePackage[skaknew]{skak}

\DeclareRobustCommand{\cantafont}{\fontfamily{Cantarell-TLF}\selectfont}
\DeclareRobustCommand{\carlfont}{\fontfamily{Carlito-OsF}\selectfont}
\DeclareRobustCommand{\dvsans}{\fontfamily{DejaVuSans-TLF}\selectfont}


\addtokomafont{title}{\carlfont\color{titlegreen}}
\addtokomafont{author}{\carlfont}
\addtokomafont{part}{\carlfont}
\addtokomafont{date}{\carlfont\color{titlegreen}}
%MARGINS!
\RequirePackage[letterpaper,top=0.5in,bottom=1in,left=0.5in,right=0.5in]{geometry}
\@ifundefined{KOMAClassName}{}{
	        \@ifundefined{chapter}{}{
				\addtokomafont{partprefix}{\rmfamily}
				\renewcommand*{\partformat}{\color{MidnightBlue}
					\scalebox{2.5}{\thepart}\enlargethispage{2em}}
				\addtokomafont{chapterprefix}{\raggedleft}
				\RedeclareSectionCommand[beforeskip=0.5em]{chapter}
				\renewcommand*{\chapterformat}{\mbox{%
					\scalebox{1.5}{\chapappifchapterprefix{\nobreakspace}}%
					\scalebox{2.718}{\color{MidnightBlue}\thechapter}\enskip}}
			}
		}
\newtheoremstyle{theorem}%                % Name
  {0pt}%                                     % Space above
  {2pt}%                                     % Space below
  {}%                                     % Body font
  {}%                                     % Indent amount
  {\color{dblue}\sffamily\bfseries}%                            % Theorem head font
  {}%                                    % Punctuation after theorem head
  {\newline}%                                    % Space after theorem head, ' ', or \newline
  {\thmnote{#3}}%                                     % Theorem head spec (can be left empty, meaning `normal')
\newtheoremstyle{theorem*}%                % Name
  {0pt}%                                     % Space above
  {2pt}%                                     % Space below
  {}%                                     % Body font
  {}%                                     % Indent amount
  {\color{dblue}\sffamily\bfseries}%                            % Theorem head font
  {}%                                    % Punctuation after theorem head
  {\newline}%                                    % Space after theorem head, ' ', or \newline
  {\thmname{#1}\thmnote{ (#3)}}%                                     % Theorem head spec (can be left empty, meaning `normal')
\newtheoremstyle{lemma}%                % Name
  {0pt}%                                     % Space above
  {2pt}%                                     % Space below
  {}%                                     % Body font
  {}%                                     % Indent amount
  {\color{dblue}\sffamily\bfseries}%                            % Theorem head font
  {}%                                    % Punctuation after theorem head
  {\newline}%                                    % Space after theorem head, ' ', or \newline
  {\thmname{#1}\thmnumber{ #2}\thmnote{ (#3)}}%                                     % Theorem head spec (can be left empty, meaning `normal')
\newtheoremstyle{lemma*}%                % Name
  {0pt}%                                     % Space above
  {2pt}%                                     % Space below
  {}%                                     % Body font
  {}%                                     % Indent amount
  {\color{dblue}\sffamily\bfseries}%                            % Theorem head font
  {}%                                    % Punctuation after theorem head
  {\newline}%                                    % Space after theorem head, ' ', or \newline
  {\thmname{#1}\thmnote{ (#3)}}%                                     % Theorem head spec (can be left empty, meaning `normal')
\newtheoremstyle{corollary}%                % Name
  {0pt}%                                     % Space above
  {2pt}%                                     % Space below
  {}%                                     % Body font
  {}%                                     % Indent amount
  {\color{dblue}\sffamily\bfseries}%                            % Theorem head font
  {}%                                    % Punctuation after theorem head
  {\newline}%                                    % Space after theorem head, ' ', or \newline
  {\thmname{#1}\thmnumber{ #2}\thmnote{ (#3)}}%                                     % Theorem head spec (can be left empty, meaning `normal')
\newtheoremstyle{corollary*}%                % Name
  {0pt}%                                     % Space above
  {2pt}%                                     % Space below
  {}%                                     % Body font
  {}%                                     % Indent amount
  {\color{dblue}\sffamily\bfseries}%                            % Theorem head font
  {}%                                    % Punctuation after theorem head
  {\newline}%                                    % Space after theorem head, ' ', or \newline
  {\thmname{#1}\thmnote{ (#3)}}%                                     % Theorem head spec (can be left empty, meaning `normal')
\newtheoremstyle{postulate}%                % Name
  {0pt}%                                     % Space above
  {2pt}%                                     % Space below
  {}%                                     % Body font
  {}%                                     % Indent amount
  {\color{dgreen}\sffamily\bfseries}%                            % Theorem head font
  {}%                                    % Punctuation after theorem head
  {\newline}%                                    % Space after theorem head, ' ', or \newline
  {\thmname{#1}\thmnumber{ #2}\thmnote{ (#3)}}%                                     % Theorem head spec (can be left empty, meaning `normal')
\newtheoremstyle{postulate*}%                % Name
  {0pt}%                                     % Space above
  {2pt}%                                     % Space below
  {}%                                     % Body font
  {}%                                     % Indent amount
  {\color{dgreen}\sffamily\bfseries}%                            % Theorem head font
  {}%                                    % Punctuation after theorem head
  {\newline}%                                    % Space after theorem head, ' ', or \newline
  {\thmname{#1}\thmnote{ (#3)}}%                                     % Theorem head spec (can be left empty, meaning `normal')
\newtheoremstyle{proposition}%                % Name
  {0pt}%                                     % Space above
  {2pt}%                                     % Space below
  {}%                                     % Body font
  {}%                                     % Indent amount
  {\color{dgreen}\sffamily\bfseries}%                            % Theorem head font
  {}%                                    % Punctuation after theorem head
  {\newline}%                                    % Space after theorem head, ' ', or \newline
  {\thmname{#1}\thmnumber{ #2}\thmnote{ (#3)}}%                                     % Theorem head spec (can be left empty, meaning `normal')
\newtheoremstyle{proposition*}%                % Name
  {0pt}%                                     % Space above
  {2pt}%                                     % Space below
  {}%                                     % Body font
  {}%                                     % Indent amount
  {\color{dgreen}\sffamily\bfseries}%                            % Theorem head font
  {}%                                    % Punctuation after theorem head
  {\newline}%                                    % Space after theorem head, ' ', or \newline
  {\thmname{#1}\thmnote{ (#3)}}%                                     % Theorem head spec (can be left empty, meaning `normal')
\newtheoremstyle{problem}%                % Name
  {0pt}%                                     % Space above
  {2pt}%                                     % Space below
  {}%                                     % Body font
  {}%                                     % Indent amount
  {\color{dred}\sffamily\bfseries}%                            % Theorem head font
  {}%                                    % Punctuation after theorem head
  {\newline}%                                    % Space after theorem head, ' ', or \newline
  {\thmname{#1}\thmnumber{ #2}\thmnote{ (#3)}}%                                     % Theorem head spec (can be left empty, meaning `normal')
\newtheoremstyle{problem*}%                % Name
  {0pt}%                                     % Space above
  {2pt}%                                     % Space below
  {}%                                     % Body font
  {}%                                     % Indent amount
  {\color{dred}\sffamily\bfseries}%                            % Theorem head font
  {}%                                    % Punctuation after theorem head
  {\newline}%                                    % Space after theorem head, ' ', or \newline
  {\thmname{#1}\thmnote{ (#3)}}%                                     % Theorem head spec (can be left empty, meaning `normal')
\newtheoremstyle{solution}
  {0pt}
  {0pt}
  {}
  {}
  {\color{black}\carlfont\bfseries}
  {:}
  {1.5mm}
  {\thmname{#1}\thmnote{ #3}}
\newtheoremstyle{pro}
 {0pt}
 {0pt}
 {}
 {}
 {\color{dpurple}\sffamily\bfseries}
 {:}
 {1.5mm}
 {\thmname{#1}\thmnote{ #3}}
\newtheoremstyle{fact}
 {0pt}%                                     % Space above
 {2pt}%                                     % Space below
 {}%                                     % Body font
 {}%                                     % Indent amount
 {\color{dorange}\sffamily\bfseries}%                            % Theorem head font
 {}%                                    % Punctuation after theorem head
 {\newline}%                                    % Space after theorem head, ' ', or \newline
 {\thmname{#1} \thmnumber{#2}\thmnote{ (#3)}}%                                     % Theorem head spec (can be left empty, meaning `normal')
\newtheoremstyle{fact*}
 {0pt}%                                     % Space above
 {2pt}%                                     % Space below
 {}%                                     % Body font
 {}%                                     % Indent amount
 {\color{dorange}\sffamily\bfseries}%                            % Theorem head font
 {}%                                    % Punctuation after theorem head
 {\newline}%                                    % Space after theorem head, ' ', or \newline
 {\thmname{#1}\thmnote{ (#3)}}%                                     % Theorem head spec (can be left empty, meaning `normal')
\newtheoremstyle{algorithm}
 {0pt}%                                     % Space above
 {2pt}%                                     % Space below
 {}%                                     % Body font
 {}%                                     % Indent amount
 {\color{dneonblue}\sffamily\bfseries}%                            % Theorem head font
 {}%                                    % Punctuation after theorem head
 {\newline}%                                    % Space after theorem head, ' ', or \newline
 {\thmnote{#3}}%                                     % Theorem head spec (can be left empty, meaning `normal')
\theoremstyle{theorem}
\newmdtheoremenv[% settings
backgroundcolor=lblue,
linecolor=dblue,
linewidth=0.5pt,
nobreak=true,
innerleftmargin=5pt,
innerrightmargin=5pt,
topline=true,
bottomline=true,
rightline=true,
leftline=true]{theorem}{Theorem}

\theoremstyle{theorem*}
\newmdtheoremenv[% settings
backgroundcolor=lblue,
linecolor=dblue,
linewidth=0.5pt,
nobreak=true,
innerleftmargin=5pt,
innerrightmargin=5pt,
topline=true,
bottomline=true,
rightline=true,
leftline=true]{theorem*}{Theorem}

\theoremstyle{lemma}
\newmdtheoremenv[% settings
backgroundcolor=lblue,
linecolor=dblue,
linewidth=0.5pt,
nobreak=true,
innerleftmargin=5pt,
innerrightmargin=5pt,
topline=true,
bottomline=true,
rightline=true,
leftline=true]{lemma}{Lemma}

\theoremstyle{lemma*}
\newmdtheoremenv[% settings
backgroundcolor=lblue,
linecolor=dblue,
linewidth=0.5pt,
nobreak=true,
innerleftmargin=5pt,
innerrightmargin=5pt,
topline=true,
bottomline=true,
rightline=true,
leftline=true]{lemma*}{Lemma}

\theoremstyle{corollary}
\newmdtheoremenv[% settings
backgroundcolor=lblue,
linecolor=dblue,
linewidth=0.5pt,
nobreak=true,
innerleftmargin=5pt,
innerrightmargin=5pt,
topline=true,
bottomline=true,
rightline=true,
leftline=true]{corollary}{Corollary}

\theoremstyle{corollary*}
\newmdtheoremenv[% settings
backgroundcolor=lblue,
linecolor=dblue,
linewidth=0.5pt,
nobreak=true,
innerleftmargin=5pt,
innerrightmargin=5pt,
topline=true,
bottomline=true,
rightline=true,
leftline=true]{corollary*}{Corollary}

\theoremstyle{postulate}
\newmdtheoremenv[% settings
backgroundcolor=lgreen,
linecolor=dgreen,
linewidth=0.5pt,
nobreak=true,
innerleftmargin=5pt,
innerrightmargin=5pt,
topline=true,
bottomline=true,
rightline=true,
leftline=true]{postulate}{Postulate}

\theoremstyle{postulate*}
\newmdtheoremenv[% settings
backgroundcolor=lgreen,
linecolor=dgreen,
linewidth=0.5pt,
nobreak=true,
innerleftmargin=5pt,
innerrightmargin=5pt,
topline=true,
bottomline=true,
rightline=true,
leftline=true]{postulate*}{Postulate}

\theoremstyle{proposition}
\newmdtheoremenv[% settings
backgroundcolor=lgreen,
linecolor=dgreen,
linewidth=0.5pt,
nobreak=true,
innerleftmargin=5pt,
innerrightmargin=5pt,
topline=true,
bottomline=true,
rightline=true,
leftline=true]{proposition}{Proposition}

\theoremstyle{proposition*}
\newmdtheoremenv[% settings
backgroundcolor=lgreen,
linecolor=dgreen,
linewidth=0.5pt,
nobreak=true,
innerleftmargin=5pt,
innerrightmargin=5pt,
topline=true,
bottomline=true,
rightline=true,
leftline=true]{proposition*}{Proposition}

\theoremstyle{proposition}
\newmdtheoremenv[% settings
backgroundcolor=lgreen,
linecolor=dgreen,
linewidth=0.5pt,
nobreak=true,
innerleftmargin=5pt,
innerrightmargin=5pt,
topline=true,
bottomline=true,
rightline=true,
leftline=true]{definition}{Definition}

\theoremstyle{proposition*}
\newmdtheoremenv[% settings
backgroundcolor=lgreen,
linecolor=dgreen,
linewidth=0.5pt,
nobreak=true,
innerleftmargin=5pt,
innerrightmargin=5pt,
topline=true,
bottomline=true,
rightline=true,
leftline=true]{definition*}{Definition}

\theoremstyle{problem}
\newmdtheoremenv[% settings
backgroundcolor=lred,
linecolor=dred,
linewidth=0.5pt,
nobreak=true,
innerleftmargin=5pt,
innerrightmargin=5pt,
topline=true,
bottomline=true,
rightline=true,
leftline=true]{problem}{Problem}

\theoremstyle{problem*}
\newmdtheoremenv[% settings
backgroundcolor=lred,
linecolor=dred,
linewidth=0.5pt,
nobreak=true,
innerleftmargin=5pt,
innerrightmargin=5pt,
topline=true,
bottomline=true,
rightline=true,
leftline=true]{problem*}{Problem}

\theoremstyle{problem}
\newmdtheoremenv[% settings
backgroundcolor=lred,
linecolor=dred,
linewidth=1pt,
nobreak=true,
innerleftmargin=5pt,
innerrightmargin=5pt,
topline=true,
bottomline=true,
rightline=true,
leftline=true]{exercise}{Exercise}

\theoremstyle{problem*}
\newmdtheoremenv[% settings
backgroundcolor=lred,
linecolor=dred,
linewidth=0.5pt,
nobreak=true,
innerleftmargin=5pt,
innerrightmargin=5pt,
topline=true,
bottomline=true,
rightline=true,
leftline=true]{exercise*}{Exercise}

\theoremstyle{problem}
\newmdtheoremenv[% settings
backgroundcolor=lred,
linecolor=dred,
linewidth=0.5pt,
nobreak=true,
innerleftmargin=5pt,
innerrightmargin=5pt,
topline=true,
bottomline=true,
rightline=true,
leftline=true]{example}{Example}

\theoremstyle{problem*}
\newmdtheoremenv[% settings
backgroundcolor=lred,
linecolor=dred,
linewidth=0.5pt,
nobreak=true,
innerleftmargin=5pt,
innerrightmargin=5pt,
topline=true,
bottomline=true,
rightline=true,
leftline=true]{example*}{Example}

\theoremstyle{solution}
\newtheorem{solution}{Solution}

\renewcommand{\thesolution}{\unskip}

\def\endsolution{\hfill$\blacksquare$}
%proof taken  from dennis.sty ;P
\theoremstyle{pro}
\newmdtheoremenv[
backgroundcolor=white,
nobreak=true,
innertopmargin=5pt,
innerleftmargin=7pt,
innerrightmargin=7pt,
linecolor=dpurple,
linewidth=3pt,
topline=false,
bottomline=false,
rightline=false,
leftline=false]{pro}{Proof}

\renewcommand{\thepro}{\unskip}

\def\endpro{\hfill$\blacksquare$}

\theoremstyle{solution}
\newmdtheoremenv[
backgroundcolor=white,
nobreak=true,
innertopmargin=5pt,
innerleftmargin=7pt,
innerrightmargin=7pt,
linecolor=black,
linewidth=3pt,
topline=false,
bottomline=false,
rightline=false,
leftline=false]{sol}{Solution}

\renewcommand{\thesol}{\unskip}

\def\endsol{\hfill$\blacksquare$}
\theoremstyle{fact}
\newmdtheoremenv[% settings
backgroundcolor=lyellow,
linecolor=dorange,
linewidth=0.5pt,
nobreak=true,
innerleftmargin=5pt,
innerrightmargin=5pt,
topline=false,
bottomline=false,
rightline=false,
leftline=false]{fact}{Fact}

\theoremstyle{algorithm}
\newmdtheoremenv[% settings
backgroundcolor=lmintblue,
linecolor=dneonblue,
linewidth=0.5pt,
nobreak=true,
innerleftmargin=5pt,
innerrightmargin=5pt,
topline=false,
bottomline=false,
rightline=false,
leftline=false]{algorithm}{Algorithm}

\setlength\parindent{0pt}
\usepackage[colorlinks=true]{hyperref}
\hypersetup{urlcolor=dred,linkcolor=dblue,citecolor=dgreen}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrreprt}}
\ProcessOptions\relax
