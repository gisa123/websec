<?php
include "database.php";
$fname = $_POST['fname'];
$lname = $_POST['lname'];
$email = $_POST['email'];
$uname = $_POST['uname'];
$password = sha1($_POST['password']);
$sql="INSERT INTO system_user (firstname, lastname, email, username, password) values('$fname', '$lname', '$email', '$uname', '$password')";
if ($conn->query($sql) === TRUE){
	
	echo '<script>alert(" successfully signup")</script>';
	echo "<script>location.href='index.php'</script>";
}
else{
	
	echo '<script language="javascript">';
echo 'alert(" failed to signup")';
echo '</script>';
echo "<script>location.href='signup.php'</script>";
}
?>