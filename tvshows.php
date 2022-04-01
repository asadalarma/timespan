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

<!-- Mirrored from sirfleo.com/games by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Jul 2016 07:49:33 GMT -->
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
	
	<!---- Social Media Widgets ---->
						<!------ Facebook Widget ------>
		<p style="padding:5px;background: #191919;"></p>
		<div id="fb-root"></div>
		<script>(function(d, s, id) { var js, fjs = d.getElementsByTagName(s)[0]; if (d.getElementById(id)) return; js = d.createElement(s); js.id = id; js.src = "../connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.3"; fjs.parentNode.insertBefore(js, fjs);}(document, 'script', 'facebook-jssdk'));</script>
		<!--<div class="socialmediabox">
		<div class="fb-page" data-href="https://www.facebook.com/sirfleoportal" data-width="300" data-hide-cover="false" data-show-facepile="false" data-show-posts="false"><div class="fb-xfbml-parse-ignore"><blockquote cite="https://www.facebook.com/sirfleoportal"><a href="https://www.facebook.com/sirfleoportal">SirfLeo</a></blockquote></div></div>
        </div>-->
		<!------ END Facebook Widget ------>
			
			<p style="padding:5px;background: #191919;"></p>
	<!---- Advertisement ---->
		<!--<div class="ad-300-250">
			<a href="#"><img src="uploads/advertisement/f4c2047c452e0c2276a641b7793b30e9.jpg" alt="Advertisement" style="width: 300px; height: 250px" /></a>
        </div>-->
	<!---- End Advertisement ---->
				</div>
		
		<p style="padding:5px"></p>
		<!---- Featured Games ---->
        <div class="catalog-album-holder">
            <h2> Tvshows</h2>
            <form action="tvshows.php" id="searchbtnc" class="pjax" style="" method="get">
			<div class="box clearfix inline-block">
			    <input type="text" name="search" placeholder="Just Tvshows Search Engine..." class="email"/>
				<div class="c-select clearfix">
				<select name="category" id="" class="a-d1">
                <option name="All" value="All">All Categories</option>
                    <?php
                    $select_category="select * from  tvshow_categories 
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
				
				
				<select class="advance_search" name="advance_search" id="advance_search">
					<option value="">Please Select</option>
                    <option value="lwa">Last Week Added</option>
					<option value="new">New Release</option>
					
					<option value="mostviews">Most Views</option>
					
				</select>
                
                <input class="site-btn" type="submit" value="Submit"></input>
			</div>
			</form>
				<br>
				<table style="margin-top: -11px;" width="100%" bgcolor="ffffff" height="30" border="0" cellspacing="0" cellpadding="0">
					<tr >
						<td align="center">
						<ul class="catalog-pagination-big">
						<li><a class="sortby">Sort By:</a></li>
						<li><a href="tvshows.php?search=num" class="">0-9</a></li>
						<li><a href=tvshows.php?search=A class=' '> A</a></li>
                        <li><a href=tvshows.php?search=B class=' '> B</a></li>
                        <li><a href=tvshows.php?search=C class=' '> C</a></li>
                        <li><a href=tvshows.php?search=D class=' '> D</a></li>
                        <li><a href=tvshows.php?search=E class=' '> E</a></li>
                        <li><a href=tvshows.php?search=F class=' '> F</a></li>
                        <li><a href=tvshows.php?search=G class=' '> G</a></li>
                        <li><a href=tvshows.php?search=H class=' '> H</a></li>
                        <li><a href=tvshows.php?search=I class=' '> I</a></li>
                        <li><a href=tvshows.php?search=J class=' '> J</a></li>
                        <li><a href=tvshows.php?search=K class=' '> K</a></li>
                        <li><a href=tvshows.php?search=L class=' '> L</a></li>
                        <li><a href=tvshows.php?search=M class=' '> M</a></li>
                        <li><a href=tvshows.php?search=N class=' '> N</a></li>
                        <li><a href=tvshows.php?search=O class=' '> O</a></li>
                        <li><a href=tvshows.php?search=P class=' '> P</a></li>
                        <li><a href=tvshows.php?search=Q class=' '> Q</a></li>
                        <li><a href=tvshows.php?search=R class=' '> R</a></li>
                        <li><a href=tvshows.php?search=S class=' '> S</a></li>
                        <li><a href=tvshows.php?search=T class=' '> T</a></li>
                        <li><a href=tvshows.php?search=U class=' '> U</a></li>
                        <li><a href=tvshows.php?search=V class=' '> V</a></li>
                        <li><a href=tvshows.php?search=W class=' '> W</a></li>
                        <li><a href=tvshows.php?search=X class=' '> X</a></li>
                        <li><a href=tvshows.php?search=Y class=' '> Y</a></li>
                        <li><a href=tvshows.php?search=Z class=' '> Z</a></li>                        <li></li>
                        <li><a href="tvshows.php?search=recentlyadded" class="recentlyadded">(Recently Added)</a></li>
						</ul>
						</td>
						
						<td align="right">
							<select class="selectextra" id="Category_Select" name="cat">
								<option value="All">-- Select Category --</option>
								 <?php
                    $select_category="select * from  tvshow_categories 
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
								
								<script>
						(function($){
						    // bind change event to select
							$('#Category_Select').bind('change', function () {
							var url = $(this).val(); // get selected value
							if (url) { // require a URL
							window.location = 'tvshows.php?category='+url; // redirect
							}
							return false;
							});
                            
                            
                            
                              $('#advance_search').bind('change', function () {
							var url = $(this).val(); // get selected value
							if (url) { // require a URL
							window.location = 'tvshows.php?advance_search='+url; // redirect
							}
							return false;
							});
							})(jQuery);
						</script>
						</td>
					</tr>
				</table>
				
			<!-- Games Content -->
			<div class="catalog_music">
                    <ul>
                        
                        <?php
                          //if search fields are set then search
                    
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
                       
                        
                        
                        
                        $select_search_query="select * from  tvshows 

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
            views >= (select max(views) from tvshows where is_deleted=0)";
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
							   
							   $select_tvshow_category_search="select * from tvshow_categories
							   where is_deleted=0";
							   
							   $result_tvshow_category_search=mysqli_query($conn,$select_tvshow_category_search);
							   
							   
							   $count_tvshow_category_search=mysqli_num_rows($result_tvshow_category_search);
							   
							   if($count_tvshow_category_search > 0)
							   {
								while($row_tvshow_category_search=mysqli_fetch_array($result_tvshow_category_search))
								{
									  if($category == $row_tvshow_category_search["id"])
                                    {
                                      $select_search_query.="and fk_tvshow_category_id=".$row_tvshow_category_search["id"]; 
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

                     <li><a href="tvshowpreview.php?id=<?php echo $row_search_query["id"]; ?>">
						<img class="movie_image" src="<?php echo $row_search_query["image_url"]; ?>" alt="<?php echo $row_search_query["name"]; ?>" style="width: 116px;height: 169px;"><div></div></a>
						
                        <?php
                       	
						
						 $select_tvshow_category_search_name="select * from tvshow_categories
							   where is_deleted=0";
							   
							   $result_tvshow_category_search_name=mysqli_query($conn,$select_tvshow_category_search_name);
							   
							   
							   $count_tvshow_category_search_name=mysqli_num_rows($result_tvshow_category_search_name);
							   
							   if($count_tvshow_category_search_name > 0)
							   {
								while($row_tvshow_category_search_name=mysqli_fetch_array($result_tvshow_category_search_name))
								{
									  if($row_search_query["fk_tvshow_category_id"] == $row_tvshow_category_search_name["id"])
							            {
							        	$category_name=$row_tvshow_category_search_name["name"];
							             }
								}
							   }
						
						
							
							
                    
                        ?>
			
	
                        
                        <a href="tvshowpreview.php?id=<?php echo $row_search_query["id"]; ?>" title="<?php echo $row_search_query["name"]; ?>"><span class="name"><?php echo $row_search_query["name"]; ?></span></a>
						<p class="categoryname"><a href="#" class="wrap-space"><?php echo $category_name; ?></a></p>
						<p class="gamesvalue">View: <?php echo $row_search_query["views"]; ?></p>
						<p class="gamesvalue">Download: <?php echo $row_search_query["downloads"]; ?></p>
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
                     //softwares by default      
                    $select_tvshows="
					  
                      
                      select tc.name 'tvshow_category_name'  ,t.id,t.name,t.image_url,t.views,t.downloads,t.create_date
                        from tvshows t,tvshow_categories tc
                         where
                       tc.id=t.fk_tvshow_category_id
                        and 
                    t.is_deleted=0
                        and
                   tc.is_deleted=0
                      order by t.id desc limit $start, $limit
					  ";
                      
                       $result_tvshows=mysqli_query($conn,$select_tvshows);
                   $count_tvshows= mysqli_num_rows($result_tvshows);
                   
                   if($count_tvshows > 0)
                   {
                    while($row_tvshows=mysqli_fetch_array($result_tvshows))
                    {
                        ?>
                       
                       
                    

                    
                    
                    <li><a href="tvshowpreview.php?id=<?php echo $row_tvshows["id"]; ?>">
						<img class="movie_image" src="<?php echo $row_tvshows["image_url"]; ?>" alt="<?php echo $row_tvshows["name"]; ?>" style="width: 116px;height: 169px;"><div></div></a>
						<a href="tvshowpreview.php?id=<?php echo $row_tvshows["id"]; ?>" title="Terminator Salvation"><span class="name"><?php echo $row_tvshows["name"]; ?></span></a>
						<p class="categoryname"><a href="#" class="wrap-space"><?php echo $row_tvshows["tvshow_category_name"]; ?></a></p>
						<p class="gamesvalue">View: <?php echo $row_tvshows["views"]; ?></p>
						<p class="gamesvalue">Download: <?php echo $row_tvshows["downloads"]; ?></p>
						</li>	
                        <?php
                    }
                   }
                   else
                   {
                   }
                      
                //sofwares by default ends  
                        
                        
            }     
                        ?>
                        
                        
                        
						
									
						
						
				   </ul>
			</div><!---- END Games Content ---->
        </div>
				<!------ Pagination ------>
				 <?php
                 //fetch all the data from database.
                 $select_all_tvshows="select * from tvshows
                 where
                
                
                is_deleted=0";
                 
                 $result_all_tvshows=mysqli_query($conn,$select_all_tvshows);
                 
                 
                 $count_all_tvshows=mysqli_num_rows($result_all_tvshows);
               //calculate total page number for the given table in the database 
                     $total=ceil($count_all_tvshows/$limit);
                     ?>
                     <!-- custom pagination -->
                     <div class="pagination1">
                      <p>&nbsp;&nbsp;Page 1 of <?php echo $page; ?> </p>
                     <?php
                     
                     
                   if($page>1)
                    {
                        
         //Go to previous page to show previous 10 items. If its in page 1 then it is inactive
            echo "<a href='tvshows.php?page=".($page-1)."' class='a-d1'>PREVIOUS</a>";
               }
              
            
            
                     
                     
            //show all the page link with page number. When click on these numbers go to particular page. 
       /* for($i=1;$i<=$total;$i++)
        {
            if($i==$page)
            {
            echo "<a href='tvshows.php?page=".$i."'>".$i."</a>";
            }
             
            else {
                echo "<a href='tvshows.php?page=".$i."'>".$i."</a>";
                }
        }*/
        
         if($page!=$total)
           {
    ////Go to previous page to show next 10 items.
    echo "<a href='tvshows.php?page=".($page+1)."' class='a-d1'>NEXT</a>";
            }
            
            ?>
                     
          </div>
				<!------ End Pagination ------>
		<p style="padding:5px;background: #191919;"></p>	
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


    <script src="menu/assets/slicknav/jquery.slicknav.min.js"></script>

<script>

    $(function(){

        var menu = $('.menu-navigation-dark');

        menu.slicknav();

        // Mark the clicked item as selected

        menu.on('click', 'a', function(){
            var a = $(this);

            a.siblings().removeClass('selected');
            a.addClass('selected');
        });
    });

</script>
</body>

<!-- Mirrored from sirfleo.com/games by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Jul 2016 07:51:14 GMT -->
</html>