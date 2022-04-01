<?php

//include connection file


include("connection.php");


$connection=new connection();

$connection->connect();

include("online_users.php");




// pagination  material
$start=0;
$limit=1;
 
if(isset($_GET['page']))
{
    $page=$_GET['page'];
    $start=($page-1)*$limit;
}
else{
    $page=1;
}



?>



<!doctype html>
<html>

<!-- Mirrored from sirfleo.com/videos by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Jul 2016 07:55:22 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
<html lang="en">
<?php
include("meta.php");

?>
<!-- Global Style -->
<link href="css/style.css" rel="stylesheet" type="text/css">
<!-- Font awesome -->
<link rel="stylesheet" href="css/font-awesome.min.css">
<!-- Style of Responsive Mega menu -->
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/1-first-layout-color-3.css">
<link href="css/media-queries.css" rel="stylesheet" type="text/css">

<link rel="stylesheet" href="menu/assets/demo.css">
    <link rel="stylesheet" href="menu/assets/navigation-dark.css">
    <link rel="stylesheet" href="menu/assets/slicknav/slicknav.min.css">
<!-- carouFredSel JavaScripts -->
<script src="js/jquery.min.js"></script>

<!-- html5.js for IE less than 9 -->
<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<!-- css3-mediaqueries.js for IE less than 9 -->
<!--[if lt IE 9]>
	<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->
</head>
<body>
<div class="wrapper">
	<div style="width:96.5%">
<p class="date"></p>
	<div class="nav">
		<p class="date">Online Users: <b>
			<?php
		if(isset($_SESSION["online_users"]))
		{
			echo $count_user_online;

		}
		?>
		</b>
</p>
		<!--<a href="">About Us</a><a href="">Careers</a><a href="">Contact Us</a>-->
	</div>
