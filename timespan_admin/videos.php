
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
            
			
            
             
              //now edit button  clicked
      //now edit button  clicked
            if(isset($_POST["edit_video"]))
    {
               
                $video_update_id=$_GET["update_id"];
				
				//now taking all the values
				if(isset($_POST["video_category"]))
				{
					$video_category=  mysql_real_escape_string($_POST["video_category"]);
				}
				 else
				{
					$video_category ="";
				}
                
				
               
			   
			   if(isset($_POST["name"]))
			   {
				$name= mysql_real_escape_string($_POST["name"] );
			   }
                  else
				{
					$name ="";
				}
                
				
				
				if(isset($_POST["description"]))
				{
					
                     $description= mysql_real_escape_string( $_POST["description"]);
				}
				  else
				{
					$description ="";
				}
				
				
				
		
				
				
				
				
				if(isset($_POST["youtube_embed_code"]))
				{
					 $youtube_embed_code= mysql_real_escape_string( $_POST["youtube_embed_code"]);
				}
				   else
				{
					$youtube_embed_code="";
				}
				
				
				
			
				
		        
			if(isset($_FILES["image"]) && (!empty($_FILES['image']['tmp_name'])))
			{
				$video_image_name=  $_FILES["image"]["name"];
	$video_image_tempname=	$_FILES['image']['tmp_name'];
					$image_name=  basename($video_image_name);
             
            $image_type   = exif_imagetype($video_image_tempname);
            
                
                //check if the image type
                
                if($image_type == 1)
                {
                    $image_type="GIF";
                }
                
                if($image_type == 2)
                {
                    $image_type="JPEG";
                }
                
                if($image_type == 3)
                {
                    $image_type="PNG";
                }
                
                if($image_type == 4)
                {
                    $image_type="SWF";
                }
                
                if($image_type == 5)
                {
                    $image_type="PSD";
                }
                
                if($image_type == 6)
                {
                    $image_type="BMP";
                }
                
                if($image_type == 7)
                {
                    $image_type="TIFF_II";
                }
                
                if($image_type == 8)
                {
                    $image_type="TIFF_MM";
                }
                
                if($image_type == 9)
                {
                    $image_type="JPC";
                }
                
                if($image_type == 10)
                {
                    $image_type="JP2";
                }
                
                if($image_type == 11)
                {
                    $image_type="JPX";
                }
                
                if($image_type == 12)
                {
                    $image_type="JB2";
                }
                
                if($image_type == 13)
                {
                    $image_type="SWC";
                }
                
                
                if($image_type == 14)
                {
                    $image_type="IFF";
                }
                
                 if($image_type == 15)
                {
                    $image_type="WBMP";
                }
                
                 if($image_type == 16)
                {
                    $image_type="XBM";
                }
                
                
                    if($image_type == 17)
                {
					
                    $image_type="ICO";
                }
				
				
				
				
				
				
				
				
				
				
				
				
				
                $target_dir = "video_images/";
                $target_file = $target_dir .$video_update_id."_". $image_name;
                $image_url=SITE_ROOT.$target_file;
                
				

				
				
				
                //delete all files that contain same name
				$mask = $target_dir.$video_update_id.'_*.*';
                /*foreach (glob($mask) as $maskname) {
                 unlink($maskname);
                 }*/
               array_map('unlink', glob($mask));
                
                // Check if file already exists
        if (file_exists($target_file)) 
        {
			unlink($target_file);
             
		}       
        
                
           
                
                    
                    
                    
         if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file )) 
              {
            
            $_SESSION["message"]="File Uploaded Successfully.";
              }
			  else
			  {
				
				  $_SESSION["message"]="Error occured in file uploading.";
			  }
                  
			}
			else
			{
				$image_url="";
				$image_name="";
				$image_type="";
			}
                    
		
				
				
				
				
				date_default_timezone_set("Asia/Karachi"); 
    $update_date= date('d/m/Y H:i:s a'); 
				
				
				
			  $update_videos="update videos set fk_video_category_id='$video_category' ,
			  name='$name',description='$description',youtube_embed_code='$youtube_embed_code',
			  image_url='$image_url',image_name='$image_name',image_type='$image_type',update_date='$update_date'
			  where id='$video_update_id'";
			  
			  
			         
			  
			 $result_update_videos= mysqli_query($conn,$update_videos);        
                    
                    
                    
            $_SESSION["message"]="Videos Updated successfully...!";        
                    
                    
                       
					 //now redirect to operator page
					$page_name="videos.php";
        
       echo '<script type="text/javascript">
        window.location = "'.$page_name.'";
            </script>';
			
                    
    }
            
            
            
            //now delete
			if(isset($_GET["delete_id"]))
			{
				$videos_delete_id=$_GET["delete_id"];
				
			//now update
				$delete_users="update videos set is_deleted=1 where id='$videos_delete_id'";
				
				$delete_users=mysqli_query($conn,$delete_users);
				
				//now redirect to videos page
					 $page_name="videos.php";
        
        echo '<script type="text/javascript">
        window.location = "'.$page_name.'";
            </script>';
			}
            
            
             //new edit
			if(isset($_GET["edit_id"]))
			{
				//get edit id
				
				$videos_edit_id=$_GET["edit_id"];
			
			 //now select the record from applicants table
              $select_videos="select * from videos where is_deleted=0 and id='$videos_edit_id'";
              
             $result_videos= mysqli_query($conn,$select_videos);
             $count_videos=mysqli_num_rows($result_videos);
             
             if($count_videos > 0)
             {
                $fetch_arr_edit=mysqli_fetch_array($result_videos);
				
             }
			
			}
            
            
			//your coding starts here
            
			if(isset($_POST["add_video"]))
        {
               //now taking all the values
               $video_category=  $_POST["video_category"];
                $name=  $_POST["name"];
                
				$description=  $_POST["description"];
               
              $youtube_embed_code=  $_POST["youtube_embed_code"];
              
             
                if (isset($_FILES["image"]) && (!empty($_FILES['image']['tmp_name'])))
		{
              $image_name=  basename($_FILES["image"]["name"]);
              
            $image_type   = exif_imagetype($_FILES['image']['tmp_name']);
            
                
                //check if the image type
                
                if($image_type == 1)
                {
                    $image_type="GIF";
                }
                
                if($image_type == 2)
                {
                    $image_type="JPEG";
                }
                
                if($image_type == 3)
                {
                    $image_type="PNG";
                }
                
                if($image_type == 4)
                {
                    $image_type="SWF";
                }
                
                if($image_type == 5)
                {
                    $image_type="PSD";
                }
                
                if($image_type == 6)
                {
                    $image_type="BMP";
                }
                
                if($image_type == 7)
                {
                    $image_type="TIFF_II";
                }
                
                if($image_type == 8)
                {
                    $image_type="TIFF_MM";
                }
                
                if($image_type == 9)
                {
                    $image_type="JPC";
                }
                
                if($image_type == 10)
                {
                    $image_type="JP2";
                }
                
                if($image_type == 11)
                {
                    $image_type="JPX";
                }
                
                if($image_type == 12)
                {
                    $image_type="JB2";
                }
                
                if($image_type == 13)
                {
                    $image_type="SWC";
                }
                
                
                if($image_type == 14)
                {
                    $image_type="IFF";
                }
                
                 if($image_type == 15)
                {
                    $image_type="WBMP";
                }
                
                 if($image_type == 16)
                {
                    $image_type="XBM";
                }
                
                
                    if($image_type == 17)
                {
                    $image_type="ICO";
                }
                
                $new_inserted_id="";
                
                
                //now fetch the last inserted id
                
                $select_last_inserted_sql="select * from videos order by id desc limit 1";
                
                $result_last_inserted_id=mysqli_query($conn,$select_last_inserted_sql);
                
            $count_last_inserted= mysqli_num_rows($result_last_inserted_id);
                
                if($count_last_inserted > 0)
                {
					
                    $row_last_inserted=mysqli_fetch_array($result_last_inserted_id);
                   $new_inserted_id= $row_last_inserted["id"]+1;
                }
				else
				{
					$new_inserted_id=1;
				}
                
                $target_dir = "video_images/";
                $target_file = $target_dir .$new_inserted_id."_". $image_name;
                $image_url=SITE_ROOT.$target_file;
                
              
                
                
             
			 
            
                
                
                
                
                  $uploadOk = 1;
                
                // Check if file already exists
        if (file_exists($target_file)) 
        {
              $_SESSION["message"]= "Sorry, file already exists.";
                $uploadOk = 0;
        }
                
             // Check if $uploadOk is set to 0 by an error
             if ($uploadOk == 0) {
         $_SESSION["message"].="Sorry, your file was not uploaded.";
         // if everything is ok, try to upload file
            } 
                else
                {
                    
                    //now insert into database
                    
                     //now insert into videos table
              
			  date_default_timezone_set("Asia/Karachi"); 
    $current_date= date('d/m/Y H:i:s a'); 
					
			  
			  
                 $videos_insert_sql="insert into videos (fk_video_category_id,name,description,youtube_embed_code,image_url,image_name,image_type,create_date) values
                 ('$video_category','$name','$description','$youtube_embed_code','$image_url','$image_name','$image_type','$current_date')";
                 
                 
              $result_video_insert=mysqli_query($conn,$videos_insert_sql);
                
             $last_video_id= mysqli_insert_id($conn);
                    
         if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file )) 
              {
            
          
         			 

              }
                    
            $_SESSION["message"]="Video Insert successfully...!";        
                    
                }
                
              
			
            
        }
		
		}
            
            
            
            else
            {
                //destroy all session
                
                unset($_SESSION["message"]);
            }
    }
	}

