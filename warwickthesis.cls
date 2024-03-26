% Made by Anja Beck, built from the TU Dortmund thesis template
\ProvidesClass{warwickthesis}[wrapper for scrbook for theses at Warwick]

% All other Options go to KOMA-Script
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrbook}}
\ProcessOptions\relax

\LoadClass[
  headsepline,            % line  between header and text body
  %bibliography=totoc,     % bibliography as unnumbered chapter in toc
  bibliography=nottotoc,     % bibliography as unnumbered chapter in toc
  numbers=noenddot,       % no dot after figure/table number
  captions=tableheading,  % correct spacing for table headings
  titlepage=firstiscover, % symmetrical margins on titlepage
  headings=normal         % size of chapter headings slightly smaller
]{scrbook}

\RequirePackage{caption}
\RequirePackage{subcaption}

\RequirePackage{scrlayer-scrpage}
\pagestyle{scrheadings}


\KOMAoption{headsepline}{0.5pt}
\addtokomafont{title}{\color{brandcolour}}         % title on titlepage
\addtokomafont{chapter}{\color{maincolour}}        % headlines of the chapters, sections etc. 
\addtokomafont{section}{\color{maincolour}}        % headlines of the section, sections etc. 
\addtokomafont{pagenumber}{\color{maincolour}}     % page number in the footer
\addtokomafont{chapterentry}{\color{maincolour}}   % chapters in the table of contents
\setkomafont{headsepline}{\color{maincolour}}      % line between header and text body
\DeclareCaptionFont{Wcolor}{\color{maincolour}}
\captionsetup{%
          labelfont={bf,Wcolor},     % bold label in tu colour
          format=plain,               % no indentation under the label
          width=0.9\textwidth,        % slightly smaller width than text
          font=small,                 % font slightly smaller than text
        }

\usepackage{quotchap}
\colorlet{chaptergrey}{maincolour}


% store the title in \thetitle, so one can access it in the document
\let\oldtitle\title%
\renewcommand{\title}[1]{\oldtitle{#1}\newcommand{\thetitle}{#1}}

% equation numbers of form chapter.equationnumber
\RequirePackage{amsmath}%
\renewcommand{\theequation}{\thechapter{}.\arabic{equation}}%
\numberwithin{equation}{chapter}%

\newcommand{\appendixpagenumbering}{
    \break
    \pagenumbering{arabic}
    \renewcommand{\thepage}{\thechapter.\arabic{page}}%\thesection
}
\newcommand{\backpagenumbering}{
    \break
    \pagenumbering{roman}
    \renewcommand{\thepage}{\roman{page}}%\thesection
}