\documentclass{article}
\author{Irfan Hudda,Ankush Sachdeva,Vijay Keswani}
\title{Online Judge}

\usepackage{listings}
\usepackage{color}
\usepackage{textcomp}
\usepackage[section]{placeins}
\usepackage{float}
\usepackage{fancyhdr}
\usepackage{hyperref}

\definecolor{listinggray}{gray}{0.9}
\definecolor{lbcolor}{rgb}{0.9,0.9,0.9}
\lstset{
	backgroundcolor=\color{lbcolor},
	tabsize=4,
	rulecolor=,
	basicstyle=\scriptsize,
           upquote=true,
           aboveskip={1.5\baselineskip},
           columns=fixed,
           showstringspaces=false,
           extendedchars=true,
           breaklines=true,
           prebreak = \raisebox{0ex}[0ex][0ex]{\ensuremath{\hookleftarrow}},
           frame=single,
	title=\lstname, 
           showtabs=false,
           showspaces=false,
           showstringspaces=false,
           identifierstyle=\ttfamily,
           keywordstyle=\color[rgb]{0,0,1},
           commentstyle=\color[rgb]{0.133,0.545,0.133},
           stringstyle=\color[rgb]{0.627,0.126,0.941},
}
\begin{document}
\pagestyle{fancy}
\maketitle
\tableofcontents
\section{Introduction}
	\subsection{Project Aim}
	To provide an online platform to host programming contests which is flexible, can support numerous languages like \emph{C C++ Pyton Java \ldots } and is also secure.
	\subsection{Prerequisites}
	The programming languages of our choice for this project are:
	\begin{itemize}
	\item \emph{PHP} for server-side scripting.
	\item \emph{JavaScript} for client-side scripting.
	\item \emph{HTML} and \emph{CSS} for designing web-pages.\footnote[1]{HTML is a markup language}
	\item \emph{MySQL} for DBMS. 
	\item \emph{C++} and Unix Shell for back-end of Online Judge.
	\end{itemize}
	Apart from above we made use of various libraries for \emph{C++} and \emph{Javascript}. 
	\subsection{Tools of trade}
	For this project we used following tools:
	\begin{itemize}
	\item PHP 5.3
	\item Apache 2.2
	\item MySQL 5.5
	\item chroot for UNIX
	\item GNU GCC 4.6
	\item GNU Emacs 23
	\end{itemize}
\section{Design}
	\subsection{Database}
	One of the key challenges of the project was to design an efficient database which would be concise, with low redundancy without sacrificing the speed and performance. After considering various possibilities we were able to come up with one of such designs. We have three predefined tables one for users one for contests and other for problems.


		\begin{lstlisting}[language=SQL,title={Table of Users}]
create table users(
    userID int not null auto_increment,
    username varchar(50) unique not null,
    password varchar(50) not null,
    firstname varchar(50) default null,
    lastname varchar(50) default null,
    college varchar(50) default null,
    rank int default 0,
    score int default 0,
    primary key(userID)
);
		\end{lstlisting}
		\begin{lstlisting}[language=SQL,title={Table of contests}]
create table contests(
    contestID int auto_increment,
    Name varchar(50),
    startTime datetime,
    endTime datetime,
    primary key(contestID)
);
		\end{lstlisting}
		\begin{lstlisting}[language=SQL,title={Table of problems}]
