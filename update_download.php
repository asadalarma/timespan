 <?php

//include connection file


include("connection.php");


$connection=new connection();

$connection->connect();


 if(isset($_POST["id"]) && isset($_POST["table_name"]))
{
    $id= $_POST["id"];
    
     $table_name= $_POST["table_name"];
 
 
 //first select the views and then calculate
        $select_downloads="select downloads from ".$table_name." where 
          
           id=".$id."
           AND
         is_deleted=0";
         
         
        $result_downloads= mysqli_query($conn,$select_downloads);
        
        $count_downloads=mysqli_num_rows($result_downloads);
        
        if($count_downloads > 0 )
        {
            $row_downloads=mysqli_fetch_array($result_downloads);
            $fetched_downloads=$row_downloads["downloads"];
        }
        
        if($fetched_downloads == "" || $fetched_downloads == 0)
        {
            $fetched_downloads=1;
        }
        else
        {
            $fetched_downloads=$fetched_downloads+1;
        }
        //update the view by movies id
        
        $update_download_by_id="update ".$table_name." set downloads='$fetched_downloads' where id=".$id."";
        $result_download_by_id=mysqli_query($conn,$update_download_by_id);
    
 }
 else
 {
 }
           
        
        
        
        
        
        
?>