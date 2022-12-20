\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis-lntu}
\LoadClass[fontset=none]{ctexbook}
\ctexset{fontset=windows} %指定字体库为windows
\RequirePackage[a4paper,left=2.5cm, right=2cm, top=2.5cm, bottom=2cm]{geometry}
\RequirePackage{array}
\RequirePackage{multirow}
\RequirePackage{tocbibind} 
\RequirePackage{lscape}
\RequirePackage{longtable}
\RequirePackage{amsthm}
\RequirePackage{xeCJK}
\RequirePackage{setspace}
\RequirePackage{fontspec}
\usepackage{ctexsize,type1cm}
\setmainfont{Times New Roman}
\newcommand{\tm}{\fontspec{Times New Roman}}
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
\newtoks\UDC%中图分类号
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
\newcommand{\makecover}{
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

        {\tm{\the \titleEn }} 
        \end{spacing}
\end{center}
\vspace{3.5cm}
\begin{center}
    \zihao{-3}
    \begin{tabular}{rl}
    
                                                \makebox[4em][s]{\fontsize{15pt}{1.5}作者姓名}    \hspace{0.2cm}	\dlmu[5.5cm]{\the \authorCN} \\
                                                \makebox[4em][s]{\fontsize{15pt}{1.5}导师姓名}	\hspace{0.2cm}		\dlmu[5.5cm]{\the \advisor}      \\
                                                \makebox[4em][s]{\fontsize{15pt}{1.5}工程领域}	\hspace{0.2cm}	\dlmu[5.5cm]{\the \major}   \\
                                                \makebox[4em][s]{\fontsize{15pt}{1.5}研究方向}	\hspace{0.2cm}	\dlmu[5.5cm]{\the \direction}   \\
                                                \makebox[4em][s]{\fontsize{15pt}{1.5}完成日期}	\hspace{0.2cm}	\dlmu[5.5cm]{\the \CompletionDate}   \\ 
                                                
    \end{tabular}
    
\end{center}
\vspace{3.5cm}
\begin{center}
\fontsize{18pt}{1} \lishu 辽宁工程技术大学

\fontsize{14pt}{1.5} {\tm{Liaoning Technical University}} 
\end{center}

\begin{table}[]
    \centering
    \begin{tabular}{|c|}
    \hline
    \begin{tabular}[c]{@{}c@{}}\\ \hlf 基\\ \hlf 于\\ \hlf 低\\ \hlf 秩\\ \hlf 松\\ \hlf 弛\\ \hlf 的\\ \hlf 遥\\ \hlf 感\\ \hlf 图\\ \hlf 像\\ \hlf 融\\ \hlf 合\\ \hlf 方\\ \hlf 法\\ \hlf 的\\ \hlf 研\\ \hlf   究 \\ \\        \\ \hlf 霍\\ \hlf 帅\\ \\ \\ \hlf 辽\\ \hlf 宁\\ \hlf 工\\ \hlf 程\\ \hlf 技\\ \hlf 术\\ \hlf 大\\ \hlf 学 \\ \end{tabular} \\ \hline
    \end{tabular}
    \end{table}
    \newpage
    \begin{center}
    \begin{spacing}{1}%段落行距设置             
        \zihao{-2}
        \heiti 
        关于学位论文使用授权的说明
        \end{spacing}
    \end{center}

    \fontsize{14pt}{21pt}{\kaishu{本学位论文作者及指导教师完全了解} \underline{ {\bfseries \kaishu 辽宁工程技术大学}} \kaishu{有关保留、使用学位论文的规定，同意} \underline{{\bfseries \kaishu 辽宁工程技术大学}} \kaishu{保留并向国家有关部门或机构送交论文的复印件和磁盘，允许论文被查阅和借阅，学校可以将学位论文的全部或部分内容编入有关数据库进行检索，可以采用影印、缩印或扫描等复制手段保存、汇编本学位论文。}

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

    {\tm{\the \titleEn }} 
    
    \end{spacing}
    \vspace{4cm}

    \begin{tabular}{rl}
    
        \makebox[4em][s]{\fontsize{14pt}{1.5}作者姓名} \dlmu[4.5cm]{\the \authorCN}&\hspace{1cm} \makebox[4em][s]{\fontsize{14pt}{1.5}学号} \dlmu[4.5cm]{\the \serialnumber}\\
        \makebox[4em][s]{\fontsize{15pt}{1.5}导师姓名}			\dlmu[4.5cm]{\the \advisor}  &\hspace{1cm}  \makebox[5em][s]{\fontsize{14pt}{1.5}副导师姓名} \dlmu[4.5cm] {} \\
        \makebox[4em][s]{\fontsize{15pt}{1.5}申请学位}			\dlmu[4.5cm]{\the \academicdegree}  &\hspace{1cm}  \makebox[4em][s]{\fontsize{14pt}{1.5}培养单位} \dlmu[4.5cm]{\the \DGI}  \\
        \makebox[4em][s]{\fontsize{15pt}{1.5}工程领域}			\dlmu[4.5cm]{\the \UDC}  &\hspace{1cm}  \makebox[4em][s]{\fontsize{14pt}{1.5}研究方向} \dlmu[4.5cm]{\the \direction}  \\
                                                    
\end{tabular}
    
  \end{center}
  \newpage
}


