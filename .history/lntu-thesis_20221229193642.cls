\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis-lntu}
\LoadClass[fontset=none, AutoFakeBold]{ctexbook}
\ctexset{fontset=windows} %指定字体库为windows
% xetex/xelatex 字体设定宏包
\ProvidesPackage{zhfontcfg}
\usepackage{fontspec,xunicode}
\defaultfontfeatures{Mapping=tex-text} %如果没有它，会有一些 tex 特殊字符无法正常使用，比如连字符。
% 中文断行
\XeTeXlinebreaklocale "zh"
\XeTeXlinebreakskip = 0pt plus 1pt minus 0.1pt

\RequirePackage[a4paper,left=2.5cm, right=2cm, top=2.5cm, bottom=2cm]{geometry}
\RequirePackage{array}
\RequirePackage{multirow}
\RequirePackage{tocbibind} 
\RequirePackage{lscape}
\RequirePackage{longtable}
\RequirePackage{amsthm}
\RequirePackage{titlesec}
\RequirePackage{float}
\RequirePackage{xeCJK}
\RequirePackage[heading=true]{ctex}%添加heading=true，使用中文版式
\setCJKmainfont[AutoFakeBold=2.5,ItalicFont={楷体}]{楷体}
\RequirePackage{setspace}
\RequirePackage{fontspec}
\RequirePackage{fancyhdr}
\pagestyle{plain}
\fancyfoot[C]{\thepage}
\RequirePackage{ctexsize,type1cm}
% 英文字体配置部分
\setmainfont{Times New Roman}%Times New Roman
% \setsansfont{Source Sans Pro}
% \setmonofont{Source Code Pro}
% 中文字体配置部分
\setCJKmainfont{宋体}%正文字体
\setCJKsansfont{黑体}%无衬线字体
\setCJKmonofont{楷体}%等宽字体
\setCJKfamilyfont{boldsong}{Source Han Serif SC Heavy}
\newCJKfontfamily\sonti{FZCuSong-B09S}[BoldFont=FZCuSong-B09S]

