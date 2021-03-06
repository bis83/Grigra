\NeedsTeXFormat{pLaTeX2e}
\RequirePackage{plext}
\RequirePackage{personal}
\ProvidesClass{AIcover}[2005/12/16 v1.3]
\LoadClass[12pt]{jarticle}
%
%
% �C�_, ���_���ʉ��̂��߂̎��ʎq
\newif\ifMorB
%
\DeclareOption{bachelor}{\MorBfalse}	% default
\DeclareOption{master}{\MorBtrue}
%
%
\ExecuteOptions{bachelor}
\ProcessOptions\relax
%
%
%
\setlength{\oddsidemargin}{-8mm}
\setlength{\evensidemargin}{-5.8mm}
\setlength{\topmargin}{0mm}
\setlength{\headheight}{0pc}
\setlength{\headsep}{0pc}
\setlength{\footskip}{2pc}
\setlength{\textheight}{63pc}	%%64pc
%\setlength{\textheight}{250mm}
\setlength{\textwidth}{42pc}
\setlength{\columnsep}{1pc}
\setlength{\columnseprule}{0pt}
%% \oddsidemargin=0mm
%% \topmargin=0mm
\pagestyle{empty}
%
\newcommand{\makeCoverPageI}{%
\vspace*{7mm}
\begin{center}
\setlength{\unitlength}{1mm}
\begin{picture}(134,200)
\put(22, 54){\dashbox{0.6}(90,0){}}
\put(22, 37){\dashbox{0.6}(90,0){}}
\put(22,210){\makebox(90,12){\LARGE%
\ifMorB{�C \ �m \ �_ \ ��}%
  \else{�� \ �� \ �_ \ ��}%
\fi%
}}
\put( 0,189){\makebox(20,5){�_�����}}
\put(22,118){\makebox(20,5){�w������}}
\put(22, 58){\makebox(20,5){\ifMorB{�C��}\else{����}\fi{}�N�x}}
\put(22, 41){\makebox(20,5){�w���ԍ�}}
\put(22, 25){\makebox(13,8){����}}
\put( 0, 76){\makebox(134,8){\Large
\ifMorB{��B�H�Ƒ�w��w�@���H�w�{���Ȋw��U}
  \else{��B�H�Ƒ�w���H�w���m�\���H�w��}
\fi%
}}
\put( 0,143){\dashbox{0.6}(134,43){}}
\put(22, 94){\dashbox{0.6}(90,20){}}
\put(22,  0){\dashbox{0.6}(90,23){}}
%
%
\put(0,143){\makebox(134,43){\large\shortstack{\ThesisTitle}}}
%							% �_�����
\put(22,94){\makebox(90,20){\large \SupervisorData}}	% �w������
\put(22, 0){\makebox(90,23){\large \StudentName}}	% ����
\put(22,58){\makebox(90, 5){\large \YearofGrad}}	% ���ƔN�x
\put(22,41){\makebox(90, 5){\large \StudentIDno}}	% �w���ԍ�
%
%
\end{picture}
\end{center}}
%
%
%
\newcommand{\makeCoverPageII}{%
\begin{center}{\LARGE%
\ifMorB{�C \ �m \ �_ \ ��}
  \else{�� \ �� \ �_ \ ��}
\fi%
}\end{center}
\begin{center}
\parbox{0mm}{\rule{0mm}{40mm}}
\mbox{{\Large\shortstack{\ThesisTitle}}}	% �_�����
\end{center}
\vspace{15mm}
\begin{center}
\makebox[0mm][r]{\large �w������:\hspace{35mm}}
\makebox[0mm]{\Large \SupervisorData}		% �w������
\end{center}
\vspace{30mm}
\begin{center}{\Large
\ifMorB{��B�H�Ƒ�w��w�@ \\ ���H�w�{ ���Ȋw��U}
  \else{��B�H�Ƒ�w���H�w�� \\ �m�\���H�w��}
\fi%
}\end{center}
\vspace{15mm}
\begin{center}
{\large \YearofGrad} �N�x
\end{center}
\vspace{15mm}
\begin{center}
{\Large \StudentName}				% �w������
\end{center}
}
%
%
%
\newcommand{\makeSpine}{%
\begin{flushleft}
\setlength{\unitlength}{1mm}
\begin{picture}(13,246)
\thicklines
\put(0,  0){\line(1,0){13}}
\put(0, 56){\line(1,0){13}}
\put(0, 64){\line(1,0){13}}
\put(0, 80){\line(1,0){13}}
\put(0, 88){\line(1,0){13}}
\put(0,238){\line(1,0){13}}
\put(0,246){\line(1,0){13}}
\put(0,  0){\line(0,1){246}}
\put(13, 0){\line(0,1){246}}
\put(0,238){\makebox(13,8){���}}
\put(0, 80){\makebox(13,8){�N�x}}
\put(0, 56){\makebox(13,8){����}}
%
% ��ڂ̕ύX
%
\put(0, 88){\makebox(13,150)
%%%%% 1�s�p
%% {\Large \parbox<t>{20zw}{\\input{title}}}}
%%%%% 2�s�p
{\large \shortstack{\parbox<t>{30zw}{\ThesisTitle}}}}
%
%
%
\put(0, 64){\makebox(13,16){\Large \YearofGrad}}
\put(0,  0){\makebox(13,56){\Large\shortstack{\parbox<t>{7zw}{\StudentName}}}}
\end{picture}
\end{flushleft}
}

%% end of AIcover.cls
