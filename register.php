
<?php
session_start();
include('data/settings.php');
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Online Judge</title>
<meta http-equiv="content-type" content="application/xhtml+xml; charset=UTF-8" />
<link rel="stylesheet" type="text/css" media="screen" href="css/screen.css" />
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript">
<!---
$(document).ready(function(){
		$('.clear').click(function(){
			$('#error').hide();
			$('#error').css('text-color','rgb(255,100,100)');

			});

		$('.button1').click(function(){
			var username = $("input[name='rusername']").attr('value');
			var password = $("input[name='password']").attr('value');
			var cpassword = $("input[name='cpassword']").attr('value');
			var firstname = $("input[name='firstname']").attr('value');
			var lastname = $("input[name='lastname']").attr('value');
			var college = $("input[name='college']").attr('value');
			var email = $("input[name='email']").attr('value');
			$('#error').hide();
			$('#error').css('text-color','rgb(255,100,100)');
			if(username.length==0){
			$('#error').text('Username field cannot be left blank');
			$('#error').attr('class','error');
			$('#error').css('visibility','visible');
			$('#error').fadeIn('slow');
			return false;
			};
			if(password.length<6){
			$('#error').text('Password should be atleast 6 characters');
			$('#error').attr('class','error');
			$('#error').css('visibility','visible');
			$('#error').fadeIn('slow');
			return false;
			};
			if(password!=cpassword){
				$('#error').text('Passwords do not match');
				$('#error').attr('class','error');
				$('#error').css('visibility','visible');
				$('#error').fadeIn('slow');
				return false;
			};
			if(college.length==0){
				$('#error').text('College field cannot be left blank');
				$('#error').attr('class','error');
				$('#error').css('visibility','visible');
				$('#error').fadeIn('slow');
				return false;
			};
			if(email.length==0){
				$('#error').text('Email field cannot be left blank');
				$('#error').attr('class','error');
				$('#error').css('visibility','visible');
				$('#error').fadeIn('slow');
				return false;
			};
			if((email.search(".")==-1) || (email.search('@')==-1)){
				$('#error').text('Invalid Email address');
				$('#error').attr('class','error');
				$('#error').fadeIn('slow');
				$('#error').css('visibility','visible');
				return false;
			};
			return true;
		});

});

-->
</script>

</head>

<body class="register">
<!-- wrap starts here -->
<div id="wrap">			
<?php include('header.php'); ?>

<div id="content-outer" class="clear">

<div id="left">						
<div class="entry">
<h3>Register</h3>
<?php
if(isset($_POST['rusername'])){

	$cn = mysql_connect('localhost', $DBUSER, $DBPASS);
	mysql_select_db($DBNAME, $cn);
	

	$username = $_POST['rusername'];
	$password = $_POST['password'];
	$firstname = $_POST['firstname'];
	$lastname = $_POST['lastname'];
	$college = $_POST['college'];
	$email = $_POST['email'];

	$username = htmlentities($username);
	$password = htmlentities($password);
	$firstname = htmlentities($firstname);
	$lastname = htmlentities($lastname);
	$college = htmlentities($college);
	$email = htmlentities($email);

	if(strlen($username) > 1){
		$query = "INSERT INTO users(userID,username,password,firstname,lastname,college,email)  VALUES ('0', '$username', '$password', '$firstname', '$lastname', '$college', '$email')";

		//print '<div id="error" class="error" style="display: one"> creating account</div>';
	}
	if(!mysql_query($query)){
		if(mysql_errno() == 1062)
		{
			print '<div id="error" class="error" style="display: one">Username already taken</div>';
			$printedError = true;
		}
		else
		{
			print '<div id="error" class="error" style="display: one">Error creating account</div>';
			echo $query;
			$printedError = true;
		}
	}
	else
	{
		print '<div id="error" class="success" style="display: one">Account created</div>';
		$printedError = true;
	}
	mysql_close($cn);
}
else{

}

echo <<<EOHTML
<form  method="post" action="register.php" style="background: #FFFFFF; border:None;">
<div id="cform">
<div class="error" id ="error" style="visibility:hidden;"></div>
<table width= 100%>
<tr class="altrow">
<td>First Name</td>
<td><input name="firstname" size=40% type="text" /></td>
</tr>
<tr class="altrow">
<td>Last Name </td>
<td><input name="lastname" size="40%" type="text" /></td>
</tr>
<tr class="altrow">
<td>Username </td>
<td><input name="rusername" size="40%" type="text" /></td>
</tr>
<tr class="altrow">
<td>Password </td>
<td><input name="password" type="password" size="40%" /></td>
</tr>
<tr class="altrow">
<td>Confirm Password </td>
<td><input name="cpassword" type="password" size="40%" /></td>
</tr>
<tr class="altrow">
<td>College </td>
<td><input name="college" size="40%" type="text" /></td>
</tr>
<tr class="altrow">
<td>Email address</td>
<td><input name="email" type="text" size="40%"></td>
</tr>
</table>
<div style="text-align : center;">
<input class="button1" name="submit" type="submit" value="Submit" size="26%" style=" font-size:14px;" />


</div>
</div>
</form>
EOHTML;
?>

</div>
</div>
<?php include("sidebar.php"); ?>



</div>
</div>
<?php include("footer.php"); ?>	
</body>
