\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cover}

\LoadClass[12pt]{article}
\pagestyle{empty}

\RequirePackage[
  letterpaper,
  margin = 1in
]{geometry}
%\setlength{\parindent}{0pt}

% Use this even if you are writing in English
% Helps with the hyphenation
\RequirePackage[USenglish]{babel}
% 8-bit font encoding
\RequirePackage[T1]{fontenc}
% non-ascii chars in the src file
\RequirePackage[utf8]{inputenc}
% Style \title, \section, etc..
\RequirePackage{titlesec}
% Change font
\RequirePackage[oldstyle,proportional]{ETbb}
% For fancy icons
\RequirePackage{fontawesome5}
\RequirePackage[bookmarks, colorlinks]{hyperref}
\RequirePackage[usenames,dvipsnames]{color}

\RequirePackage{ragged2e}

\definecolor{uvaOrange}{RGB}{229, 114, 0}

\hypersetup{%
  urlcolor=uvaOrange,
  pdfauthor={Deebakkarthi Chinnasame Rani},
  pdftitle={Deebakkarthi Chinnasame Rani: Cover Letter},
  pdfproducer={}
}

\newcommand*{\phone}[1]{\gdef\@phone{#1}}
\newcommand*{\@phone}{}%

\newcommand*{\email}[1]{\gdef\@email{#1}}
\newcommand*{\@email}{}%


\renewcommand{\maketitle}{
  \begin{center}
    {
      \Huge
      \textsc{
        \@author
      }
    }
  \end{center}

  \begin{center}
    \footnotesize
    \faPhone* \href{tel:\@phone}{\texttt{\@phone}}\quad
    \faEnvelope \space \href{mailto:\@email}{\texttt{\@email}}\quad
  \end{center}
}

\newcommand{\opening}[1]{
  \raggedright
  {
  \large
  \textbf{#1}
}
  \par
  \vspace{10pt}
  }
