\ProvidesClass{resume}[08/20/2021]
\LoadClass[letterpaper,10.5pt]{article}

\RequirePackage[margin=0.5in]{geometry}
\RequirePackage[fixed]{fontawesome5}
\usepackage{array} % Used for boldface
\usepackage[parfill]{parskip} % Remove paragraph indentation
\usepackage[T1]{fontenc}
\usepackage{ifthen}
\renewcommand{\familydefault}{\sfdefault}
\pagestyle{empty}



\usepackage{hyperref} % Used for hyperlinks
\hypersetup{
    colorlinks=true,
    linkcolor=blue,
    filecolor=magenta,      
    urlcolor=cyan,
}

%-------------
%   HEADER
%-------------
\def \name#1{\def\@name{#1}} % Defines the \name command to set name
\def\namesize{\LARGE}

\def \printname {
  \begingroup
    \centerline{
    \hfill{\MakeUppercase{\namesize\bf\@name}}\hfill}
  \endgroup
}

\let\ori@document=\document
\renewcommand{\document}{
  \ori@document  % Begin document
  \printname  % Print the name specified with \name
 }

%------------------------
%	SECTION FORMATTING
%------------------------
\def \sectionlineskip{\smallskip}
\def \sectionskip{\medskip}
\def \company{\bf}

% Defines the rSection environment for the large sections within the CV
\newenvironment{rSection}[1]{ % 1 input argument - section name
  \sectionskip
  \MakeUppercase{\bf #1} % Section title
  \sectionlineskip
  \hrule % Horizontal line
  \begin{list}{}{ % List for each individual item in the section
    \setlength{\leftmargin}{0em} % Margin within the section
  }

  \item[]

}{
  \end{list}
}