?>



<script type="text/javascript">
function confirm_delete() {
  return confirm('are you sure to delete?');
}
</script>

<!DOCTYPE html>
<html>
<?php include("head.php"); ?>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

<?php include("header.php"); ?>
 <?php include("sidebar.php"); ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
      Videos
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li>Videos</li>
      </ol>
    </section>

    <!-- Main content -->
    <br>
    <div class="col-md-12">
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              
                
                        <?php if(!isset($fetch_arr_edit))
			           {
			         	?>
               
              <li class="active"><a href="#settings" data-toggle="tab">Videos</a></li>
                <li ><a href="#video_list" data-toggle="tab">List Videos</a></li>
                
                
                     <?php
			          }
                      ?>
                
                
                
                      <?php if(isset($fetch_arr_edit))
			         {
				     ?>
                
               <li  class="active"><a href="#edit_videos" data-toggle="tab">Edit Musics</a></li>
                
              
              
               <?php
			   }
             ?>
            </ul>
            <div class="tab-content">
              
               
             <?php if(!isset($fetch_arr_edit))
			         {
				     ?>
              

              <div class="active tab-pane" id="settings">
                <form class="form-horizontal"  action="videos.php" method="post" enctype="multipart/form-data">
                 
            

                    
                  
                     <div class="form-group">
                <label for="inputName" class="col-sm-2 control-label">Video Category</label>
                <div class="col-sm-10">
                      <select class="form-control select2" name="video_category" >
                 <?php  
					 
					
					  
					  $query_video_categories="select * from video_categories where is_deleted=0";
					$result_video_categories=  mysqli_query($conn,$query_video_categories);
					  
					  $count_video_categories=mysqli_num_rows($result_video_categories);
					  
					   if($count_video_categories > 0)
					   {
						   while($row_video_categories=mysqli_fetch_array($result_video_categories))
						   {
							  
							  echo "<option id=".$row_video_categories['id']." value=".$row_video_categories['id']." >".$row_video_categories['name']."</option>";
								
						   }
					   }
					  
					  ?>
                 
                </select>
                    </div>
			</div>
                    
                 
                    
                
                    
                    
               <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Name</label>


                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="name" id="name" placeholder="Name" required="required">
                    </div>
                  </div>
                  
                   
                 
                   <div class="form-group">
                    <label for="inputEmail" class="col-sm-2 control-label">Description</label>

                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="description" id="description" placeholder="Description" required="required">
                    </div>
                  
                  </div>
                  
                   
                    
                     <div class="form-group">
                    <label for="inputEmail" class="col-sm-2 control-label">Youtube Embed Code</label>

                    <div class="col-sm-10">
						<textarea class="form-control" name="youtube_embed_code" id="youtube_embed_code" placeholder="Youtube Embed Code" required="required" ></textarea>
                      
                    </div>
                  
                  </div>
                    
                    
					
							
					
				    <div class="form-group">
                    <label for="inputEmail" class="col-sm-2 control-label">Image</label>

                    <div class="col-sm-10">
                      <input type="file" class="form-control" name="image" id="image" placeholder="Image" required="required">
                    </div>
                  
                  </div>
				   
                 
                  
                  
                  
                  
                   
               
                    <br>
                  
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <button type="submit" name="add_video" class="btn btn-danger">Submit</button>
                    </div>
                  </div>
                 
                
                  
                 
                 
                
				</form>
                  
                      <?php if(isset($_SESSION["message"]))
    {
        echo '<div class="alert alert-success">
   '.$_SESSION["message"].'
</div>';
    }
                        ?>  
			   </div>
                

                
                
                
                
                 <!-- Second Tab Starts-->
                 <div class="tab-pane" id="video_list">
               
                <div class="post">
                  <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                
                    
                  <th>Video Category</th>
                  <th>Video Name</th>
                  <th>Video Desc</th>
                  <th>Youtube Embed Code</th>
                 
				   <th>Video Image</th>
                  <th>Edit</th>
                  <th>Delete</th>
                </tr>
                </thead>
                <tbody>
              
                
                 <?php  
	   
	    $select_videos="select vc.name 'video_category_name',v.id,v.name,v.description,v.youtube_embed_code,v.image_url 
           from videos v, video_categories vc
            where 
           vc.id=v.fk_video_category_id
             and
         v.is_deleted=0
             and
           vc.is_deleted=0
             ";


$result_select_videos=mysqli_query($conn,$select_videos);

$count_select_videos=mysqli_num_rows($result_select_videos);

if($count_select_videos > 0)
{
	while($row_select_videos=mysqli_fetch_array($result_select_videos))
	{
		echo "<tr>";
	
    
		echo "<td>".$row_select_videos['video_category_name']."</td>";
            
		echo "<td>".$row_select_videos['name']."</td>";
		echo "<td>".$row_select_videos['description']."</td>";
		echo "<td>".$row_select_videos['youtube_embed_code']."</td>";
		;
		if($row_select_videos['image_url'] != "")
		{
		echo "<td><img src=".$row_select_videos['image_url']." height='42' width='42'></td>";
		}
		else
		{
			echo "<td></td>";
		}
     
		echo '<td><a href="?edit_id='.$row_select_videos['id'].'"><img class="img-responsive" src="bootstrap/image/edit.png "></a></td>';
		echo '<td><a href="?delete_id='.$row_select_videos['id'].'" onclick="return confirm_delete();"><img class="img-responsive" src="bootstrap/image/delete.png"></a></td>';
		echo "</tr>";
		
	}
	
}



 ?>
               
               
               
             
                </tbody>
                <tfoot>
               
                </tfoot>
              </table>
            </div>
                </div>
                <!-- /.post -->
              </div>
			   
               <!-- Second Tab Ends-->
              
                
                <?php
                 
                 }
                 ?>
                
                
                
                
                
                <?php if(isset($fetch_arr_edit))
			         {
				     ?>
                
                
                  <!-- Third Tab Starts-->
                 <div class="active tab-pane" id="edit_videos">
               
                   <form class="form-horizontal"  action="videos.php?update_id=<?php echo $fetch_arr_edit["id"] ?>" method="post" enctype="multipart/form-data">
                 
            <div class="form-group">
                <label for="inputName" class="col-sm-2 control-label">Video Category</label>
                <div class="col-sm-10">
                      <select class="form-control select2" name="video_category" >
                 <?php  
					 
					
					  
					  $query_video_categories="select * from video_categories where is_deleted=0";
					$result_video_categories=  mysqli_query($conn,$query_video_categories);
					  
					  $count_video_categories=mysqli_num_rows($result_video_categories);
					  
					   if($count_video_categories > 0)
					   {
						   while($row_video_categories=mysqli_fetch_array($result_video_categories))
						   {
							  // echo $row_weapon_type["id"];
							  //  echo $row_weapon_type["name"];
							  echo "<option id=".$row_video_categories['id']." value=".$row_video_categories['id']." >".$row_video_categories['name']."</option>";
								
						   }
					   }
					  
					  ?>
                 
                </select>
                    </div>
			</div>

                    
                  
                   
                 
                    
                
                    
                    
               <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Name</label>


                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="name" value="<?php echo $fetch_arr_edit["name"]; ?>" id="name" placeholder="Name" >
                    </div>
                  </div>
                  
                   
                 
                   <div class="form-group">
                    <label for="inputEmail" class="col-sm-2 control-label">Description</label>

                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="description" id="description" value="<?php echo $fetch_arr_edit["description"]; ?>" placeholder="Description" >
                    </div>
                  
                  </div>
                  
                   
				   
			
				   
                    
					
					
					
				    <div class="form-group">
                    <label for="inputEmail" class="col-sm-2 control-label">Youtube Embed Code</label>

                    <div class="col-sm-10">
						<textarea class="form-control" name="youtube_embed_code" id="youtube_embed_code" placeholder="Youtube Embed Code"  ><?php echo $fetch_arr_edit["youtube_embed_code"]; ?></textarea>
                     
                    </div>
                  
                  </div>
					
			
					
					
              
                    
                    
				    <div class="form-group">
                    <label for="inputEmail" class="col-sm-2 control-label">Image</label>

                    <div class="col-sm-10">
                      <input type="file" class="form-control" name="image" id="image" placeholder="Image" >
                    </div>
                  
                  </div>
				   
                 
                  
                  
                  
                  
                   
               
                    <br>
                  
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <button type="submit" name="edit_video" class="btn btn-danger">Submit</button>
                    </div>
                  </div>
                 
                
                  
                 
                 
                
				</form>
                  
                      <?php if(isset($_SESSION["message"]))
    {
        echo '<div class="alert alert-success">
   '.$_SESSION["message"].'
</div>';
    }
                        ?>
              </div>
			   
               <!-- Third Tab Ends-->
              
                
                <?php } ?>
              </div>
				 
              </div>
              <!-- /.tab-pane -->
            </div>
            <!-- /.tab-content -->
          </div>
          <!-- /.nav-tabs-custom -->
        </div>
    <!-- /.content -->
