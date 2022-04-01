<?php

//include connection file


include("connection.php");


$connection=new connection();

$connection->connect();


if(isset($_POST["login_btn"]))
{
    
    $email=$_POST["email"];
    $password=$_POST["password"];
    $md5_password=md5($password);

    
    //now select values from database
    
    $select_users="select * from users
where
email='".$email."'
and
password='".$md5_password."'
and
is_deleted=0";
    
$result_users=mysqli_query($conn,$select_users);
    
   $count_users= mysqli_num_rows($result_users);
    
    //if count exists
    if($count_users > 0)
    {
        while($row_users=mysqli_fetch_array($result_users))
        {
            $fetched_user_id=$row_users["id"];
            $fetched_first_name=$row_users["first_name"];
            $fetched_last_name=$row_users["last_name"];
              $fetched_username=$row_users["username"];
            $fetched_password=$row_users["password"];
            
            $fetched_email=$row_users["email"];
            
            
             $fetched_address=$row_users["address"];
            $fetched_date_of_birth=$row_users["date_of_birth"];
            
            $fetched_contact_no=$row_users["contact_no"];
            
            
        }
        
      
        
  if($md5_password==$fetched_password)
  {
      //save the values in the session
            $_SESSION['user_id']=$fetched_user_id;
            $_SESSION['first_name']=$fetched_first_name;
      
            $_SESSION['last_name']=$fetched_last_name;
            $_SESSION['username']=$fetched_username;
      
       $_SESSION['password']=$fetched_password;
      
            
           $_SESSION['email']=$fetched_email; 
           $_SESSION['address']=$fetched_address;
           $_SESSION['date_of_birth']=$fetched_date_of_birth;
      $_SESSION['contact_no']=$fetched_contact_no;

      
            $_SESSION['start'] = time(); // Taking now logged in time.
            // Ending a session in 30 minutes from the starting time.
            $_SESSION['expire'] = $_SESSION['start'] + SESSION_TIMEOUT;
      
      //redirect to main dashboard page
       $page_name="dashboard.php";
        
        echo '<script type="text/javascript">
        window.location = "'.$page_name.'";
            </script>';
      
      
  }
        
       
    }
    else
    {
        
        $_SESSION['message']= "Invalid email or Password";
       
    }
    
}
else
{
    //destroy all the session and cookie
    
    session_destroy();
    unset($_SESSION['message']);
 
    session_unset();
}
    

    

?>


<!DOCTYPE html>
<html>
    
<?php include("head.php")?>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href="#"><b>Login</b></a>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body"> 
    <p class="login-box-msg"><img src="<?php echo IMAGES_DIR; ?>logo.png"  class="img-responsive"></p>
    
      

    <form action="login.php" method="post">
        
        
        
      <div class="form-group has-feedback">
        <input type="email" name="email" class="form-control" placeholder="Email">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" name="password" class="form-control" placeholder="Password">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="row">
        <div class="col-xs-8">
          <div class="checkbox icheck">
            <label>
              <input type="checkbox"> Remember Me
            </label>
          </div>
        </div>
        <!-- /.col -->
        <div class="col-xs-4">
          <button type="submit" name="login_btn" class="btn btn-primary btn-block btn-flat">Sign In</button>
        </div>
        <!-- /.col -->
      </div>
    </form>

    
    <!-- /.social-auth-links -->

    <a href="lockscreen.html" >I forgot my password</a><br>
   
<?php
if(isset($_SESSION["message"]))
{
    echo "</br>";
    echo '<div class="alert alert-danger">
   '.$_SESSION['message'].'
</div>';
}
?>
  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 2.1.4 -->
<script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- Bootstrap 3.3.5 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="plugins/iCheck/icheck.min.js"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' // optional
    });
  });
</script>
</body>
</html>