% \setmainfont{Times New Roman}
% \newcommand{\tm}{\fontspec{Times New Roman}}
\newcommand{\chinesespace}{\char"3000}
\newcommand{\ifchinesebook}[2]{
  \ifthenelse{\isundefined{\englishbook}}{#1}{#2}
}


\newcommand\dlmu[2][4cm]{\hskip1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip3pt}
\newcommand\hlf{\fontsize{15pt}{1} \heiti}
\newtoks\titleEn 		%英文标题
\newtoks\titleZh       %中文标题
\newtoks\authorCN   %作者
\newtoks\advisor%指导老师
\newtoks\major    %专业的英文
\newtoks\direction    %研究方向
\newtoks\CompletionDate%完成日期
\newtoks\CLCnumber%中图分类号
\newtoks\UDC%UDC
\newtoks\serialnumber %学号
\newtoks\DGI %培养单位
\newtoks\academicdegree%申请学位
% \newtoks\submitmonth%提交月份
% \newtoks\entitle		%英文标题
% \newtoks\entitletra     %英文多余一行

% \newtoks\submitdate   %提交日
% \newtoks\titleEn 		%英文标题
% \newtoks\titleZh       %中文标题

% \newtoks\majorZh    %专业的中文
% \newtoks\authorEn    %作者的拼写
% \newtoks\advisorEn		%指导老师的拼音
% \newtoks\titlefirst      %题目第一行
% \newtoks\titlesecond  %题目第二行
% \newtoks\majortotal   %年级加专业
% \newtoks\advisors	 %指导老师带职称
\newcommand{\makeoutercover}{
\thispagestyle{empty}
\begin{flushleft}
    \includegraphics[scale=0.8]{LOGO.png}
\end{flushleft}
\vspace{0.5cm}
\begin{center}
\fontsize{22pt}{1}\bfseries \kaishu   全日制硕士学位论文
\end{center}
\vspace{1.5cm}
\begin{center}
    % \fontsize{22pt}{22pt} \heiti \the \titleZh

    % \fontsize{22pt}{22pt} {\tm{\the \titleEn }} 
    \begin{spacing}{1}%段落行距设置
        \zihao{2}
        \heiti \the \titleZh

        {\textrm{\the \titleEn }} 
        \end{spacing}
\end{center}
\vspace{3.5cm}
\begin{center}
    \zihao{-3}
    \begin{tabular}{rl}
    
                                                \makebox[4em][s]{\fontsize{15pt}{1.5}作者姓名}    \hspace{0.2cm}	\dlmu[5.5cm]{\the \authorCN} \\
                                                \makebox[4em][s]{\fontsize{15pt}{1.5}导师姓名}	\hspace{0.2cm}		\dlmu[5.5cm]{\the \advisor}      \\
                                                \makebox[4em][s]{\fontsize{15pt}{1.5}学科专业}	\hspace{0.2cm}	\dlmu[5.5cm]{\the \major}   \\
                                                \makebox[4em][s]{\fontsize{15pt}{1.5}研究方向}	\hspace{0.2cm}	\dlmu[5.5cm]{\the \direction}   \\
                                                \makebox[4em][s]{\fontsize{15pt}{1.5}完成日期}	\hspace{0.2cm}	\dlmu[5.5cm]{\the \CompletionDate}   \\ 
                                                
    \end{tabular}
    
\end{center}
\vspace{3.5cm}
\begin{center}
\fontsize{18pt}{1} \lishu 辽宁工程技术大学

\fontsize{14pt}{1.5}  Liaoning Technical University
\end{center}
\newpage
}
\newcommand{\makespine}{

\thispagestyle{empty}
\begin{table}[H]
    \centering
    \begin{tabular}{|c|}
    \hline
    \begin{tabular}[c]{@{}c@{}}\\ \hlf 基\\ \hlf 于\\ \hlf 低\\ \hlf 秩\\ \hlf 松\\ \hlf 弛\\ \hlf 的\\ \hlf 遥\\ \hlf 感\\ \hlf 图\\ \hlf 像\\ \hlf 融\\ \hlf 合\\ \hlf 方\\ \hlf 法\\ \hlf 的\\ \hlf 研\\ \hlf   究 \\ \\        \\ \hlf 霍\\ \hlf 帅\\ \\ \\ \hlf 辽\\ \hlf 宁\\ \hlf 工\\ \hlf 程\\ \hlf 技\\ \hlf 术\\ \hlf 大\\ \hlf 学 \\ \end{tabular} \\ \hline
    \end{tabular}
    \end{table}
    \newpage
}
\newcommand{\makecopyrightpage}{
    \thispagestyle{empty}
    \begin{center}
    \begin{spacing}{1}%段落行距设置             
        \zihao{-2}
        \heiti 
        关于学位论文使用授权的说明
        \end{spacing}
    \end{center}

    \fontsize{14pt}{21pt}{\ttfamily 本学位论文作者及指导教师完全了解 \underline{辽宁工程技术大学} 有关保留、使用学位论文的规定，同意 \underline{ 辽宁工程技术大学} 保留并向国家有关部门或机构送交论文的复印件和磁盘，允许论文被查阅和借阅，学校可以将学位论文的全部或部分内容编入有关数据库进行检索，可以采用影印、缩印或扫描等复制手段保存、汇编本学位论文。

保密的学位论文在解密后应遵守此协议。 

\vspace{1.5cm}
\noindent 学位论文作者签名：\underline{\hspace{3cm}} ~~~~~~~~导师签名：\underline{\hspace{3cm}}}

\vspace{1cm}
\hspace{3cm} \the \CompletionDate \hspace{3cm} \the \CompletionDate
% \begin{spacing}{1.5}%段落行距设置
%     \zihao{4}
%     \kaishu
%     本学位论文作者及指导教师完全了解\underline{ {\bfseries \kaishu 辽宁工程技术大学}} 有关保留、使用学位论文的规定，同意 \underline{{\bfseries \kaishu 辽宁工程技术大学}} 保留并向国家有关部门或机构送交论文的复印件和磁盘，允许论文被查阅和借阅，学校可以将学位论文的全部或部分内容编入有关数据库进行检索，可以采用影印、缩印或扫描等复制手段保存、汇编本学位论文。

% 保密的学位论文在解密后应遵守此协议。 
% \bigskip

% \noindent 学位论文作者签名：\underline{\hspace{3cm}} ~~~~~~~~导师签名：\underline{\hspace{3cm}}
%     \end{spacing}
\newpage
}
\newcommand{\makeinnercover}{
\thispagestyle{empty}
\begin{center}
    \zihao{4}
    \begin{tabular}{rl}
    
                                                \makebox[5em][s]{\fontsize{14pt}{1.5}中图分类号} \dlmu[3.5cm]{\the \CLCnumber}&\hspace{3cm} \makebox[4em][s]{\fontsize{14pt}{1.5}学校代码} \dlmu[3.5cm]{10147}\\
                                                \makebox[3em][s]{\fontsize{15pt}{1.5}UDC}			\dlmu[3.5cm]{\the \UDC}  &\hspace{3cm}  \makebox[4em][s]{\fontsize{14pt}{1.5}密级} \dlmu[3.5cm]{公开}  \\
                                                                                            
    \end{tabular}
    

    \vspace{2cm}
\begin{spacing}{1}%段落行距设置
    \zihao{1}
    \lishu
    辽宁工程技术大学
    
    \end{spacing}


  \begin{spacing}{1}%段落行距设置
    \zihao{1}
    \bfseries \kaishu
    全日制硕士学位论文
    
    \end{spacing}
    \vspace{2cm}
  \begin{spacing}{1}%段落行距设置
    \zihao{2}
    \heiti
    \the \titleZh

    {\textrm{\the \titleEn }} 
    
    \end{spacing}
    \vspace{4cm}

    \begin{tabular}{rl}
    
        \makebox[4em][s]{\fontsize{14pt}{1.5}作者姓名} \dlmu[4.5cm]{\the \authorCN}&\hspace{1cm} \makebox[4em][s]{\fontsize{14pt}{1.5}学号} \dlmu[4.5cm]{\the \serialnumber}\\
        \makebox[4em][s]{\fontsize{15pt}{1.5}导师姓名}			\dlmu[4.5cm]{\the \advisor}  &\hspace{1cm}  \makebox[5em][s]{\fontsize{14pt}{1.5}副导师姓名} \dlmu[4.5cm] {} \\
        \makebox[4em][s]{\fontsize{15pt}{1.5}申请学位}			\dlmu[4.5cm]{\the \academicdegree}  &\hspace{1cm}  \makebox[4em][s]{\fontsize{14pt}{1.5}培养单位} \dlmu[4.5cm]{\the \DGI}  \\
        \makebox[4em][s]{\fontsize{15pt}{1.5}学科专业}			\dlmu[4.5cm]{\the \major}  &\hspace{1cm}  \makebox[4em][s]{\fontsize{14pt}{1.5}研究方向} \dlmu[4.5cm]{\the \direction}  \\
                                                    
\end{tabular}
    
  \end{center}
  \newpage
}
% \newenvironment{acknowledgements}{
%   \titleformat*{\section}{\heiti \bfseries \centering \LARGE}
%   \thispagestyle{empty}
%   % \setmainfont{KaiTi}
%   % \setCJKmainfont{KaiTi}
%   \ttfamily{}
%   \setlength{\baselineskip}{21pt}
%   \section*{致谢}
%   \addcontentsline{toc}{section}{Acknowledgements}
% }{\thispagestyle{empty}
% \clearpage}
\newcommand{\acknowledgements}{  \begin{center} \heiti \bfseries \centering \LARGE 致谢  \end{center} \par}

% \newcommand{\acknowledgements}{\setCJKfamilyfont{黑体}{致谢}\CJKfamily{acknowledgements}}

\pagenumbering{Roman}

\newenvironment{abstractCN}{
  \clearpage
  \thispagestyle{empty}
  \setcounter{page}{1}
  \titleformat*{\section}{\heiti \bfseries \centering \LARGE}
  \setmainfont{SimSun}
  \setlength{\baselineskip}{21pt}
  \section*{摘要}
  \addcontentsline{toc}{section}{摘要}
}{\clearpage}

\newenvironment{abstractEN}{
  \titleformat*{\section}{\heiti \bfseries \centering \LARGE}
    \setlength{\baselineskip}{21pt}
  \section*{Abstract}
  \addcontentsline{toc}{section}{Abstract}
}{\clearpage}

\newcommand{\keywordCN}{ \par \noindent \setlength{\baselineskip}{21pt}  \sonti{关键词：}  }

\newcommand{\keywordEN}{ \par \noindent \setlength{\baselineskip}{21pt}  \textbf{Keywords:}  }

% \usepackage{titletoc}
% \titlecontents{chapter}[1em]{\bfseries \vspace{1pt}}{\contentslabel{1em}}{\hspace*{-1em}}{~\titlerule*[0.6pc]{$.$}~\contentspage}
% \titlecontents{section}[3em]{\vspace{1pt}}{\contentslabel{1.5em}}{\hspace*{-4em}}{~\titlerule*[0.6pc]{$.$}~\contentspage}
% \titlecontents{subsection}[5em]{\vspace{1pt}}{\contentslabel{2.3em}}{\hspace*{-4em}}{~\titlerule*[0.6pc]{$.$}~\contentspage}
\newenvironment{Figurelist}{
  \titleformat*{\section}{\heiti \bfseries \centering \LARGE}
    \setlength{\baselineskip}{21pt}
  \section{图清单}
  \addcontentsline{toc}{section}{图清单}
}{\clearpage}
\newenvironment{Tablelist}{
  \titleformat*{\section}{\heiti \bfseries \centering \LARGE}
    \setlength{\baselineskip}{21pt}
  \section{表清单}
  \addcontentsline{toc}{section}{表清单}
}{\clearpage}
