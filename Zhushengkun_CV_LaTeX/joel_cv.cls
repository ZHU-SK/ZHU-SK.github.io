\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{joel_cv}[2015/07/28 CV class by Joel]

\LoadClass[11pt,letterpaper]{article} % Font size and paper type

\usepackage{enumitem}
\usepackage{parskip}
\usepackage{url}
\usepackage[left=0.75in,top=0.6in,right=0.75in,bottom=0.6in]{geometry}
\usepackage{bold-extra}
\usepackage[UTF8]{ctex}

\newcommand{\printName}[1]{{\huge \textsc{#1}}\\\vspace{0.5em}}
\newcommand{\printPhone}[1]{{\em Phone}: #1\\}
\newcommand{\printEmail}[1]{{\em Email}: #1\\}
\newcommand{\printWebsite}[1]{{\em Website}: \url{#1}\\}
\newcommand{\printAddress}[1]{{\em Address}: #1\\}
\newcommand{\sectionTitle}[1]{\vspace{1em}\textbf{\Large \textsc{#1}}\vspace{0.5em}\hrule}

\newenvironment{cvHeader}{\begin{center}}{\end{center}}
\newenvironment{sectionItemize}[1]{
	\begin{itemize}
	\renewcommand\labelitemi{#1}
	\itemsep=-0.5em
}{
	\end{itemize}
}

% #1: Title, #2: Interval
\newenvironment{sectionContentSimple}[2]{
	\hspace{1.2em} {\bf #1} \hfill {\em #2} \vspace{-0.5em}
	\begin{itemize}[leftmargin=1.5em]
		\renewcommand\labelitemi{}
		\itemsep=-0.5em
}{
	\end{itemize}
}

% #1: Title, #2: Interval, #3: subtitle
\newenvironment{sectionContentNormal}[3]{
	\hspace{1.2em} {\bf #1} \hfill {\em #2} \vspace{-0.5em}
	\begin{itemize}[leftmargin=1.5em] \item[] {\em #3} \end{itemize} \vspace{-0.5em}
	\begin{itemize}[leftmargin=1.5em]
		\renewcommand\labelitemi{}
		\itemsep=-0.5em
}{
	\end{itemize}
}

% #1: Title, #2: Interval, #3: subtitle
\newenvironment{sectionContentNaive}[1]{
	\begin{itemize}[leftmargin=1.5em]
		\renewcommand\labelitemi{}
		\itemsep=-0.5em
}{
	\end{itemize}
}