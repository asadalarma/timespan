<?php


//start the session

session_start();

//include the config file

include("config.php");

class connection
{
    
    
    function connect()
    {
 
        global $conn;
$servername = "localhost";
$username = "root";
$password = "";
$database="timespan";        

// Create connection
  $conn = mysqli_connect($servername, $username, $password,$database);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

        
    }
    
    function close()
    {
        mysqli_close($conn);
    }
    
    
}






?>