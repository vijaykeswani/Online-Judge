<?php

session_start();
if(!isset($_SESSION['isloggedin']))
{
	echo "Please login first";
	echo "<meta http-equiv='Refresh' content='3; URL=index.php' />";
	exit(0);
}


else
{
	$username = $_SESSION['username'];
	$userid = $_SESSION['userid'];
}



if(!isset($_POST['problemID'])||!isset($_FILES["file"]["name"]))
{
	echo "No problem selected";
	echo "<meta http-equiv='Refresh' content='3; URL=problem.php' />";
	exit(0);
}
if($_FILES["file"]["size"]>50000)
{
	echo"Too large file";
	echo "<meta http-equiv='Refresh' content='3; URL=problem.php' />";
	exit(0);
}
include('settings.php');





$cn = mysql_connect('localhost', $DBUSER, $DBPASS);
mysql_select_db($DBNAME, $cn);
$query="SELECT * from problems where problemID= ".$_POST['problemID'];
$logged=mysql_query($query);
$logg=mysql_fetch_array($logged);
$contestID=$logg['contestID'];
$score=$logg['score'];
$problemName=$logg['problemName'];
$runtimelimit=$logg['timeLimit'];
$runmemlimit=$logg['memoryLimit'];


/*
#define RIGHT 0
#define COMPILE_ERROR 1
#define WRONG 2
#define TIME_EXCEEDED 3
#define ILLEGAL_FILE 4
#define Runtime error 5
#define Waiting 6

 */              
$lang=array(
		"c"=>"C",
		"cpp"=>"C++",
		"java"=>"JAVA",
		"py"=>"python"
	   );

$problemID=$_POST['problemID'];
$username=$_SESSION['username'];



//$logged = mysql_query($query);


$fileinfo=pathinfo($_FILES["file"]["name"]);
$ext=strtolower($fileinfo['extension']);
$ext=$_POST['language'];
if(!isset($lang[$ext])){

	$ext="unknown";	
	$query ="INSERT INTO submissions(problemID,problemName,userID,username,runtime,submlang,status )VALUES($problemID,'$problemName',$userid,'$username',0.0,'$ext',4) ";
	mysql_query($query);
	mysql_close($cn);

	echo "<meta http-equiv='Refresh' content='0; URL=status.php' />	";
	exit(0);
}
$query="INSERT INTO submissions(problemID,problemName,userID,username,runtime,submlang,status )VALUES($problemID,'$problemName',$userid,'$username',0.0,'".$lang[$ext]."',6) ";
mysql_query($query);

$query="select last_insert_id() AS subID";
$logged = mysql_query($query);
$logg = mysql_fetch_array($logged);
$submID=$logg['subID'];
mkdir("/var/www/newonj/submissions/".$userid, 0700);
move_uploaded_file($_FILES["file"]["tmp_name"],"/var/www/newonj/submissions/$userid/$submID".".".$ext);

?>
<meta http-equiv='Refresh' content='0; URL=status.php' />	
