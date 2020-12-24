\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{out}[class file]
\LoadClass[]{scrartcl}

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
\RequirePackage{cmbright}

%MARGINS!
\usepackage[letterpaper,right=0.5in,left=0.5in,top=0.5in,bottom=0.5in]{geometry}
%xcolor
\usepackage{xcolor}
\definecolor{porange}{RGB}{232, 105, 43} %orange
\definecolor{plightorange}{RGB}{255, 249, 242} %light orange
\definecolor{symbolpurple}{RGB}{181, 50, 123}
\definecolor{MidnightBlue}{HTML}{191970} 
\definecolor{TealBlue}{RGB}{243, 251, 251}
\definecolor{cxcblue}{RGB}{116, 128, 212}
\definecolor{cxclightblue}{RGB}{240, 241, 255}
\definecolor{cxcpurple}{RGB}{169,59,148}
\definecolor{cxclightpurple}{RGB}{247, 239,246}
\definecolor{dred}{RGB}{227, 11, 11} %dark red
\definecolor{lred}{RGB}{255, 237, 237}
\addtokomafont{title}{\normalfont\bfseries\sffamily}
%section colors
\usepackage{bbding}
\renewcommand*{\sectionformat}%
				{\color{symbolpurple}{\small\SixFlowerAlternate}\hspace{1mm}\thesection\enskip}
			\renewcommand*{\subsectionformat}%
				{\color{symbolpurple}\thesubsection\enskip}
			\renewcommand*{\subsubsectionformat}%
				{\color{symbolpurple}\thesubsubsection\enskip}
			\KOMAoptions{numbers=noenddot}
%theorems		
\newtheoremstyle{def}%                % Name
  {0pt}%                                     % Space above
  {2pt}%                                     % Space below
  {}%                                     % Body font
  {}%                                     % Indent amount
  {\color{cxcpurple}\sffamily\bfseries}%                            % Theorem head font
  { ---}%                                    % Punctuation after theorem head
  {3mm}%                                    % Space after theorem head, ' ', or \newline
  {\thmname{#1} \thmnumber{#2}\thmnote{#3}}%                                     % Theorem head spec (can be left empty, meaning `normal')
\theoremstyle{def}
\newmdtheoremenv[% settings
backgroundcolor=cxclightpurple,
linecolor=cxcpurple,
linewidth=2pt,
nobreak=true,
innerleftmargin=5pt,
innerrightmargin=5pt,
topline=false,
bottomline=false,
rightline=false,
leftline=true]{definition}{Definition}[section]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newtheoremstyle{theo}%                % Name
  {0pt}%                                     % Space above
  {2pt}%                                     % Space below
  {}%                                     % Body font
  {}%                                     % Indent amount
  {\color{MidnightBlue}\sffamily\bfseries}%                            % Theorem head font
  {}%                                    % Punctuation after theorem head
  {\newline}%                                    % Space after theorem head, ' ', or \newline
  {\thmname{#1} \thmnumber{#2} \thmnote{(#3)}}%                                     % Theorem head spec (can be left empty, meaning `normal')
\theoremstyle{theo}
\newmdtheoremenv[% settings
backgroundcolor=TealBlue,
linecolor=MidnightBlue,
linewidth=2pt,
nobreak=true,
innerleftmargin=5pt,
innerrightmargin=5pt,
topline=false,
bottomline=false,
rightline=false,
leftline=true]{theorem}{Theorem}[section]

\newtheoremstyle{lem}%                % Name
  {0pt}%                                     % Space above
  {2pt}%                                     % Space below
  {}%                                     % Body font
  {}%                                     % Indent amount
  {\color{cxcblue}\sffamily\bfseries}%                            % Theorem head font
  {}%                                    % Punctuation after theorem head
  {\newline}%                                    % Space after theorem head, ' ', or \newline
  {\thmname{#1} \thmnumber{#2} \thmnote{(#3)}}%                                     % Theorem head spec (can be left empty, meaning `normal')
\theoremstyle{lem}
\newmdtheoremenv[% settings
backgroundcolor=cxclightblue,
linecolor=cxcblue,
linewidth=2pt,
nobreak=true,
innerleftmargin=5pt,
innerrightmargin=5pt,
topline=false,
bottomline=false,
rightline=false,
leftline=true]{lemma}{Lemma}[section]

\newtheoremstyle{exam}%                % Name
  {0pt}%                                     % Space above
  {2pt}%                                     % Space below
  {}%                                     % Body font
  {}%                                     % Indent amount
  {\color{dred}\sffamily\bfseries}%                            % Theorem head font
  {}%                                    % Punctuation after theorem head
  {\newline}%                                    % Space after theorem head, ' ', or \newline
  {\thmname{#1} \thmnumber{#2} \thmnote{(#3)}}%                                     % Theorem head spec (can be left empty, meaning `normal')
\theoremstyle{exam}
\newmdtheoremenv[% settings
backgroundcolor=lred,
linecolor=dred,
linewidth=2pt,
nobreak=true,
innerleftmargin=5pt,
innerrightmargin=5pt,
topline=false,
bottomline=false,
rightline=false,
leftline=true]{example}{Example}[section]
\newtheoremstyle{fact}%                % Name
  {0pt}%                                     % Space above
  {2pt}%                                     % Space below
  {}%                                     % Body font
  {}%                                     % Indent amount
  {\color{porange}\sffamily\bfseries}%                            % Theorem head font
  { ---}%                                    % Punctuation after theorem head
  {3mm}%                                    % Space after theorem head, ' ', or \newline
  {\thmname{#1} \thmnumber{#2} \thmnote{(#3)}}%                                     % Theorem head spec (can be left empty, meaning `normal')
\theoremstyle{fact}
\newmdtheoremenv[% settings
backgroundcolor=plightorange,
linecolor=porange,
linewidth=2pt,
nobreak=true,
innerleftmargin=5pt,
innerrightmargin=5pt,
topline=false,
bottomline=false,
rightline=false,
leftline=true]{fact}{Fact}[section]
\newtheoremstyle{solution}
  {0pt}
  {0pt}
  {}
  {}
  {\color{black}\bfseries}
  {:}
  {1.5mm}
  {\thmname{#1}\thmnote{ #3}}
\theoremstyle{solution}
\newmdtheoremenv[
backgroundcolor=white,
nobreak=true,
innertopmargin=1pt,
innerleftmargin=3pt,
innerrightmargin=7pt,
linecolor=black,
linewidth=3pt,
topline=false,
bottomline=false,
rightline=false,
leftline=false]{soln}{Solution}

\renewcommand{\thesoln}{\unskip}

\def\endsoln{\hfill$\blacksquare$}

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
leftline=true]{pro}{Proof}

\renewcommand{\thepro}{\unskip}

\newcommand{\vocab}[1]{\textbf{\color{MidnightBlue} #1}}
\usepackage[colorlinks=true]{hyperref}
\hypersetup{urlcolor=dred,linkcolor=cxcblue,citecolor=cxcpurple}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrartcl}}
\ProcessOptions\relax
