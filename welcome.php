<?php
include "database.php";
$username = $_POST["uname"];
$check=0;
$sql = "SELECT * FROM system_user";

$result = mysqli_query($conn, $sql);
if (mysqli_num_rows($result) > 0) {
  while($row = mysqli_fetch_assoc($result)) {
   $fname =$row["firstname"];
   $lname =$row["lastname"];
   $email =$row["email"];
   $uname =$row["username"];
   $password =$row["password"];
   if($_POST['uname']===$uname && sha1($_POST['password'])===$password){
        $check=1;
    }
    }}

    session_start();
    if($check==1){
        $_SESSION['uname'] = $uname;
        echo "<script>alert ('welcome!')</script>";
        echo "hello ".$fname." you are welcome!!";
        echo "<br><a href='logout.php'><input type=button value=logout name=logout> </a>";
    }
    else{
        echo "<script>alert ('username or password incorrect!')</script>";
        echo "<script>location.href='index.php'</script>";
    }
    if(!empty($_POST["remember"]))   
   {  
    setcookie ("uname",$uname,time()+ (10 * 365 * 24 * 60 * 60));  
    setcookie ("password",$_POST['password'],time()+ (10 * 365 * 24 * 60 * 60));
    $_SESSION["uname"] = $uname;
   }  
   else  
   {  
    if(isset($_COOKIE["uname"]))   
    {  
     setcookie ("uname","");  
    }  
    if(isset($_COOKIE["password"]))   
    {  
     setcookie ("password","");  
    }  
    
  else  
  {  
   $message = "Invalid Login";  
  } 
 }


mysqli_close($conn);
?>