</div>
<?php
    
    include("headercounter.php");
    
	
	
    
   
			

    
    include("navigation.php");
    ?>
    
	<!---- Content ---->
    <div class="content">
	
	
		<p style="padding:5px"></p>
		<!---- Video Content ---->
        <div class="catalog-video-holder">
            <h2>Videos</h2>
            <form action="videos.php" id="searchbtnc" class="pjax" style="" method="get">
			<div class="videobox clearfix inline-block">
			    <input type="text" name="search" placeholder="Just Videos Search Engine..." class="email"/>
				<div class="videoc-select clearfix">
				<select name="category" id="" class="videoa-d">
				    <option value="All">All Categories</option>
                  <?php
                    $select_category="select * from  video_categories 
                      where is_deleted=0";
                      
                      
                      $result_category=mysqli_query($conn,$select_category);
                      
                      $count_category=mysqli_num_rows($result_category);
                      
                      if($count_category > 0)
                      {
                        while($row_category=mysqli_fetch_array($result_category))
                        {
                            ?>
                            <option name="<?php echo $row_category["name"]; ?>" value="<?php echo $row_category["id"]; ?>"><?php echo $row_category["name"]; ?></option>
                            <?php
                        }
                      }
                      
                    ?>
                </select>	
                </div>
				<input class="videosite-btn" type="submit" value="Search"></input>
			</div>
			</form>
				
				<table style="margin-top:4px;" width="100%" style="border-bottom: 1px solid #CCC;" bgcolor="F2F2F2" height="30" border="0" cellspacing="0" cellpadding="0">
					<tr>		
						<td align="center">
						<ul class="catalog-pagination-big" style="width: 100%;align:left;">
						<li><a class="sortby">All Videos</a></li>
                        <li></li>
						</ul>
						</td>
						<td align="right">
							<select class="selectextra" id="advance_search" name="advance_search">
								<option value="">Please Select</option>
                               <option value="lwa">Last Week Added</option>
					           <option value="new">New Release</option>
					
					         <option value="mostviews">Most Views</option>
								<option value="mostdownloads">Most Downloads</option>
							</select>
						<script>
						(function($){
						    // bind change event to select
							$('#advance_search').bind('change', function () {
							var url = $(this).val(); // get selected value
							if (url) { // require a URL
							window.location = 'videos.php?advance_search='+url; // redirect
							}
							return false;
							});
							})(jQuery);
						</script>
						</td>
					</tr>
				</table>
				
                    <div class="catalog_video">
                    <ul>
						<?php
			
			 if(isset($_GET["search"]) || !empty($_GET["search"]) ||  isset($_GET["advance_search"])  || !empty($_GET["advance_search"])   || !empty($_GET["category"])  || isset($_GET["category"]) )
            {
                        
                        //now taking all the variables
                        if(isset($_GET["search"]))
                        {
                           $search=$_GET["search"]; 
                        }
                        else
                        {
                           $search=""; 
                        }
                        
                       
                        
                        if(isset($_GET["category"]))
                        {
                           $category=$_GET["category"]; 
                        }
                        else
                        {
                           $category=""; 
                        }
                        
                        
                         
                        if(isset($_GET["advance_search"]))
                        {
                           $advance_search=$_GET["advance_search"]; 
                        }
                        else
                        {
                           $advance_search=""; 
                        }
                       
                        
                        
                        
                        $select_search_query="select * from  videos 

                          where 
                         is_deleted=0
                           
                             ";
                             
                             if(!empty($advance_search) || $advance_search != "")
                             {
                                if($advance_search == "lwa")
                                {
                                   
                                    $select_search_query.="
                                    and create_date  between  DATE_FORMAT(date_sub(Now(),INTERVAL 1 WEEK),'%d/%m/%Y %h:%i:%s %p') and DATE_FORMAT(Now(),'%d/%m/%Y %h:%i:%s %p')"; 
                                }
                                
                                if($advance_search == "new")
                                {
                                    $select_search_query.="
                                    order by id desc limit 10";
                                }
                                
                                if($advance_search == "mostviews")
                                {
                                     $select_search_query.="and
            views >= (select max(views) from videos where is_deleted=0)";
                                }
								
								if($advance_search == "mostdownloads")
                                {
                                     $select_search_query.="and
            downloads >= (select max(downloads) from videos where is_deleted=0)";
                                }
                             }
                             
                             if(!empty($search) || $search != "")
                             {
								
								if($search != "num" && $search != "recentlyadded")
                                {
									
                                $select_search_query.="and name like '".$search."%'";
                                }
                                if($search == "num")
                                {
									
                                    $select_search_query.="and name REGEXP '^[0-9]'";
                                }
								
								if($search == "recentlyadded")
								{
									
									$select_search_query.="order by id desc limit 10";
								}
                                
                             }
                             
                             if(!empty($category) || $category != "")
                             {
                               /* if($category == "All")
                                {
                                    
                                 $select_search_query.="or fk_movie_category_id=''";
                                }*/
                               
							   
							     //select tvshow_categories for search
							   
							   $select_video_category_search="select * from video_categories
							   where is_deleted=0";
							   
							   $result_video_category_search=mysqli_query($conn,$select_video_category_search);
							   
							   
							   $count_video_category_search=mysqli_num_rows($result_video_category_search);
							   
							   if($count_video_category_search > 0)
							   {
								while($row_video_category_search=mysqli_fetch_array($result_video_category_search))
								{
									  if($category == $row_video_category_search["id"])
                                    {
                                      $select_search_query.="and fk_video_category_id=".$row_video_category_search["id"]; 
                                     }
								}
							   }
							   
							 
							   
							   
							   
                                
                             
                               
                                
                               
                              
                                

                             }
                             
                             
                             
                             $result_search_query=mysqli_query($conn,$select_search_query);
                             
                            $count_search_query= mysqli_num_rows($result_search_query);
                            
                if($count_search_query > 0)
                {
                                while($row_search_query=mysqli_fetch_array($result_search_query))
                    {
                        ?>

                  
						 <li><a href="videopreview.php?id=<?php echo $row_search_query["id"]; ?>">
						<img class="movie_image" src="<?php echo $row_search_query["image_url"]; ?>" alt="<?php echo $row_search_query["name"]; ?>" style="width: 205px;height: 114px;"><div></div></a>
					
                        <?php
                       	
						
						 $select_video_category_search_name="select * from video_categories
							   where is_deleted=0";
							   
							   $result_video_category_search_name=mysqli_query($conn,$select_video_category_search_name);
							   
							   
							   $count_video_category_search_name=mysqli_num_rows($result_video_category_search_name);
							   
							   if($count_video_category_search_name > 0)
							   {
								while($row_video_category_search_name=mysqli_fetch_array($result_video_category_search_name))
								{
									  if($row_search_query["fk_video_category_id"] == $row_video_category_search_name["id"])
							            {
							        	$category_name=$row_video_category_search_name["name"];
							             }
								}
							   }
						
						
							
							
                    
                        ?>
			
	
                      
					 
						<a href="videopreview.php?id=<?php echo $row_search_query["id"]; ?>" class="wrap-space" title="<?php echo $row_search_query["name"]; ?>"><span class="name"><?php echo $row_search_query["name"]; ?></span></a>
						<p class="categoryname"><a href="#" class="wrap-space"><?php echo $category_name; ?></a></p>
						<p class="value">View: <?php echo $row_search_query["views"]; ?></p>
						
						
						
						<p class="value">Added Date: <?php echo $row_search_query["create_date"]; ?></p>
						</li>
                        <?php
                    } 
                }
                else
                {
                    echo "No Search Found";
                }
                        
            }     
             
			
			
						
						
						
						
						
			else
			{
						//videos by default      
                    $select_videos="
					  
					  select vc.name 'video_category_name'  ,v.id,v.name,v.image_url,v.views,v.downloads,v.create_date
                        from videos v,video_categories vc
                         where
                       vc.id=v.fk_video_category_id
                        and 
                    v.is_deleted=0
                        and
                   vc.is_deleted=0
                      order by v.id desc limit $start, $limit
					 
					  ";
                      
                       $result_videos=mysqli_query($conn,$select_videos);
                   $count_videos= mysqli_num_rows($result_videos);
                   
                   if($count_videos > 0)
                   {
                    while($row_videos=mysqli_fetch_array($result_videos))
                    {
                        ?>
                       
                       
                    

                    
        
					
					
					<li><a href="videopreview.php?id=<?php echo $row_videos["id"]; ?>">
						<img class="movie_image" src="<?php echo $row_videos["image_url"]; ?>" alt="<?php echo $row_videos["name"]; ?>" style="width: 205px;height: 114px;"><div></div></a>
						<a href="videopreview.php?id=<?php echo $row_videos["id"]; ?>" class="wrap-space" title="<?php echo $row_videos["name"]; ?>"><span class="name"><?php echo $row_videos["name"]; ?></span></a>
						<p class="categoryname"><a href="#" class="wrap-space"><?php echo $row_videos["video_category_name"]; ?></a></p>
						<p class="value">View: <?php echo $row_videos["views"]; ?></p>
						
						
						
						<p class="value">Added Date: <?php echo $row_videos["create_date"]; ?></p>
						</li>
					
					
					
                        <?php
                    }
                   }
                   else
                   {
                   }
                      
                //videos by default ends
				
			}	
				?>
						
						
											
									   </ul>
					</div>

        </div><!---- END Video Content ---->
		
			<!-- Start Pagination -->
				 <?php
                 //fetch all the data from database.
                 $select_all_videos="select * from videos
                 where
                
                
                is_deleted=0";
                 
                 $result_all_videos=mysqli_query($conn,$select_all_videos);
                 
                 
                 $count_all_videos=mysqli_num_rows($result_all_videos);
               //calculate total page number for the given table in the database 
                     $total=ceil($count_all_videos/$limit);
                     ?>
                     <!-- custom pagination -->
                     <div class="pagination2">
                      <p>&nbsp;&nbsp;Page 1 of <?php echo $page; ?> </p>
                     <?php
                     
                     
                   if($page>1)
                    {
                        
         //Go to previous page to show previous 10 items. If its in page 1 then it is inactive
            echo "<a href='videos.php?page=".($page-1)."' class='a-d1'>PREVIOUS</a>";
               }
              
            
            
                     
                     
            //show all the page link with page number. When click on these numbers go to particular page. 
       /* for($i=1;$i<=$total;$i++)
        {
            if($i==$page)
            {
            echo "<a href='videos.php?page=".$i."'>".$i."</a>";
            }
             
            else {
                echo "<a href='videos.php?page=".$i."'>".$i."</a>";
                }
        }*/
        
         if($page!=$total)
           {
    ////Go to previous page to show next 10 items.
    echo "<a href='videos.php?page=".($page+1)."' class='a-d1'>NEXT</a>";
            }
            
            ?>
                     
          </div>
				
				
				<!-- End Pagination -->
		<p style="padding:5px;"></p>	
    </div><!-- Content End -->
	
    <!---- Footer ---->
    <!-- Movies Countdown -->
<script type="text/javascript" src="js/countdown/jquery.countdown.min.js"></script>
<script type="text/javascript"> 
$(function () {

  $('#countdown').countdown({until: new Date('2016, 07, 29')}); 
});
</script>
<!-- END Movies Countdown -->
<?php
include("footer.php");
?>
</div>
</body>

<!-- Mirrored from sirfleo.com/videos by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Jul 2016 07:56:20 GMT -->
</html>