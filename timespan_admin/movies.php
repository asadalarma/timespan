
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
            if(isset($_POST["edit_movie"]))
            {
               
                $movies_update_id=$_GET["update_id"];
				
				//now taking all the values
				if(isset($_POST["movie_category"]))
				{
					$movie_category=  mysql_real_escape_string($_POST["movie_category"]);
				}
				 else
				{
					$movie_category ="";
				}
                
				
               
			   
			   if(isset($_POST["movie_quality"]))
			   {
				$movie_quality= mysql_real_escape_string($_POST["movie_quality"] );
			   }
                  else
				{
					$movie_quality ="";
				}
                
				
				
				if(isset($_POST["movie_title"]))
				{
					
                     $movie_title= mysql_real_escape_string( $_POST["movie_title"]);
				}
				  else
				{
					$movie_title ="";
				}
				
				
				
				
				if(isset($_POST["imdb_url"]))
				{
                $imdb_url=  mysql_real_escape_string($_POST["imdb_url"]);
                }
				  else
				{
					$imdb_url="";
				}
				
				
				
				
				
				if(isset($_POST["year"]))
				{
					 $year= mysql_real_escape_string( $_POST["year"]);
				}
				   else
				{
					$year="";
				}
				
				
				if(isset($_POST["rating"]))
				{
					
                    $rating=  mysql_real_escape_string($_POST["rating"]);
				}
               else
				{
					$rating="";
				}
                
				
				
				
				
				
				
				if(isset($_POST["geners"]))
				
				{
					
                     $geners= mysql_real_escape_string( $_POST["geners"]);
				}
				else
				{
					$geners="";
				}
				
				
				
				if(isset($_POST["directors"]))
				
				{
					
                     $directors= mysql_real_escape_string( $_POST["directors"]);
				}
				else
				{
					$directors="";
				}
				
				
				
				
				
				if(isset($_POST["writers"]))
				
				{
					
                      $writers= mysql_real_escape_string( $_POST["writers"]);
				}
				else
				{
					$writers="";
				}
				
				
				
				
				
				
				if(isset( $_POST["casts"]))
				
				{
					
                       $casts= mysql_real_escape_string(  $_POST["casts"]);
				}
				else
				{
					$casts="";
				}
				
				
				
                
				
				
				
				
				if(isset( $_POST["stars"]))
				
				{
					
                       $stars=mysql_real_escape_string(  $_POST["stars"]);
				}
				else
				{
					$stars="";
				}
				
				
               
				
				
                 if(isset($_POST["producers"]))
				
				{
					
                        $producers=mysql_real_escape_string( $_POST["producers"]);
				}
				else
				{
					$producers="";
				}
				
              
				
				
                 if(isset($_POST["release_date"]))
				
				{
					
                     $release_date=mysql_real_escape_string($_POST["release_date"]);
				}
				else
				{
					$release_date="";
				}
				
				
				
				
				
				
				
				
				
				
				
				
				
				 if(isset( $_POST["plot"]))
				
				{
					
                    $plot=mysql_real_escape_string( $_POST["plot"]);
				}
				else
				{
					$plot="";
				}
				
				
				
				if(isset($_POST["language"]))
				
				{
					
                    $language=mysql_real_escape_string($_POST["language"]);
				}
				else
				{
					$language="";
				}
				
				
               
               	
				if(isset($_POST["runtime"]))
				
				{
					
                    $runtime=mysql_real_escape_string($_POST["runtime"]);
				}
				else
				{
					$runtime="";
				}
				
				
				 	
				if(isset($_POST["storyline"]))
				
				{
					
                    $storyline=mysql_real_escape_string( $_POST["storyline"]);
				}
				else
				{
					$storyline="";
				}
				
				
				
				
				
				
				
				if(isset($_POST["download_url"]))
				
				{
					
              $download_url= mysql_real_escape_string($_POST["download_url"]);
				}
				else
				{
					$download_url="";
				}
				
				
				
				
				
					
				
				
				if(isset($_POST["video_embed_code"]))
				
				{
					
               $video_embed_code= mysql_real_escape_string($_POST["video_embed_code"]);
				}
				else
				{
					$video_embed_code="";
				}
				
				
				
				
				
				
				
				
				
				if(isset($_POST["movie_status"]))
				
				{
					
               $movie_status= mysql_real_escape_string($_POST["movie_status"]);
				}
				else
				{
					$movie_status="";
				}
				
				
				
		        
			if(isset($_FILES["movie_image"]) && (!empty($_FILES['movie_image']['tmp_name'])))
			{
				$movie_image_name=  $_FILES["movie_image"]["name"];
	$movie_image_tempname=	$_FILES['movie_image']['tmp_name'];
					$image_name=  basename($movie_image_name);
             
            $image_type   = exif_imagetype($movie_image_tempname);
            
                
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
				
				
				
				
				
				
				
				
				
				
				
				
				
                $target_dir = "movie_images/";
                $target_file = $target_dir .$movies_update_id."_". $image_name;
                $image_url=SITE_ROOT.$target_file;
                
				

				
				
				
                //delete all files that contain same name
				$mask = $target_dir.$movies_update_id.'_*.*';
                /*foreach (glob($mask) as $maskname) {
                 unlink($maskname);
                 }*/
               array_map('unlink', glob($mask));
                
                // Check if file already exists
        if (file_exists($target_file)) 
        {
			unlink($target_file);
             
		}       
        
                
           
                
                    
                    
                    
         if (move_uploaded_file($_FILES["movie_image"]["tmp_name"], $target_file )) 
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
				
				
				
			  $update_movies="update movies set fk_movie_category_id='$movie_category' ,
			  fk_movie_quality_id='$movie_quality',name='$movie_title',description='',
			  imdb_url='$imdb_url',year='$year',rating='$rating',geners='$geners',directors='$directors',
			  writers='$writers',cast='$casts',stars='$stars',producers='$producers',release_date='$release_date',
			  plot='$plot',
				 language='$language',runtime='$runtime',storyline='$storyline',
				 status='$movie_status',youtube_embed_code='$video_embed_code',download_url='$download_url',image_url='$image_url',image_name='$image_name',image_type='$image_type',update_date='$update_date'
			  where id='$movies_update_id'";
			  
			  
			         
			  
			 $result_update_movies= mysqli_query($conn,$update_movies);        
                    
                    
                    
            $_SESSION["message"]="Movie Updated successfully...!";        
                    
                    
                       
					 //now redirect to operator page
					$page_name="movies.php";
        
       echo '<script type="text/javascript">
        window.location = "'.$page_name.'";
            </script>';
			
                    
            }
                
                
              
			 
			
                  
				
					
            
			
			
			
			
			 //now delete
			if(isset($_GET["delete_id"]))
			{
				$movies_delete_id=$_GET["delete_id"];
				
			//now update
				$delete_movies="update movies set is_deleted=1 where id='$movies_delete_id'";
				
				$delete_movies=mysqli_query($conn,$delete_movies);
				
				//now redirect to banners page
					 $page_name="movies.php";
        
        echo '<script type="text/javascript">
        window.location = "'.$page_name.'";
            </script>';
			}
            
            
             //new edit
			if(isset($_GET["edit_id"]))
			{
				//get edit id
				
				$movies_edit_id=$_GET["edit_id"];
			
			 //now select the record from applicants table
              $select_movies="select * from movies where is_deleted=0 and id='$movies_edit_id'";
              
             $result_select_movies= mysqli_query($conn,$select_movies);
             $count_select_movies=mysqli_num_rows($result_select_movies);
             
             if($count_select_movies > 0)
             {
                $fetch_arr_edit=mysqli_fetch_array($result_select_movies);
				
             }
			
			}
			
			
			
			
			if(isset($_POST["add_manual_movie"]))
            {
               //now taking all the values
         $movie_category= mysql_real_escape_string($_POST["movie_category"]);
		 
           $movie_quality= mysql_real_escape_string($_POST["movie_quality"]);
                $movie_title= mysql_real_escape_string($_POST["movie_title"]);
				  if(isset($_POST["imdb_url"]))
				{
					$imdb_url=mysql_real_escape_string($_POST["imdb_url"]);
				}
				
				$year=  mysql_real_escape_string($_POST["year"]);
				$rating= mysql_real_escape_string( $_POST["rating"]);
				
				$geners= mysql_real_escape_string( $_POST["geners"]);
				$directors= mysql_real_escape_string( $_POST["directors"]);
				
				$writers=  mysql_real_escape_string($_POST["writers"]);
				$casts= mysql_real_escape_string( $_POST["casts"]);
				
				
				$stars=  mysql_real_escape_string($_POST["stars"]);
				$producers= mysql_real_escape_string( $_POST["producers"]);
				
				$release_date=  mysql_real_escape_string($_POST["release_date"]);
				$plot= mysql_real_escape_string( $_POST["plot"]);
				
				
				$language= mysql_real_escape_string( $_POST["language"]);
				$runtime= mysql_real_escape_string( $_POST["runtime"]);
				
				$storyline= mysql_real_escape_string( $_POST["storyline"]);
				$download_url= mysql_real_escape_string( $_POST["download_url"]);
               
              if (isset($_FILES["movie_image"]) && (!empty($_FILES['movie_image']['tmp_name'])))
			  {
				
				$image_name=  basename($_FILES["movie_image"]["name"]);
             
            $image_type   = exif_imagetype($_FILES['movie_image']['tmp_name']);
            
                
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
                
                $select_last_inserted_sql="select * from movies order by id desc limit 1";
                
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
				
                $target_dir = "movie_images/";
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
                    
					date_default_timezone_set("Asia/Karachi"); 
    $current_date= date('d/m/Y H:i:s a'); 
					
                     //now insert into banners table
              
                 $movie_insert_sql="insert into movies
				 (fk_movie_category_id,fk_movie_quality_id,name,
				 description,imdb_url,
				 year,rating,geners,directors,writers,
				 cast,stars,producers,release_date,plot,
				 language,runtime,storyline,
				 status,download_url,image_url,image_name,image_type,create_date) values
                 ('$movie_category','$movie_quality','$movie_title',
				 '$movie_title','$imdb_url',
				 '$year','$rating','$geners','$directors','$writers',
				 '$casts','$stars','$producers','$release_date','$plot',
				 '$language','$runtime','$storyline',
				 'Released','$download_url','$image_url','$image_name','$image_type','$current_date')";
                 
                 
              $result_movie_insert=mysqli_query($conn,$movie_insert_sql);
                
             $last_movie_id= mysqli_insert_id($conn);
                    
         if (move_uploaded_file($_FILES["movie_image"]["tmp_name"], $target_file )) 
              {
            
          
         			 

              }
                    
            $_SESSION["message"]="Movie Insert successfully...!";        
                    
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
      Movies
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li>Movies</li>
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
              <li class="active"><a href="#settings" data-toggle="tab">Movies</a></li>
			    <li ><a href="#list_movie" data-toggle="tab">List Movies</a></li>
            
			
			<?php
			
					   }
					   ?>
					   
					   
					   
					   
					   <?php  if(isset($fetch_arr_edit))
					   {
						?>
					   <li class="active"><a href="#edit_movies" data-toggle="tab">Edit Movies</a></li>
					   <?php
					   
					   }
					   
					   ?>
					   
					   
			</ul>
            <div class="tab-content">
              
               
            
              <?php  if(!isset($fetch_arr_edit))
					   {
						?>

              <div class="active tab-pane" id="settings">
               
			   
			   
			   <form id="form" class="form-horizontal" >
			   
			   
<script>
						  $(document).ready(function() {
							
							//by default both 2 forms are hidden
							$('#form1').hide();
							$('#form2').hide();
            $("#form_selection_select").on('change', function(){
				var form_selected_value=$("#form_selection_select").val();
				alert(form_selected_value);
				if (form_selected_value == 1) {
					 $('#form1').toggle();
					 $('#form2').hide();
				}
               if (form_selected_value == 2) {
				 $('#form1').hide();
					 $('#form2').toggle();
					
				}
               
            });   
        });
					</script>


                   <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Please Select</label>


                    <div class="col-sm-10">
                     <select id="form_selection_select" class="form-control" name="form_selection_select">
						<option>Please Select Option</option>
						<option id="1" value="1">From Imdb</option>
						<option id="2" value="2">Manual</option>
					 </select>
                    </div>
                  </div>
				   
				   
				   	 <?php if(isset($_SESSION["message"]))
    {
        echo '<div class="alert alert-success">
   '.$_SESSION["message"].'
</div>';
    }
                        ?>
				   
				   
				   <?php

		if(isset($_COOKIE["movie_status"]))
		{
			echo '<div class="alert alert-success">
   '.$_COOKIE["movie_insert_message"].'
</div>';
		}		
				 
			   		
?>
			   </form>
			   
			   
			   
			   
			   
              <form id="form1" class="form-horizontal"  action="imdbwebservice.php" method="post">
       

                    
                  
              
                    
                 
                    
                
                    
                    
                         
                   
				   
				    
				   
				   <!-- form 1 starts -->
				   
				   
				     <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Imdb TT Id</label>


                    <div class="col-sm-10">
                    <input type="text" class="form-control" name="imdb_tt_id" id="imdb_tt_id" placeholder="Imdb TT Id" required="required">
                    </div>
                  </div>
					 
					 
					 
					 
					  <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Youtube Video Embed Code</label>


                    <div class="col-sm-10">
                    <textarea class="form-control" name="video_embed_code" id="video_embed_code" placeholder="YouTube Video Embed Code" required="required"></textarea>
                    </div>
                  </div>
					 
					 
					 
					 <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Movie Status</label>


                    <div class="col-sm-10">
                    <select id="movie_status" class="form-control" name="movie_status" required>
						<option id="" value="">Please Select Status</option>
						<option id="1" value="Upcoming">Upcoming</option>
						<option id="2" value="Released">Released</option>
					</select>
                    </div>
                  </div>
					 
					  <br>
                  
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <button type="submit" name="add_movie_from_imdb" class="btn btn-danger">Submit</button>
                    </div>
                  </div>
                    
				   
					
                          


                  
                   
                 
                  
                  
                   
            
                  
                 
                  
                  
                  
                  
                   
               
                  
                 
                
                  
                 
                
                
				
				
				 <?php if(isset($_SESSION["message"]))
    {
        echo '<div class="alert alert-success">
   '.$_SESSION["message"].'
</div>';
    }
                        ?>
				  

				   

		  
			  </form>
			  
			  
			  
			    <form id="form2" class="form-horizontal"  action="movies.php" method="post" enctype="multipart/form-data">
					
					
					
					<div class="form-group">
                <label for="inputName" class="col-sm-2 control-label">Movie Category</label>
                <div class="col-sm-10">
                      <select class="form-control select2" name="movie_category" >
                 <?php  
					 
					
					  
					  $movie_categories="select * from movie_categories where is_deleted=0";
					$result_movie_categories=  mysqli_query($conn,$movie_categories);
					  
					  $count_movie_categories=mysqli_num_rows($result_movie_categories);
					  
					   if($count_movie_categories > 0)
					   {
						   while($row_movie_categories=mysqli_fetch_array($result_movie_categories))
						   {
							  
							  echo "<option id=".$row_movie_categories['id']." value=".$row_movie_categories['id']." >".$row_movie_categories['name']."</option>";
								
						   }
					   }
					  
					  ?>
                 
                </select>
                    </div>
			</div>
					
						
						
						
						
						
						
						
						
						
						<div class="form-group">
                <label for="inputName" class="col-sm-2 control-label">Movie Qualities</label>
                <div class="col-sm-10">
                      <select class="form-control select2" name="movie_quality" >
                 <?php  
					 
					
					  
					  $movie_qualities="select * from movie_qualities where is_deleted=0";
					$result_movie_qualities=  mysqli_query($conn,$movie_qualities);
					  
					  $count_movie_qualities=mysqli_num_rows($result_movie_qualities);
					  
					   if($count_movie_qualities > 0)
					   {
						   while($row_movie_qualities=mysqli_fetch_array($result_movie_qualities))
						   {
							  
							  echo "<option id=".$row_movie_qualities['id']." value=".$row_movie_qualities['id']." >".$row_movie_qualities['name']."</option>";
								
						   }
					   }
					  
					  ?>
                 
                </select>
                    </div>
			</div>
					
								 
					 <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Movie Title</label>


                    <div class="col-sm-10">
                     <input type="text" class="form-control" name="movie_title" id="movie_title" placeholder="Movie Title" required="required">
                    </div>
                  </div>
					
					
					
					 <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Imdb Url</label>


                    <div class="col-sm-10">
                     <input type="text" class="form-control" name="imdb_url" id="imdb_url" placeholder="Imdb Url">
                    </div>
                  </div>
					 
					 
					 
					  <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Year</label>


                    <div class="col-sm-10">
                     <input type="text" class="form-control" name="year" id="year" placeholder="Year" required="required">
                    </div>
                  </div>
					 
					 
					 
					 
					 	  <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Rating</label>


                    <div class="col-sm-10">
                     <input type="text" class="form-control" name="rating" id="rating" placeholder="Rating" required="required">
                    </div>
                  </div>
					 
					 
					 
					 
					  	  <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Geners</label>


                    <div class="col-sm-10">
                     <input type="text" class="form-control" name="geners" id="geners" placeholder="Geners" required="required">
                    </div>
                  </div>
						  
						  
						  
						    <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Directors</label>


                    <div class="col-sm-10">
                     <input type="text" class="form-control" name="directors" id="directors" placeholder="Directors" required="required">
                    </div>
                  </div>
							
							
							
							 <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Writers</label>


                    <div class="col-sm-10">
                     <input type="text" class="form-control" name="writers" id="writers" placeholder="Writers" required="required">
                    </div>
                  </div>
							 
							 
							  <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Casts</label>


                    <div class="col-sm-10">
                     <input type="text" class="form-control" name="casts" id="casts" placeholder="Casts" required="required">
                    </div>
                  </div>
							  
							  
					
					
					
					
					  <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Stars</label>


                    <div class="col-sm-10">
                     <input type="text" class="form-control" name="stars" id="stars" placeholder="Stars" required="required">
                    </div>
                  </div>
					  
					  
					  
					   <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Producers</label>


                    <div class="col-sm-10">
                     <input type="text" class="form-control" name="producers" id="producers" placeholder="Producers" required="required">
                    </div>
                  </div>
					   
					   
					   
					   
					    <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Release Date</label>


                    <div class="col-sm-10">
                     <input type="text" class="form-control" name="release_date" id="release_date" placeholder="Release Date" required="required">
                    </div>
                  </div>
						
						
						
						
						
						
						
						
						
						 <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Movie Plot</label>


                    <div class="col-sm-10">
                     
                    
					<textarea class="form-control" name="plot" id="plot" placeholder="Movie Plot" required="required" ></textarea>
					</div>
                  </div>	
				  
				  
				  
				  
				  
				  
				  
				  
				   <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Movie Image</label>


                    <div class="col-sm-10">
                     
                    <input type="file" id="movie_image" class="form-control" name="movie_image" required="required">
					
					</div>
                  </div>	
				  
				  
				  
				  
				  
				  
				  			   <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Language</label>


                    <div class="col-sm-10">
                     
                     <input type="text" class="form-control" name="language" id="language" placeholder="Language" required="required">
					
					</div>
                  </div>	
				  
				  
				  
				  
				   <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Runtime</label>


                    <div class="col-sm-10">
                     
                     <input type="text" class="form-control" name="runtime" id="runtime" placeholder="Runtime" required="required">
					
					</div>
                  </div>
				   
				   
				   
				     <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Storyline</label>


                    <div class="col-sm-10">
                     
                     <input type="text" class="form-control" name="storyline" id="storyline" placeholder="Storyline" required="required">
					
					</div>
                  </div>
					 
					 
					 
					  <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Download Url</label>


                    <div class="col-sm-10">
                     
                     <input type="text" class="form-control" name="download_url" id="download_url" placeholder="Download Url" required="required">
					
					</div>
                  </div>
					  
					  
					  
					  
					  
					  
					  <br>
                  
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <button type="submit" name="add_manual_movie" class="btn btn-danger">Submit</button>
                    </div>
                  </div>
					  
					  
				</form>
				
				<!-- form 2 ends -->
			   </div>
				 
              
              <!-- End tab setting  -->
			 
				
				          
        
       
				
			  
			  
			  
			  <div class="tab-pane" id="list_movie">
				
				 <div class="post">
                  <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                
                    
                  <th>Movie Title</th>
                  <th>Year</th>
                  
				  
				  
				  
                  <th>Rating</th>
                  <th>Gener</th>
                  
                   
                  <th>Edit</th>
                  <th>Delete</th>
                </tr>
                </thead>
                <tbody>
              
                
                 <?php  
	   
	    $select_movies="select * from movies
where is_deleted=0";


$result_select_movies=mysqli_query($conn,$select_movies);

$count_select_movies=mysqli_num_rows($result_select_movies);

if($count_select_movies > 0)
{
	while($row_select_movies=mysqli_fetch_array($result_select_movies))
	{
		echo "<tr>";
	
    
		echo "<td>".$row_select_movies['name']."</td>";
            
		echo "<td>".$row_select_movies['year']."</td>";
		
		echo "<td>".$row_select_movies['rating']."</td>";
		
			echo "<td>".$row_select_movies['geners']."</td>";
     
		echo '<td><a href="?edit_id='.$row_select_movies['id'].'"><img class="img-responsive" src="bootstrap/image/edit.png "></a></td>';
		echo '<td><a href="?delete_id='.$row_select_movies['id'].'" onclick="return confirm_delete();"><img class="img-responsive" src="bootstrap/image/delete.png"></a></td>';
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
						   <div class="active tab-pane" id="edit_movies">
                <form class="form-horizontal"  action="movies.php?update_id=<?php echo $fetch_arr_edit["id"]; ?>" method="post" enctype="multipart/form-data">
                 
       

                    
                  
              
                    
                 
                    
                
                    
                    
     
                  
                   
                 
                   
					<div class="form-group">
                <label for="inputName" class="col-sm-2 control-label">Movie Category</label>
                <div class="col-sm-10">
                      <select class="form-control select2" name="movie_category" >
                 <?php  
					 
					
					  
					  $movie_categories="select * from movie_categories where is_deleted=0";
					$result_movie_categories=  mysqli_query($conn,$movie_categories);
					  
					  $count_movie_categories=mysqli_num_rows($result_movie_categories);
					  
					   if($count_movie_categories > 0)
					   {
						   while($row_movie_categories=mysqli_fetch_array($result_movie_categories))
						   {
							  
							  echo "<option id=".$row_movie_categories['id']." value=".$row_movie_categories['id']." >".$row_movie_categories['name']."</option>";
								
						   }
					   }
					  
					  ?>
                 
                </select>
                    </div>
			</div>
					
						
						
						
						
						
						
						
						
						
						<div class="form-group">
                <label for="inputName" class="col-sm-2 control-label">Movie Qualities</label>
                <div class="col-sm-10">
                      <select class="form-control select2" name="movie_quality" >
                 <?php  
					 
					
					  
					  $movie_qualities="select * from movie_qualities where is_deleted=0";
					$result_movie_qualities=  mysqli_query($conn,$movie_qualities);
					  
					  $count_movie_qualities=mysqli_num_rows($result_movie_qualities);
					  
					   if($count_movie_qualities > 0)
					   {
						   while($row_movie_qualities=mysqli_fetch_array($result_movie_qualities))
						   {
							  
							  echo "<option id=".$row_movie_qualities['id']." value=".$row_movie_qualities['id']." >".$row_movie_qualities['name']."</option>";
								
						   }
					   }
					  
					  ?>
                 
                </select>
                    </div>
			</div>
					
								 
					 <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Movie Title</label>


                    <div class="col-sm-10">
                     <input type="text" class="form-control" name="movie_title" id="movie_title" placeholder="Movie Title" value="<?php echo $fetch_arr_edit["name"]; ?>" >
                    </div>
                  </div>
					
					
					
					 <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Imdb Url</label>


                    <div class="col-sm-10">
                     <input type="text" class="form-control" name="imdb_url" id="imdb_url" value="<?php echo $fetch_arr_edit["imdb_url"]; ?>" placeholder="Imdb Url">
                    </div>
                  </div>
					 
					 
					 
					  <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Year</label>


                    <div class="col-sm-10">
                     <input type="text" class="form-control" name="year" id="year" placeholder="Year" value="<?php echo $fetch_arr_edit["year"]; ?>" >
                    </div>
                  </div>
					 
					 
					 
					 
					 	  <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Rating</label>


                    <div class="col-sm-10">
                     <input type="text" class="form-control" name="rating" id="rating" placeholder="Rating" value="<?php echo $fetch_arr_edit["rating"]; ?>" >
                    </div>
                  </div>
					 
					 
					 
					 
					  	  <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Geners</label>


                    <div class="col-sm-10">
                     <input type="text" class="form-control" name="geners" id="geners" placeholder="Geners" value="<?php echo $fetch_arr_edit["geners"]; ?>" >
                    </div>
                  </div>
						  
						  
						  
						    <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Directors</label>


                    <div class="col-sm-10">
                     <input type="text" class="form-control" name="directors" id="directors" placeholder="Directors" value="<?php echo $fetch_arr_edit["directors"]; ?>" >
                    </div>
                  </div>
							
							
							
							 <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Writers</label>


                    <div class="col-sm-10">
                     <input type="text" class="form-control" name="writers" id="writers" placeholder="Writers" value="<?php echo $fetch_arr_edit["writers"]; ?>" >
                    </div>
                  </div>
							 
							 
							  <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Casts</label>


                    <div class="col-sm-10">
                     <input type="text" class="form-control" name="casts" id="casts" placeholder="Casts" value="<?php echo $fetch_arr_edit["cast"]; ?>" >
                    </div>
                  </div>
							  
							  
					
					
					
					
					  <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Stars</label>


                    <div class="col-sm-10">
                     <input type="text" class="form-control" name="stars" id="stars" placeholder="Stars" value="<?php echo $fetch_arr_edit["stars"]; ?>" >
                    </div>
                  </div>
					  
					  
					  
					   <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Producers</label>


                    <div class="col-sm-10">
                     <input type="text" class="form-control" name="producers" id="producers" value="<?php echo $fetch_arr_edit["producers"]; ?>" placeholder="Producers" >
                    </div>
                  </div>
					   
					   
					   
					   
					    <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Release Date</label>


                    <div class="col-sm-10">
                     <input type="text" class="form-control" name="release_date" id="release_date" value="<?php echo $fetch_arr_edit["release_date"]; ?>" placeholder="Release Date" >
                    </div>
                  </div>
						
						
						
						
						
						
						
						
						
						 <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Movie Plot</label>


                    <div class="col-sm-10">
                     
                    
					<textarea class="form-control" name="plot" id="plot" placeholder="Movie Plot"  ><?php echo $fetch_arr_edit["plot"]; ?></textarea>
					</div>
                  </div>	
				  
				  
				  
				  
				  
				  
				  
				  
				   <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Movie Image</label>


                    <div class="col-sm-10">
                     
                    <input type="file" id="movie_image" class="form-control" name="movie_image" >
					
					</div>
                  </div>	
				  
				  
				  
				  
				  
				  
				  			   <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Language</label>


                    <div class="col-sm-10">
                     
                     <input type="text" class="form-control" name="language" id="language" value="<?php echo $fetch_arr_edit["language"]; ?>" placeholder="Language" >
					
					</div>
                  </div>	
				  
				  
				  
				  
				   <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Runtime</label>


                    <div class="col-sm-10">
                     
                     <input type="text" class="form-control" name="runtime" value="<?php echo $fetch_arr_edit["runtime"]; ?>" id="runtime" placeholder="Runtime" >
					
					</div>
                  </div>
				   
				   
				   
				     <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Storyline</label>


                    <div class="col-sm-10">
                     
                     <input type="text" class="form-control" value="<?php echo $fetch_arr_edit["storyline"]; ?>" name="storyline" id="storyline" placeholder="Storyline" >
					
					</div>
                  </div>
					 
					 
					 
					  <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Download Url</label>


                    <div class="col-sm-10">
                     
                     <input type="text" class="form-control" value="<?php echo $fetch_arr_edit["download_url"]; ?>" name="download_url" id="download_url" placeholder="Download Url" >
					
					</div>
                  </div>
					  
					  
					  
					  
					  
					  <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Youtube Video Embed Code</label>


                    <div class="col-sm-10">
                    <textarea class="form-control" name="video_embed_code"  id="video_embed_code" placeholder="YouTube Video Embed Code" > <?php echo $fetch_arr_edit["youtube_embed_code"]; ?></textarea>
                    </div>
                  </div>
					 
					 
					 
					 <div class="form-group">
                   <label for="inputName" class="col-sm-2 control-label">Movie Status</label>


                    <div class="col-sm-10">
                    <select id="movie_status" class="form-control" name="movie_status">
						<option id="" value="">Please Select Status</option>
						
						<option id="" value="" selected="selected"><?php echo $fetch_arr_edit["status"]; ?></option>
						
						<?php if($fetch_arr_edit["status"] === "Upcoming")
						{
						?>
						<option id="2" value="Released">Released</option>
						<?php
						}
						
						else
						{
							?>
							
							<option id="1" value="Upcoming">Upcoming</option>
							<?php
							
						}
						?>
						
						
					</select>
                    </div>
                  </div>
					 
					
                   
            
                    
                  
                 
                  
                  
                  
                  
                   
               
                    <br>
                  
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <button type="submit" name="edit_movie" class="btn btn-danger">Submit</button>
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
