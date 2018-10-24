\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wfrp}[2018/10/14 Class for writing WFRP adventures/material]

\LoadClass[11pt,a4paper,twocolumn]{report}

\RequirePackage[T1]{fontenc}
\RequirePackage{kerkis}

\RequirePackage{booktabs}

\newcommand{\statblockbegin}{
\begin{tabular*}{\columnwidth}{cccccccccccc}\toprule
\textbf{M} & \textbf{WS} & \textbf{BS} & \textbf{S} & \textbf{T} &
    \textbf{I} & \textbf{Ag} & \textbf{Dex} & \textbf{Int} & \textbf{WP} &
    \textbf{Fel} & \textbf{W} \\ \midrule
}

\newcommand{\statblockend}{
    \\ \bottomrule
    \end{tabular*}
}

\newcommand{\statblock}[3]{
    \begin{figure}
    \rule{\columnwidth}{1pt}

    {\bfseries \scshape \large #1}
    \vspace{0.125cm}

    {\footnotesize \statblockbegin{} #2 \statblockend{}}

    \textbf{Abilities:} #3
    \rule{\columnwidth}{1pt}
    \end{figure}
}

\newcommand{\statblockfull}[5] {
    \begin{figure}
    \rule{\columnwidth}{1pt}
    {\bfseries \scshape \large #1}
    \vspace{0.125cm}

    {\footnotesize \statblockbegin{} #2 \statblockend{}}

    \textbf{Skills:} #3

    \textbf{Talents:} #4

    \textbf{Trappings:} #5
    \rule{\columnwidth}{1pt}
    \end{figure}
}

\RequirePackage[left=0.25in,right=0.25in,top=1in,bottom=1in]{geometry}
