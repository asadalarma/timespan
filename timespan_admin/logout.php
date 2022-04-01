<?php


//include connection file


include("connection.php");


$connection=new connection();

$connection->connect();


  if (!isset($_SESSION['user_id'])) {
        //redirect to login page
       $page_name="login.php";
        
        echo '<script type="text/javascript">
        window.location = "'.$page_name.'";
            </script>';
      
    }
    else {
        $now = time(); // Checking the time now when home page starts.

        if ($now > $_SESSION['expire']) {
            session_destroy();
            session_unset();
            //redirect to login page
       $page_name="login.php";
        
        echo '<script type="text/javascript">
        window.location = "'.$page_name.'";
            </script>';
        }
        else {
            
            //your coding starts here
            session_destroy();
            
            unset($_SESSION['user_id']);
            unset($_SESSION['first_name']);
            unset($_SESSION['last_name']);
            unset($_SESSION['username']);
            unset($_SESSION['password']);
            unset($_SESSION['email']);
            unset($_SESSION['address']);
            unset($_SESSION['date_of_birth']);
            unset($_SESSION['contact_no']);
            
            
            session_unset();

             //redirect to login page
       $page_name="login.php";
        
        echo '<script type="text/javascript">
        window.location = "'.$page_name.'";
            </script>';
            
             }
    }

?>