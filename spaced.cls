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
\definecolor{choosegreen}{RGB}{33, 148, 63} %green
\definecolor{chooselightgreen}{RGB}{232, 255, 238} %light green
\definecolor{chooseblue}{RGB}{16, 51, 158} %blue
\definecolor{chooselightblue}{RGB}{227, 243, 255} %light blue
\definecolor{sectionblue}{RGB}{66, 135, 245} %section blue
\definecolor{choosered}{RGB}{217, 15, 15} %red
\definecolor{chooselightred}{RGB}{255, 235, 235} %light red
\definecolor{choosepurple}{RGB}{155, 50, 168} %dark purple
\definecolor{chooselightpurple}{RGB}{253, 237, 255} %light purple
\definecolor{chooseorange}{RGB}{232, 105, 43} %orange
\definecolor{chooselightorange}{RGB}{255, 249, 242} %light orange
\definecolor{MidnightBlue}{HTML}{191970} %light orange
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
%MARGINS!
\RequirePackage[letterpaper,top=0.7in,bottom=1in,left=0.5in,right=0.5in]{geometry}
%theorem styles
\newtheoremstyle{choosegreen}%                % Name
  {0pt}%                                     % Space above
  {2pt}%                                     % Space below
  {}%                                     % Body font
  {}%                                     % Indent amount
  {\color{choosegreen}\sffamily\bfseries}%                            % Theorem head font
  {}%                                    % Punctuation after theorem head
  {\newline}%                                    % Space after theorem head, ' ', or \newline
  {\thmnote{#3}}%                                     % Theorem head spec (can be left empty, meaning `normal')
\newtheoremstyle{chooseblue}%                % Name
  {0pt}%                                     % Space above
  {2pt}%                                     % Space below
  {}%                                     % Body font
  {}%                                     % Indent amount
  {\color{chooseblue}\sffamily\bfseries}%                            % Theorem head font
  {}%                                    % Punctuation after theorem head
  {\newline}%                                    % Space after theorem head, ' ', or \newline
  {\thmnote{#3}}%                                     % Theorem head spec (can be left empty, meaning `normal')
\newtheoremstyle{choosered}%                % Name
  {0pt}%                                     % Space above
  {2pt}%                                     % Space below
  {}%                                     % Body font
  {}%                                     % Indent amount
  {\color{choosered}\sffamily\bfseries}%                            % Theorem head font
  {}%                                    % Punctuation after theorem head
  {\newline}%                                    % Space after theorem head, ' ', or \newline
  {\thmnote{#3}}%                                     % Theorem head spec (can be left empty, meaning `normal')
\newtheoremstyle{choosepurple}%                % Name
  {0pt}%                                     % Space above
  {2pt}%                                     % Space below
  {}%                                     % Body font
  {}%                                     % Indent amount
  {\color{choosepurple}\sffamily\bfseries}%                            % Theorem head font
  {}%                                    % Punctuation after theorem head
  {\newline}%                                    % Space after theorem head, ' ', or \newline
  {\thmnote{#3}}%                                     % Theorem head spec (can be left empty, meaning `normal')
%theorem boxes
\newtheoremstyle{chooseorange}%                % Name
  {0pt}%                                     % Space above
  {2pt}%                                     % Space below
  {}%                                     % Body font
  {}%                                     % Indent amount
  {\color{chooseorange}\sffamily\bfseries}%                            % Theorem head font
  {}%                                    % Punctuation after theorem head
  {\newline}%                                    % Space after theorem head, ' ', or \newline
  {\thmnote{#3}}%                                     % Theorem head spec (can be left empty, meaning `normal')
 \newtheoremstyle{solution}
 {0pt}
 {0pt}
 {}
 {}
 {\color{black}\sffamily\bfseries}
 {:}
 {1.5mm}
 {\thmname{#1}\thmnote{ #3}}
%theorem boxes
\theoremstyle{choosegreen}
\newmdtheoremenv[% settings
backgroundcolor=chooselightgreen,
linecolor=choosegreen,
linewidth=1pt,
nobreak=true,
innerleftmargin=5pt,
innerrightmargin=5pt,
topline=true,
bottomline=true,
rightline=true,
leftline=true,
innertopmargin=0.5em,
innerbottommargin=0.5em]{greenbox}{Greenbox}

\theoremstyle{chooseblue}
\newmdtheoremenv[% settings
backgroundcolor=chooselightblue,
linecolor=chooseblue,
linewidth=1pt,
nobreak=true,
innerleftmargin=5pt,
innerrightmargin=5pt,
topline=true,
bottomline=true,
rightline=true,
leftline=true,
innertopmargin=0.5em,
innerbottommargin=0.5em]{bluebox}{Bluebox}

\theoremstyle{choosered}
\newmdtheoremenv[% settings
backgroundcolor=chooselightred,
linecolor=choosered,
linewidth=1pt,
nobreak=true,
innerleftmargin=5pt,
innerrightmargin=5pt,
topline=true,
bottomline=true,
rightline=true,
leftline=true,
innertopmargin=0.5em,
innerbottommargin=0.5em]{redbox}{Redbox}

\theoremstyle{choosepurple}
\newmdtheoremenv[% settings
backgroundcolor=chooselightpurple,
linecolor=choosepurple,
linewidth=1pt,
nobreak=true,
innerleftmargin=5pt,
innerrightmargin=5pt,
topline=true,
bottomline=true,
rightline=true,
leftline=true,
innertopmargin=0.5em,
innerbottommargin=0.5em]{purplebox}{Purplebox}

\theoremstyle{chooseorange}
\newmdtheoremenv[% settings
backgroundcolor=chooselightorange,
linecolor=chooseorange,
linewidth=1pt,
nobreak=true,
innerleftmargin=5pt,
innerrightmargin=5pt,
topline=true,
bottomline=true,
rightline=true,
leftline=true,
innertopmargin=0.5em,
innerbottommargin=0.5em]{orangebox}{Orangebox}

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
leftline=true]{soln}{Solution}

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

\def\endpro{\hfill$\blacksquare$}
%dislike indent
\setlength\parindent{0pt}
\usepackage[colorlinks=true]{hyperref}
\hypersetup{urlcolor=choosered,linkcolor=chooseblue,citecolor=choosegreen}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrreprt}}
\ProcessOptions\relax
