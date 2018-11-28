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
\ProvidesClass{wfrp-long}[2018/10/14 Class for writing WFRP adventures/material]

\LoadClass[a4paper,twocolumn]{report}

\RequirePackage{baskervald}
\RequirePackage{yfonts}
\RequirePackage[T1]{fontenc}
\RequirePackage{wfrp}

\setlength\parindent{0pt}
\setlength\parskip{10pt plus6pt minus6pt}

\RequirePackage[explicit]{titlesec}

\titleformat{\chapter}[block]
    {\bfseries\centering\fontsize{28pt}{33.6pt}\selectfont}{\scshape\Large Chapter \thechapter\\}{0pt}{\uppercase{#1}}

\titleformat{\section}
    {\bfseries\fontsize{15pt}{18pt}\selectfont}{}{0pt}{\uppercase{#1}}[{\titlerule[1pt]}]
\titlespacing{\section}{0pt}{10pt}{0pt}

\titleformat{\subsection}
    {\bfseries\fontsize{15pt}{18pt}\selectfont}{}{0pt}{\scshape #1}
\titlespacing{\subsection}{0pt}{10pt}{0pt}

\titleformat{\subsubsection}
    {\bfseries\fontsize{8.5pt}{10.2pt}\selectfont}{}{0pt}{#1}
\titlespacing{\subsubsection}{0pt}{10pt}{0pt}

\RequirePackage[top=2.3cm,bottom=2cm,inner=1.5cm,outer=2.5cm]{geometry}
\setlength\columnsep{0.5cm}
