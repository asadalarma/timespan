
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
            
			
			
              //now edit button  clicked
            if(isset($_POST["edit_music_category"]))
            {
               
                $music_categories_update_id=$_GET["update_id"];
				
				//now taking all the values
               $name=  $_POST["name"];
                $description=  $_POST["description"];
                
				
                    
                    
              
			  $update_music_categories="update music_categories set name='$name' , description='$description'
			  where id='$music_categories_update_id'";
			  
			 $result_update_music_categories= mysqli_query($conn,$update_music_categories);        
                    
                    
                    
            $_SESSION["message"]="Movie Category Updated successfully...!";        
                    
                    
                       
					 //now redirect to operator page
					 $page_name="music_categories.php";
        
        echo '<script type="text/javascript">
        window.location = "'.$page_name.'";
            </script>';
			
                    
            }
                
                
              
			 
			
                  
				
					
            
			
			
			
			
			 //now delete
			if(isset($_GET["delete_id"]))
			{
				$music_categories_delete_id=$_GET["delete_id"];
				
			//now update
				$delete_music_categories="update music_categories set is_deleted=1 where id='$music_categories_delete_id'";
				
				$delete_music_categories=mysqli_query($conn,$delete_music_categories);
				
				//now redirect to banners page
					 $page_name="music_categories.php";
        
        echo '<script type="text/javascript">
        window.location = "'.$page_name.'";
            </script>';
			}
            
            
             //new edit
			if(isset($_GET["edit_id"]))
			{
				//get edit id
				
				$music_categories_edit_id=$_GET["edit_id"];
			
			 //now select the record from applicants table
              $select_music_categories="select * from music_categories where is_deleted=0 and id='$music_categories_edit_id'";
              
             $result_select_music_categories= mysqli_query($conn,$select_music_categories);
             $count_select_music_categories=mysqli_num_rows($result_select_music_categories);
             
             if($count_select_music_categories > 0)
             {
                $fetch_arr_edit=mysqli_fetch_array($result_select_music_categories);
				
             }
			
			}
			
			
			
			
			if(isset($_POST["add_music_category"]))
            {
               //now taking all the values

                $name=  $_POST["name"];
				$description=  $_POST["description"];
               
              
             
			 
             
                 //now insert into game category  table
				 
				 $insert_music_category_sql="insert into music_categories (name,description) values ('$name','$description')";
              
              $result_insert_music_category=mysqli_query($conn,$insert_music_category_sql);
                
                if($result_insert_music_category == true)
                {
                    $last_music_category_id= mysqli_insert_id($conn);
			
			 $_SESSION["message"]="Music Category Inserted Successfully...!";
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
      Music Categories
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li>Music Categories</li>
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
              <li class="active"><a href="#settings" data-toggle="tab">Music Categories</a></li>
			    <li ><a href="#list_music_category" data-toggle="tab">List Music Categories</a></li>
            
			
			<?php
			
					   }
					   ?>
					   
					   
					   
					   
					   <?php  if(isset($fetch_arr_edit))
					   {
						?>
					   <li class="active"><a href="#edit_music_categories" data-toggle="tab">Edit Music Categories</a></li>
					   <?php
					   
					   }
					   
					   ?>
					   
					   
			</ul>
            <div class="tab-content">
              
               
            
              <?php  if(!isset($fetch_arr_edit))
					   {
						?>

              <div class="active tab-pane" id="settings">
                <form class="form-horizontal"  action="music_categories.php" method="post">
                 
       

                    
                  
              
                    
                 
                    
                
                    
                    
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
                  
                   
            
                    
                  
                 
                  
                  
                  
                  
                   
               
                    <br>
                  
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <button type="submit" name="add_music_category" class="btn btn-danger">Submit</button>
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
				 
              
              <!-- End tab setting  -->
			  
			  
			  
			  <div class="tab-pane" id="list_music_category">
				
				 <div class="post">
                  <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                
                    
                  <th>Movie Category Name</th>
                  <th>Movie Category Description</th>
                  
                   
                  <th>Edit</th>
                  <th>Delete</th>
                </tr>
                </thead>
                <tbody>
              
                
                 <?php  
	   
	    $select_music_categories="select * from music_categories
where is_deleted=0";


$result_select_music_categories=mysqli_query($conn,$select_music_categories);

$count_select_music_categories=mysqli_num_rows($result_select_music_categories);

if($count_select_music_categories > 0)
{
	while($row_select_music_categories=mysqli_fetch_array($result_select_music_categories))
	{
		echo "<tr>";
	
    
		echo "<td>".$row_select_music_categories['name']."</td>";
            
		echo "<td>".$row_select_music_categories['description']."</td>";
		
		
     
		echo '<td><a href="?edit_id='.$row_select_music_categories['id'].'"><img class="img-responsive" src="bootstrap/image/edit.png "></a></td>';
		echo '<td><a href="?delete_id='.$row_select_music_categories['id'].'" onclick="return confirm_delete();"><img class="img-responsive" src="bootstrap/image/delete.png"></a></td>';
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
                
              </div>
				
               
			   
			   <?php
			   
					   }
					   ?>
					   
					   
					   
					   
					  <?php  if(isset($fetch_arr_edit))
					   {
						?>
						   <div class="active tab-pane" id="edit_music_categories">
                <form class="form-horizontal"  action="music_categories.php?update_id=<?php echo $fetch_arr_edit["id"]; ?>" method="post">
                 
       

                    
                  
              
                    
                 
                    
                
                    
                    
               <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Name</label>


                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="name" id="name" value="<?php echo $fetch_arr_edit["name"] ?>" placeholder="Name" required="required">
                    </div>
                  </div>
                  
                   
                 
                   <div class="form-group">
                    <label for="inputEmail" class="col-sm-2 control-label">Description</label>

                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="description" id="description" value="<?php echo $fetch_arr_edit["description"] ?>" placeholder="Description" required="required">
                    </div>
                  
                  </div>
                  
                   
            
                    
                  
                 
                  
                  
                  
                  
                   
               
                    <br>
                  
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <button type="submit" name="edit_music_category" class="btn btn-danger">Submit</button>
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
				 
              
              <!-- End Edit tab setting  -->
			  
						<?php
						
					   }
					   ?>
					   
			   
			    </div>
                
			  </div>
			  <!-- End List Game Setting -->
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
      "lengthChange": true,
      "searching": true,
      "ordering": true,
      "info": true,
      "autoWidth": true
    });
  });
</script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>


</body>
</html>
