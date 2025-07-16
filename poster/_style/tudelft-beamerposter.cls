\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{_style/tudelft-beamerposter}[2023/11/17 v2022.0 TU Delft poster class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions*
\LoadClass{beamer}
\usepackage{ifluatex}

\usepackage[absolute,overlay]{textpos}
\setlength{\TPHorizModule}{\paperwidth}
\setlength{\TPVertModule}{\paperheight}
\usepackage{tikz}

\usepackage{mathtools}
%\usepackage{amsfonts}
%\usepackage{amsthm}
\usepackage{siunitx}
%\usepackage{MnSymbol,wasysym}
\usepackage{qrcode}

\usepackage{hyperref}
% \usepackage{cleveref}
\unless\ifluatex\RequirePackage[utf8]{inputenc}\fi

% BIB SETTINGS
\usepackage[
    backend=biber,
    giveninits=true,
    maxnames=30,
    maxcitenames=2,
    uniquename=init,
    url=false,
]{biblatex}
\setlength\bibitemsep{0.3ex} % space between entries in the reference list
\renewcommand{\bibfont}{\normalfont\scriptsize}

\usepackage{_style/tudelft-fonts}
\usepackage{_style/tudelft-colors}
\usepackage{_style/tudelft-poster}

\edef\namebold{\bfdefault}
\edef\namesansserif{\sfdefault}
\edef\nameit{\itdefault}

\usepackage{multicol}
\colorlet{primary}{tud primary}

\if@fourier
  \usefonttheme{serif}
  \let\robotoslab\bfseries
\fi

\setbeamerfont{structure}{series=\robotoslab}
\setbeamercolor{structure}{fg=primary}
\setbeamertemplate{navigation symbols}{}


\newcommand{\tudlogo}[1][]{\begin{tikzpicture}[even odd rule, x=1ex, y=1ex, baseline=0.088ex]
	\begin{scope}
	  \includegraphics[height=1.939ex]{ifgi};
	\end{scope}
	\begin{scope}[fill=#1]
	  \includegraphics[height=1.939ex]{ifgi};
	\end{scope}
  \end{tikzpicture}}


\usetikzlibrary{svg.path}
\newcommand{\tudflame}[1][]{%
\begin{tikzpicture} % units are points in svg path
  \fill[#1] svg "m 13.516025,-9.8306033 c -1.29,-0.41 -2.63,-0.08 -2.62,+1.65 0,+2.64 6.19,+4.85 7.05,+7.15 0.21,+0.57 0.23,+1.05 -0.05,+1.03 -0.2,-0.01 -0.04,-0.30 -0.48,-0.73 -2.56,-2.57 -6.86,-2.56 -10.16,-4.04 -2.16,-0.97 -8.5,-3.95 -7.04,-10.60 0.07,-0.32 0.26,-1.37 0.45,-1.37 0.22,-0 0.22,+0.63 0.22,+1.39 -0.05,+3.96 4.64,+5.06 6.17,+7.65 0.18,+0.31 0.5,+0.74 0.57,+0.54 0.04,-0.1 0.01,-0.24 -0.05,-0.52 -0.48,-2.13 -2.7,-3.49 -2.07,-5.01 0.82,-1.97 3.17,-0.5 3.9,+0.77 0.19,+0.35 0.3,+0.57 0.43,+0.53 0.1,-0.03 0.09,-0.43 0.03,-0.79 -0.39,-2.29 -0.91,-3.57 -2.59,-4.88 -0.54,-0.42 -1.38,-0.5 -1.27,-0.82 0.03,-0.08 0.39,-0.07 0.68,-0.04 4.46,+0.29 8.19,+5.54 9.18,+8.98 0.1,+0.24 0.13,+0.47 0.03,+0.55 -0.13,+0.1 -0.33,-0.13 -0.53,-0.31 -0.51,-0.46 -1.21,-0.93 -1.85,-1.13 z";
\end{tikzpicture}}


\newcommand{\grid}{%
  \begin{abstikz}[font=\small, opacity=0.5]
    \foreach \x in {0.005,0.01,...,1} {
      \draw[gray, very thin] (\x, 0) -- ++(0, 1);}
    \foreach \y in {0.01,0.02,...,1} {
      \draw[gray, very thin] (0, \y) -- ++(1, 0);}
    \foreach \x in {0.00001,0.05002,...,1} {
      \draw[thick] (\x, 0) -- ++(0, 1);
      \node[anchor=south west, rotate=90] at (\x\paperwidth-0.5ex, \paperheight-3.5ex) {\x};}
    \foreach \y in {0.00001,0.05002,...,1} {
      \draw[thick] (0, \y) -- ++(1, 0);
      \node[anchor=south west] at (\paperwidth-3.5ex, \y\paperheight-0.5ex) {\y};
      \node[anchor=south west] at (\paperwidth-3.5ex, \y\paperheight-0.5ex) {\y};}
  \end{abstikz}%
}