create table problems(
    contestID int not null,
    problemID int not null auto_increment primary key,
    visible bool,
    problemName varchar(50) not null,
    statement varchar(10000),
    timeLimit float,
    accepted int default 0,
    submissions int default 0,
    probvalue int default 0,
    score int default 0
);
		\end{lstlisting}

	We also have a separate table for each contests in-order to store scores of the participants. It was decided not to increase points for users who solve it after contests but the user can check if the code is correct or not even after the contest ends.
	
	
	\subsection{Website}
	\subsubsection{Layout}
	 It was decided to make our website two columned  with left column containing main matter and other column sidebar.Apart from that we have a header with a menu and also a footer.
		
		\begin{table}[H]
		\title{Layout of Website \newline}
		\centering
		\begin{tabular}{|p{6cm}|p{2cm}|}
			\hline
			\multicolumn{2}{|c|}{Header}\\
			\hline
			\multicolumn{2}{|c|}{Menu}\\
			\hline
			Main matter \newline \newline \newline & Side bar \newline \newline \newline \\
			\hline
			\multicolumn{2}{|c|}{Footer}\\
			\hline
		\end{tabular}
		\end{table}
	
	\subsubsection{Style}
	In order to concentrate on more important issues like designing database and back-end of judge and also its integration we decided to find a good style-sheet online and integrate it into our website.\footnote[1]{Style from \href{http://www.styleshout.com/}{here} }
	\section{Back-end}
	\subsection{PHP script}
		In this we describe how we integrated various features into our Online Judge.
		\subsubsection*{Contests page}
			It was straight forward to just query it from the contests table and print them into three groups
			\begin{itemize}
			\item Future contests
			\item Present contests
			\item Past contests
			\end{itemize}
			This part of source code shows how it was done.
			\begin{lstlisting}[language=PHP,title={Some part of the PHP code}]
 while($r= mysql_fetch_array($logged))
 {
	$d1 = new DateTime($r['startTime']);
	$current = new DateTime(date('Y-m-d H:i:s'));//yyyy-mm-dd hh:mm:ss
	if($d1>$current){
      		$fut=$fut."<tr><td><a href='contests.php?contestID=".$r['contestID']."'>".$r['Name']."</a></td><td>".date('jS F Y \a\t G:i', strtotime($r['startTime']))."</td><td>".date('jS F Y \a\t G:i', strtotime($r['endTime']))."</td></tr>";
      		$countf=1;
      		continue;
	}
	$d1 = new DateTime($r['endTime']); 
	if($d1>$current){
		//date_diff($d1, $current)->format('%a days %H hrs %i minutes');
		$cur=$cur."<tr><td><a href='contests.php?contestID=".$r['contestID']."'>".$r['Name']."</a></td><td>".date('jS F Y \a\t G:i', strtotime($r['startTime']))."</td><td>".date('jS F Y \a\t G:i', strtotime($r['endTime']))."</td></tr>";
		$countc=1;
		continue;
	}
	else{
		$past=$past."<tr><td><a href='contests.php?contestID=".$r['contestID']."'>".$r['Name']."</a></td><td>".date('jS F Y \a\t G:i', strtotime($r['startTime']))."</td><td>".date('jS F Y \a\t G:i', strtotime($r['endTime']))."</td></tr>";
	$countf=1;
	break;
	}    
}
			\end{lstlisting}
		\subsubsection*{Problems page}
		Creating this page was also straight forward it was just querying and displaying the result but there was one catch we were not to display the problems from future contests including all details like problem name time-limit memory-limit\ldots	
		
		Apart from that we also had to display a file-upload box and also the comments below the problem statement. 
		\subsubsection*{Register page}
		For this page we extensively used both JavaScript and PHP. We made use of jQuery JavaScript library in order attain consistent results over all major browsers.

		To make sure the users table remain as we wanted, we introduced several checks and also for the sake of clarity we decided limits on size for each entry in the table like the username must not exceed the size of 50 and it must also be unique for all users. In order to avoid any conflicts we introduced both pre and post submit checks. This was necessary because it is very elementary to disable the execution of JavaScript which could increase inconsistencies into the table had there not been any post submit check.
 
		There is another pit-fall when using SQL and that is SQL injection. Fortunately in PHP there is a special function to sanitize MySQL queries and that is \emph{ mysql\_real\_escape\_string } .
			\begin{lstlisting}[language=PHP]
$str=mysql_real_escape_string($input);
			\end{lstlisting}
		\subsubsection*{Rank page and Status page}
		These two pages were the easiest pages to create as the involved only a little more than querying and displaying. As was already mentioned in previous section we have a separate table for each contests so it becomes trivial to display the ranks both globally and also contest-wise. And we also have a table for submissions so same is the case with status page. 
		\subsubsection*{Comments}
		To integrate this feature we decided to use file instead of database table even though the later is a popular choice and has many advantages but we wanted to minimize the database queries to reduce the load on server and thereby increasing efficiency. We use PHP's inbuilt functions to accomplish this. We divided the script into two parts one which takes the input and other which displays previous comments.
		\subsubsection*{Blog page}
		Implementations of this feature is also inspired from the idea for comments but the difference is that for this feature we use both file and also the database. This is because we had to perform sorting operation on blog post which must be ordered by dates which is better performed by table.

		In PHP versions after 4.3 we have a useful feature of include which we repeatedly exploited in our to make it more concise.
			\begin{lstlisting}[language=PHP,title={Part of \emph{blog.php}}]
$fwrite=fopen("blog/complete/".$current_blog.".php","r");
$query="select blogName,time from blog where blogID=".$current_blog."";
$logged = mysql_query($query);
$logg = mysql_fetch_array($logged);
echo "<h2><strong>".$logg['blogName']."</strong></h2>";
if($fwrite==NULL) echo "<h4>Blog Not Found</h4>";
else{
    echo"<p><h5>".date('jS F Y \a\t G:i', strtotime($logg['time']))."</h5></p>";
    include('blog/complete/'.$current_blog.".php");
}
			\end{lstlisting} 
		\subsubsection*{Post file-submit}
		We have a file \emph{processfile.php} which takes care of all opertions to be performed after a file has been uploaded for evaluation.

		To create and debug this file was by far one of the most difficult part of the project. We call this script after a file has been submitted. There were a lot of things to do in this file first is to check if the problem is visible or not next is to check if the user has already had an accepted solution or not if yes then we were to be careful when adding to the score. Next we had to compile or check for any syntax error for interpreted languages. Then we were to call the Judge executable with proper arguments and run it for different test-cases. After this we had to see the \emph{diff} of the output file and sample output and confirm if the code is correct or wrong.
	 	\begin{lstlisting}[language=PHP,title={Part of \emph{processfile.php} for compiling}]
if(strcmp($ext,'cpp')==0)$cmd="g++ -pipe -O2 -lm -s -fomit-frame-pointer ";
elseif (strcmp($ext,'c')==0)$cmd="gcc -pipe -O2 -lm -s -fomit-frame-pointer ";
elseif (strcmp($ext,'java')==0)$cmd="javac ";
		\end{lstlisting} 
		\begin{lstlisting}[language=PHP,title={Part of \emph{processfile.php} for checking}]
exec("diff -w $dir $correctout",$output,$verdict);
		\end{lstlisting} 
		\subsubsection*{Admin Utilities}
		We have special kind of user account \emph{admin} which has access to various utilities. The list here is very short and it is acknowledged there can be many more possible apart from the ones given here.
		\begin{enumerate}
		\item Create contests.
		\item Create problems or add problems to contests.
		\item Create Blog posts.
		\end{enumerate}

	\subsection{Judge}
	We decided to write the judge in \emph{C++} and this proved to be a fairly challenging task. \emph{C++} was chosen because we wanted to make its execution as fast as possible. In order to have a greater control over the execution of the program, we created it as a child process of judge by using \emph{fork()}. The first thing to do here was to redirect stdin and stout to files for forked processes.
	\begin{lstlisting}[language=C++,title={Redirection of stdin and stdout}]
int input,output,error,flag;
input=open(argv[2],O_RDWR);
                
int oldstdout=dup(1);        
output=open(dir,O_CREAT|O_TRUNC|O_RDWR,S_IXUSR|S_IRUSR|S_IWUSR|S_IXOTH|S_IROTH|S_IWOTH);
dup2(input,0);
dup2(output,1);
	\end{lstlisting}
	Then we had to call the executables as child processes this can be done by \emph{execl()} command.

	The other remaining challenges  were to implement the time of execution feature, time-limit exceeded, and also limiting of memory of the child process. For killing the process after timelimit we fork another process which kills the program after time limit with \emph{SIGTERM} signal. To calculate execution time we used \emph{gettimeofday()} function but this functtion isn't \emph{ANSI C} function but hardware dependent function, but most modern computers with \emph{UNIX} based OS provide this function.
	  \begin{lstlisting}[language=C++,title={Execution Time}]
struct timeval start, end;
long mtime, seconds, useconds; 
gettimeofday(&start, NULL);

//code

gettimeofday(&end, NULL);
sec= end.tv_sec  - start.tv_sec;
usec= end.tv_usec - start.tv_usec;
mtime = ((sec) * 1000 + usec/1000.0) + 0.5;
	
printf("%ld\n", mtime);
	\end{lstlisting}

	To limit memory of the child process we use \emph{setrlimit()} function.
	\begin{lstlisting}[language=C++,title={Memory Limit}]
im.rlim_cur+=29963000;//accomodating space for libraries 
lim.rlim_max=lim.rlim_cur;
setrlimit(RLIMIT_AS,&lim);
	\end{lstlisting}

	In order to impove the security and also to prohibit users from harming the server by submitting malicious programs we used \emph{chroot()} utility. 
	\section{Source-code}
	\subsection{Index}
	We divided our source code into the following files 
	\begin{itemize}
	\item \emph{blog.php} used to display blog posts recent first.
	\item \emph{comment.php} for storing and displaying the comments in problems sections.
	\item \emph{contests.php} for viewing past present and future contests and viewing the problems in each contest.
	\item \emph{countdown.js} JavaScript file for implementing timer.
	\item \emph{database.sql} SQL file for setting up database with proper tables.
	\item \emph{footer.php} footer for the website.
	\item \emph{header.php} contains both the header and also the menu for the website.
	\item \emph{index.php} this is the main page of the website which shows description of the last few blog posts  and other announcements.
	\item \emph{jQuery.js} JavaScript library.
	\item \emph{logout.php} script to logout of the account.
	\item \emph{problem.php} problems page which show both list of problems and also the problem statement and also the comments. 
	\item \emph{processfile.php} script which runs after a file is submitted to the judge.
	\item \emph{profile.php} to display user profiles and details like recent submissions,ranks etc \ldots
	\item \emph{rank.php} to display ranks globally and also contest-wise.
	\item \emph{register.php} to facilitate registering of new users.
	\item \emph{settings.php} this file declares various global variables and also functions which are used frequently.
	\item \emph{sidebar.php} is for displaying the sidebar which is used in the website which contains login boxes, leaderboard and various other useful links.
	\item \emph{status.php} is for displaying the status of the judge.
	\item \emph{view.php} is for displaying others source codes this also takes care syntax highlighting for various languages. 
	\end{itemize}
	Apart from the above files there are various other files in different folders for style and images displayed and other which contain problem statement etc\ldots
	\section{Further Improvements}
	We observed that there is still a lot of scope for improvement in the current framework of our judge and website.

	We could add other types of custom contests like that of Battlecity organised in \emph{Techkriti 2012} but it still remains a challenge for us to integrate such types into the framework.

	We have yet to rigorously test the project although we have done some minor testing we cant be sure that it is bug free.
	
	We are aware of some security issues with chroot although it is extremely difficult to break out of it but it is still possible which should be dealt with.

	For Admins we could add other utilities which give them a greater control over the website without hassle of fiddling with the website source code.

	And there is always a scope of improvement in the user interface.
\end{document}