</div>
  <!-- /.content-wrapper -->


  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
      <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">Recent Activity</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript::;">
              <i class="menu-icon fa fa-birthday-cake bg-red"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                <p>Will be 23 on April 24th</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript::;">
              <i class="menu-icon fa fa-user bg-yellow"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>

                <p>New phone +1(800)555-1234</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript::;">
              <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>

                <p>nora@example.com</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript::;">
              <i class="menu-icon fa fa-file-code-o bg-green"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>

                <p>Execution time 5 seconds</p>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        <h3 class="control-sidebar-heading">Tasks Progress</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript::;">
              <h4 class="control-sidebar-subheading">
                Custom Template Design
                <span class="label label-danger pull-right">70%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript::;">
              <h4 class="control-sidebar-subheading">
                Update Resume
                <span class="label label-success pull-right">95%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-success" style="width: 95%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript::;">
              <h4 class="control-sidebar-subheading">
                Laravel Integration
                <span class="label label-warning pull-right">50%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript::;">
              <h4 class="control-sidebar-subheading">
                Back End Framework
                <span class="label label-primary pull-right">68%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

      </div>
      <!-- /.tab-pane -->
      <!-- Stats tab content -->
      <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
      <!-- /.tab-pane -->
      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        <form>
          <h3 class="control-sidebar-heading">General Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Report panel usage
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Some information about this general settings option
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Allow mail redirect
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Other sets of options are available
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Expose author name in posts
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Allow the user to show his name in blog posts
            </p>
          </div>
          <!-- /.form-group -->

          <h3 class="control-sidebar-heading">Chat Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Show me as online
              <input type="checkbox" class="pull-right" checked>
            </label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Turn off notifications
              <input type="checkbox" class="pull-right">
            </label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Delete chat history
              <a href="javascript::;" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
            </label>
          </div>
          <!-- /.form-group -->
        </form>
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- jQuery 2.1.4 -->
<script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.5 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- Morris.js charts -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="plugins/morris/morris.min.js"></script>
<!-- Sparkline -->
<script src="plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="plugins/knob/jquery.knob.js"></script>
<!-- daterangepicker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="plugins/datepicker/bootstrap-datepicker.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/app.min.js"></script>
<!-- DataTables -->
<script src="plugins/datatables/jquery.dataTables.min.js"></script>
<script src="plugins/datatables/dataTables.bootstrap.min.js"></script>

<!-- page script -->
<script>
  $(function () {
    $("#example1").DataTable();
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false
    });
  });
</script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>


</body>
</html>
