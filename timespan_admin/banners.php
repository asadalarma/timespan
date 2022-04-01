
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
            if(isset($_POST["edit_banner"]))
            {
               
                $banner_update_id=$_GET["update_id"];
				
				//now taking all the values
               $positions=  $_POST["positions"];
                $pages=  $_POST["pages"];
                
				$name=  $_POST["name"];
               
              $description=  $_POST["description"];
              $link=  $_POST["link"];
                
                
               
                
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
                
                
              
                
                     
                $target_dir = "banner_images/";
                $target_file = $target_dir .$banner_update_id."_". $image_name;
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
                    
                    //now update the database
                    
                     //now update the banners table
              
               
                 
           
                    
                    
              
			  $update_banners="update banners set fk_position_id='$positions' , fk_page_id='$pages',
			  name='$name',
			  description='$description',link='$link',image_url='$image_url',image_name='$image_name',image_type='$image_type'
			  where id='$banner_update_id'";
			  
			 $result_update_banners= mysqli_query($conn,$update_banners);        
                    
                    
                    
                    
         if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file )) 
              {
            
          
         			 

              }
                    
            $_SESSION["message"]="Banner Updated successfully...!";        
                    
                    
                       
					 //now redirect to operator page
					 $page_name="banners.php";
        
        echo '<script type="text/javascript">
        window.location = "'.$page_name.'";
            </script>';
			
                    
                }
                
                
              
			 
			
                  
				
					
            }
            
            
            
            //now delete
			if(isset($_GET["delete_id"]))
			{
				$banners_delete_id=$_GET["delete_id"];
				
			//now update
				$delete_users="update banners set is_deleted=1 where id='$banners_delete_id'";
				
				$delete_users=mysqli_query($conn,$delete_users);
				
				//now redirect to banners page
					 $page_name="banners.php";
        
        echo '<script type="text/javascript">
        window.location = "'.$page_name.'";
            </script>';
			}
            
            
             //new edit
			if(isset($_GET["edit_id"]))
			{
				//get edit id
				
				$banners_edit_id=$_GET["edit_id"];
			
			 //now select the record from applicants table
              $select_banners="select * from banners where is_deleted=0 and id='$banners_edit_id'";
              
             $result_banners= mysqli_query($conn,$select_banners);
             $count_banners=mysqli_num_rows($result_banners);
             
             if($count_banners > 0)
             {
                $fetch_arr_edit=mysqli_fetch_array($result_banners);
				
             }
			
			}
            
            
			//your coding starts here
            
			if(isset($_POST["add_banner"]))
            {
               //now taking all the values
               $positions=  $_POST["positions"];
                $pages=  $_POST["pages"];
                
				$name=  $_POST["name"];
               
              $description=  $_POST["description"];
              $link=  $_POST["link"];
                
                
            
                
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
                
                $select_last_inserted_sql="select * from banners where is_deleted=0 order by id desc limit 1";
                
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
				
                $target_dir = "banner_images/";
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
                    
                     //now insert into banners table
              
                 $banners_insert_sql="insert into banners (fk_position_id,fk_page_id,name,description,link,image_url,image_name,image_type) values
                 ('$positions','$pages','$name','$description','$link','$image_url','$image_name','$image_type')";
                 
                 
              $result_banner_insert=mysqli_query($conn,$banners_insert_sql);
                
             $last_banner_id= mysqli_insert_id($conn);
                    
         if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file )) 
              {
            
          
         			 

              }
                    
            $_SESSION["message"]="Banner Insert successfully...!";        
                    
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
      Banners
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li>Banners</li>
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
               
              <li class="active"><a href="#settings" data-toggle="tab">Banners</a></li>
                <li ><a href="#banner_list" data-toggle="tab">List Banners</a></li>
                
                
                     <?php
			          }
                      ?>
                
                
                
                      <?php if(isset($fetch_arr_edit))
			         {
				     ?>
                
               <li  class="active"><a href="#edit_banners" data-toggle="tab">Edit Banners</a></li>
                
              
              
               <?php
			   }
             ?>
            </ul>
            <div class="tab-content">
              
               
             <?php if(!isset($fetch_arr_edit))
			         {
				     ?>
              

              <div class="active tab-pane" id="settings">
                <form class="form-horizontal"  action="banners.php" method="post" enctype="multipart/form-data">
                 
            <div class="form-group">
                <label for="inputName" class="col-sm-2 control-label">Positions</label>
                <div class="col-sm-10">
                      <select class="form-control select2" name="positions" >
                 <?php  
					 
					
					  
					  $query_positions="select * from positions where is_deleted=0";
					$result_positions=  mysqli_query($conn,$query_positions);
					  
					  $count_positions=mysqli_num_rows($result_positions);
					  
					   if($count_positions > 0)
					   {
						   while($row_positions=mysqli_fetch_array($result_positions))
						   {
							  // echo $row_weapon_type["id"];
							  //  echo $row_weapon_type["name"];
							  echo "<option id=".$row_positions['id']." value=".$row_positions['id']." >".$row_positions['name']."</option>";
								
						   }
					   }
					  
					  ?>
                 
                </select>
                    </div>
			</div>

                    
                  
                     <div class="form-group">
                <label for="inputName" class="col-sm-2 control-label">Pages</label>
                <div class="col-sm-10">
                      <select class="form-control select2" name="pages" >
                 <?php  
					 
					
					  
					  $query_pages="select * from pages where is_deleted=0";
					$result_pages=  mysqli_query($conn,$query_pages);
					  
					  $count_pages=mysqli_num_rows($result_pages);
					  
					   if($count_pages > 0)
					   {
						   while($row_pages=mysqli_fetch_array($result_pages))
						   {
							  
							  echo "<option id=".$row_pages['id']." value=".$row_pages['id']." >".$row_pages['name']."</option>";
								
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
                    <label for="inputEmail" class="col-sm-2 control-label">Link</label>

                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="link" id="link" placeholder="Link" required="required">
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
                      <button type="submit" name="add_banner" class="btn btn-danger">Submit</button>
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
                 <div class="tab-pane" id="banner_list">
               
                <div class="post">
                  <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                
                    
                  <th>Position</th>
                  <th>Page</th>
                  <th>Banner Name</th>
                  <th>Banner Description</th>
                  <th>Link</th>
                   
                  <th>Edit</th>
                  <th>Delete</th>
                </tr>
                </thead>
                <tbody>
              
                
                 <?php  
	   
	    $select_users="select b.id,pos.name position_name,pag.name page_name,b.name banner_name,b.image_url,b.link from banners b , positions pos , pages pag
where 
pos.id=b.fk_position_id
AND
pag.id=b.fk_page_id
AND

b.is_deleted=0
AND
pos.is_deleted=0
and
pag.is_deleted=0


";


$result_select_users=mysqli_query($conn,$select_users);

$count_select_users=mysqli_num_rows($result_select_users);

if($count_select_users > 0)
{
	while($row_select_users=mysqli_fetch_array($result_select_users))
	{
		echo "<tr>";
	
    
		echo "<td>".$row_select_users['position_name']."</td>";
            
		echo "<td>".$row_select_users['page_name']."</td>";
		echo "<td>".$row_select_users['banner_name']."</td>";
		
		if($row_select_users['image_url'] != "")
		{
		
		echo "<td><img src=".$row_select_users['image_url']." height='42' width='42'></td>";
		}
		else
		{
			echo "<td></td>";
		}
		echo "<td>".$row_select_users['link']."</td>";
     
		echo '<td><a href="?edit_id='.$row_select_users['id'].'"><img class="img-responsive" src="bootstrap/image/edit.png "></a></td>';
		echo '<td><a href="?delete_id='.$row_select_users['id'].'" onclick="return confirm_delete();"><img class="img-responsive" src="bootstrap/image/delete.png"></a></td>';
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
                 <div class="active tab-pane" id="edit_banners">
               
                   <form class="form-horizontal"  action="banners.php?update_id=<?php echo $fetch_arr_edit["id"] ?>" method="post" enctype="multipart/form-data">
                 
            <div class="form-group">
                <label for="inputName" class="col-sm-2 control-label">Positions</label>
                <div class="col-sm-10">
                      <select class="form-control select2" name="positions" >
                 <?php  
					 
					
					  
					  $query_positions="select * from positions where is_deleted=0";
					$result_positions=  mysqli_query($conn,$query_positions);
					  
					  $count_positions=mysqli_num_rows($result_positions);
					  
					   if($count_positions > 0)
					   {
						   while($row_positions=mysqli_fetch_array($result_positions))
						   {
							  // echo $row_weapon_type["id"];
							  //  echo $row_weapon_type["name"];
							  echo "<option id=".$row_positions['id']." value=".$row_positions['id']." >".$row_positions['name']."</option>";
								
						   }
					   }
					  
					  ?>
                 
                </select>
                    </div>
			</div>

                    
                  
                     <div class="form-group">
                <label for="inputName" class="col-sm-2 control-label">Pages</label>
                <div class="col-sm-10">
                      <select class="form-control select2" name="pages" >
                 <?php  
					 
					
					  
					  $query_pages="select * from pages where is_deleted=0";
					$result_pages=  mysqli_query($conn,$query_pages);
					  
					  $count_pages=mysqli_num_rows($result_pages);
					  
					   if($count_pages > 0)
					   {
						   while($row_pages=mysqli_fetch_array($result_pages))
						   {
							  
							  echo "<option id=".$row_pages['id']." value=".$row_pages['id']." >".$row_pages['name']."</option>";
								
						   }
					   }
					  
					  ?>
                 
                </select>
                    </div>
			</div>
                    
                 
                    
                
                    
                    
               <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Name</label>


                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="name" value="<?php echo $fetch_arr_edit["name"]; ?>" id="name" placeholder="Name" required="required">
                    </div>
                  </div>
                  
                   
                 
                   <div class="form-group">
                    <label for="inputEmail" class="col-sm-2 control-label">Description</label>

                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="description" id="description" value="<?php echo $fetch_arr_edit["description"]; ?>" placeholder="Description" required="required">
                    </div>
                  
                  </div>
                  
                   
                    
                     <div class="form-group">
                    <label for="inputEmail" class="col-sm-2 control-label">Link</label>

                    <div class="col-sm-10">
                      <input type="text" class="form-control" value="<?php echo $fetch_arr_edit["link"]; ?>" name="link" id="link" placeholder="Link" required="required">
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
                      <button type="submit" name="edit_banner" class="btn btn-danger">Submit</button>
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
