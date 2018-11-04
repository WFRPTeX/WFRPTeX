% WFRPTeX---LaTeX class for producing WFRP content
% Copyright (C) 2018 Ian Knight
%
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
%
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <https://www.gnu.org/licenses/>.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wfrp}[2018/10/14 Class for writing WFRP adventures/material]

\LoadClass[11pt,a4paper,twocolumn]{report}

\RequirePackage{baskervald}
\RequirePackage{yfonts}
\RequirePackage[T1]{fontenc}

\RequirePackage{array}
\RequirePackage{booktabs}
\RequirePackage{mdframed}
\RequirePackage{xcolor}

\RequirePackage[explicit]{titlesec}

\titleformat{\chapter}[block]
    {\bfseries\centering\Huge}{\scshape\Large Chapter \thechapter\\}{0pt}{\uppercase{#1}}

\titleformat{\section}[block]
    {\bfseries\Large}{}{0pt}{\uppercase{#1}}[{\titlerule[1pt]}]

\titleformat{\subsection}[block]
    {\bfseries\Large}{}{0pt}{\scshape #1}

\titleformat{\subsubsection}[block]
    {\bfseries\large}{}{0pt}{#1}


\newenvironment{callout}
    {\begin{mdframed}[backgroundcolor=lightgray] \itshape}
    {\end{mdframed}}

\newenvironment{gmnote}[1]
    {\begin{mdframed}[backgroundcolor=lightgray] 
        \setlength\parindent{0pt}
        {\vspace{5pt} \centering {\footnotesize GM NOTE} \\ \Large \uppercase{#1} \vspace{10pt} \\}
    }
    {\end{mdframed}}

\newcommand{\statblock}[3]{
    \begin{figure}
    \raggedright
    \rule{\columnwidth}{1pt}

    {\bfseries \scshape \large #1}
    \vspace{0.125cm}

    {\setlength\tabcolsep{4.8pt}\footnotesize
        \begin{tabular*}{\columnwidth}{cccccccccccc}\toprule
        \textbf{M} & \textbf{WS} & \textbf{BS} & \textbf{S} & \textbf{T} &
            \textbf{I} & \textbf{Ag} & \textbf{Dex} & \textbf{Int} & \textbf{WP} &
            \textbf{Fel} & \textbf{W} \\ \midrule
        #2
        \\ \bottomrule
        \end{tabular*}
    }

    \textbf{Abilities:} #3
    \rule{\columnwidth}{1pt}
    \end{figure}
}

\newcommand{\statblockmagic}[4]{
    \begin{figure}
    \raggedright
    \rule{\columnwidth}{1pt}

    {\bfseries \scshape \large #1}
    \vspace{0.125cm}

    {\setlength\tabcolsep{4.8pt}\footnotesize
        \begin{tabular*}{\columnwidth}{cccccccccccc}\toprule
        \textbf{M} & \textbf{WS} & \textbf{BS} & \textbf{S} & \textbf{T} &
            \textbf{I} & \textbf{Ag} & \textbf{Dex} & \textbf{Int} & \textbf{WP} &
            \textbf{Fel} & \textbf{W} \\ \midrule
        #2
        \\ \bottomrule
        \end{tabular*}
    }

    \textbf{Abilities:} #3

    \textbf{Spells:} #4
    \rule{\columnwidth}{1pt}
    \end{figure}
}

\newcommand{\statblockreligious}[5]{
    \begin{figure}
    \raggedright
    \rule{\columnwidth}{1pt}

    {\bfseries \scshape \large #1}
    \vspace{0.125cm}

    {\setlength\tabcolsep{4.8pt}\footnotesize
        \begin{tabular*}{\columnwidth}{cccccccccccc}\toprule
        \textbf{M} & \textbf{WS} & \textbf{BS} & \textbf{S} & \textbf{T} &
            \textbf{I} & \textbf{Ag} & \textbf{Dex} & \textbf{Int} & \textbf{WP} &
            \textbf{Fel} & \textbf{W} \\ \midrule
        #2
        \\ \bottomrule
        \end{tabular*}
    }

    \textbf{Abilities:} #3

    \textbf{Blessings:} #4

    \textbf{Miracles:} #5
    \rule{\columnwidth}{1pt}
    \end{figure}
}

\newcommand{\statblockfull}[5] {
    \begin{figure}
    \raggedright
    \rule{\columnwidth}{1pt}
    {\bfseries \scshape \large #1}
    \vspace{0.125cm}

    {\setlength\tabcolsep{4.8pt}\footnotesize
        \begin{tabular*}{\columnwidth}{cccccccccccc}\toprule
        \textbf{M} & \textbf{WS} & \textbf{BS} & \textbf{S} & \textbf{T} &
            \textbf{I} & \textbf{Ag} & \textbf{Dex} & \textbf{Int} & \textbf{WP} &
            \textbf{Fel} & \textbf{W} \\ \midrule
        #2
        \\ \bottomrule
        \end{tabular*}
    }

    \textbf{Skills:} #3

    \textbf{Talents:} #4

    \textbf{Trappings:} #5
    \rule{\columnwidth}{1pt}
    \end{figure}
}

\newcommand{\statblockfullmagic}[6]{
    \begin{figure}
    \raggedright
    \rule{\columnwidth}{1pt}
    {\bfseries \scshape \large #1}
    \vspace{0.125cm}

    {\setlength\tabcolsep{4.8pt}\footnotesize
        \begin{tabular*}{\columnwidth}{cccccccccccc}\toprule
        \textbf{M} & \textbf{WS} & \textbf{BS} & \textbf{S} & \textbf{T} &
            \textbf{I} & \textbf{Ag} & \textbf{Dex} & \textbf{Int} & \textbf{WP} &
            \textbf{Fel} & \textbf{W} \\ \midrule
        #2
        \\ \bottomrule
        \end{tabular*}
    }

    \textbf{Skills:} #3

    \textbf{Talents:} #4

    \textbf{Spells:} #5

    \textbf{Trappings:} #6
    \rule{\columnwidth}{1pt}
    \end{figure}
}

\newcommand{\statblockfullreligious}[7]{
    \begin{figure}
    \raggedright
    \rule{\columnwidth}{1pt}
    {\bfseries \scshape \large #1}
    \vspace{0.125cm}

    {\setlength\tabcolsep{4.8pt}\footnotesize
        \begin{tabular*}{\columnwidth}{cccccccccccc}\toprule
        \textbf{M} & \textbf{WS} & \textbf{BS} & \textbf{S} & \textbf{T} &
            \textbf{I} & \textbf{Ag} & \textbf{Dex} & \textbf{Int} & \textbf{WP} &
            \textbf{Fel} & \textbf{W} \\ \midrule
        #2
        \\ \bottomrule
        \end{tabular*}
    }

    \textbf{Skills:} #3

    \textbf{Talents:} #4

    \textbf{Blessings:} #5

    \textbf{Miracles:} #6

    \textbf{Trappings:} #7
    \rule{\columnwidth}{1pt}
    \end{figure}
}

\RequirePackage[left=0.5in,right=0.5in,top=1in,bottom=1in]{geometry}
\setlength\columnsep{2\columnsep}
