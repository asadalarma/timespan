
 <?php

//include connection file


include("connection.php");


$connection=new connection();

$connection->connect();


 if(isset($_GET["id"]))
        {
           $upcoming_movie_id= $_GET["id"];
        }
        
        
        //first select the views and then calculate
        $select_views="select views from movies where 
          status='Upcoming'
           and
           id=".$upcoming_movie_id."
           AND
         is_deleted=0";
         
         
        $result_views= mysqli_query($conn,$select_views);
        
        $count_views=mysqli_num_rows($result_views);
        
        if($count_views > 0 )
        {
            $row_views=mysqli_fetch_array($result_views);
            $fetched_views=$row_views["views"];
        }
        
        if($fetched_views == "" || $fetched_views == 0)
        {
            $fetched_views=1;
        }
        else
        {
            $fetched_views=$fetched_views+1;
        }
        //update the view by movies id
        
        $update_view_by_id="update movies set views='$fetched_views' where id=".$upcoming_movie_id."";
        $result_view_by_id=mysqli_query($conn,$update_view_by_id);
        
        
        
?>



<!doctype html>
<html>

<!-- Mirrored from sirfleo.com/moviepreview.php?id=9119 by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Jul 2016 08:11:17 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
<html lang="en">
<meta charset="utf-8">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=1180px, width=device-width, initial-scale=1">
<title>Timespan | Upcoming Movies | Maari</title>
<meta name="description" content="SirfLeo is an Infotainment portal including News, Islamic material, Movies, Music, Games, Flash Games, Wallpapers, Chat, Radio, Greetingcards and much more..." />
<meta name="keywords" content="SirfLeo.Com | SirfLeo Entertainment Portal" />
<meta name="author" content="Bilaal Rana (0333-3740489 | 0320-3740489 | 0312-9211380) Faisal Bahadur (0313-2586576)" />
<meta name="copyright" content="2015 FB Solution Inc" />
<meta name="email" content="info@fbsolution.org" />
<meta name="visit" content="www.fbsolution.org" />
<META NAME="googlebot" CONTENT="index, follow">
<META NAME="robots" CONTENT="index, follow">
<!-- Global Style -->
<link href="css/style.css" rel="stylesheet" type="text/css">
<!-- Font awesome -->
<link rel="stylesheet" href="css/font-awesome.min.css">
<!-- Style of Responsive Mega menu -->
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/1-first-layout-color-3.css">
<link href="css/media-queries.css" rel="stylesheet" type="text/css">


<link rel="stylesheet" href="menu/assets/demo.css" type="text/css">
    <link rel="stylesheet" href="menu/assets/navigation-dark.css" type="text/css">
    <link rel="stylesheet" href="menu/assets/slicknav/slicknav.min.css" type="text/css">
    
    
   

<!-- News Update JavaScripts -->
<script src="js/xml.js"></script>

<!-- carouFredSel JavaScripts -->
<script src="js/jquery.min.js"></script>
<script src="js/jquery.carouFredSel-6.2.0-packed.js"></script>
<script type="text/javascript" language="javascript">
	jQuery.noConflict();
	jQuery(document).ready(function($) {
	$('#covers-trigger-1').carouFredSel({
		auto: false,
		prev: '#prev1', 
		next: '#next1',
		pagination: '#pager1',
		mousewheel: true,
		swipe: {
				onMouse: false,
				onTouch: false
				}
		});
	});
</script>
<!-- Video.js Version 4.12.7 -->
  <link href="video-js/video-js.css" rel="stylesheet" type="text/css">
  <script src="video-js/video.js"></script>
  <script>
    videojs.options.flash.swf = "video-js/video-js.swf";
  </script>
  <!-- END Video.js Version 4.12.7 -->
  
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
		<p class="date">Online Users: <b>81</b>
</p>
		<!--<a href="">About Us</a><a href="">Careers</a><a href="">Contact Us</a>-->
	</div>
</div>
<div class="header header-counter">
    	<div class="logo-holder">
        	<a href="index.html"><img src="images/logo.png" width="550" height="65" alt="SirfLeo.Com"></a>
        </div>
        
    </div>
	<!---- Main Menu ---->
    
<?php

include("navigation.php");
?>
    
    
    
    
	
	<!---- Content ---->
    <div class="content">
       <!-- <center><iframe src="images/ads728x90.jpg" width="730" height="92" scrolling="no" frameborder="0" name="I1"></iframe></center> -->
		<div class="sidebar">
			<p style="padding:5px"></p>
		<!-- Recommended Softwares -->
		
		
		<p style="padding:5px;background: #191919;"></p>
		<!---- News Update ---->
		<!--<div class="newstab">
		    <h2>Entertainment</h2>
		</div>-->
        <ul id="inline-product-list">
	<script language="Javascript" type="text/javascript">
	jQuery.noConflict();

	jQuery(document).ready(function($) {
		jQuery('.setCounter1').click(function(){
		var val=jQuery(this).val();
			jQuery.ajax({	
				type: "POST",
				url: "includes/updateCounter.php",
				data:  {id: "9119", count: "16",table:"movies"},
				cache: false,
				success: function(msg){
					}	
				});
			});
		});
		
		//	RSS News Feeds
		mainNewsObject = function(){
		var number=1, method, divcontainer, fileName;

		this.OnSuccess = function(){
		//	alert(this.GetResponseText());
			response = this.GetResponseXML();
			if(response){
				document.getElementById(divcontainer).innerHTML = readXML(response, divcontainer, number, true, false);
			}
		}

		this.GetNews = function(d_number, f_method, f_divcontainer, f_fileName){
			number = d_number;
			method = f_method;
			divcontainer = f_divcontainer;
			fileName = f_fileName;
			this.InitializeRequest(method, fileName);
			var Params = null;
			this.Commit(Params);
			}
		}
		mainNewsObject.prototype = new ajax();
		MainNews = new mainNewsObject();
	</script>
	<div class="contentbody RSS_divcontainer">
		<div id="maincontainer"><script> MainNews.GetNews(7,'GET', 'maincontainer', 'RSS/rss3.html'); </script></div>
    </div>
	    </ul>
	<!---- End News Update ---->
	
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
		<script></script>
	
		<p style="padding:5px"></p>
		<!---- Featured Movies ---->
        <div class="catalog-album-holder">
			<h2><a href="movies.html">Movies</a> &#155; Upcoming</h2>
            
			<form action="movies.php" id="searchbtnc" class="pjax" style="" method="get">
			<div  class="box clearfix inline-block">
			    <input type="text" name="search" placeholder="Just Movies Search Engine..." class="email"/>
				<div class="c-select clearfix">
				<select name="category" id="" class="a-d1">
				<option name="All" value="All">All Categories</option>
                    <?php
                    $select_category="select * from  movie_categories 
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
				<select name="quality" id="" class="a-d2">
				   <option name="All" value="All">All Qualities</option>
					 <?php
                    $select_quality="select * from  movie_qualities 
                      where is_deleted=0";
                      
                      
                      $result_quality=mysqli_query($conn,$select_quality);
                      
                      $count_quality=mysqli_num_rows($result_quality);
                      
                      if($count_quality > 0)
                      {
                        while($row_quality=mysqli_fetch_array($result_quality))
                        {
                            ?>
                            <option name="<?php echo $row_quality["name"]; ?>" value="<?php echo $row_quality["id"]; ?>"><?php echo $row_quality["name"]; ?></option>
                            <?php
                        }
                      }
                      
                    ?>
				</select>
				</div>
				<input class="site-btn" type="submit" value="Submit"></input>
			</div>
			</form>
		
        
        
        
        	<div class="covers">
            	<ul class="single-album">
                	<li>
                        
                        <?php
                        
                        $select_upcoming_movie_by_id="select * from movies where
                          status='Upcoming'
                         and 
                          id=".$upcoming_movie_id."
                           and
                      is_deleted=0";
                      
                      
                   $result_upcoming_movie_by_id = mysqli_query($conn,$select_upcoming_movie_by_id);
                   
                   
                   $count_upcoming_movie_by_id = mysqli_num_rows($result_upcoming_movie_by_id);
                   
                   if($count_upcoming_movie_by_id > 0)
                   {
                    while($row_upcoming_movie_by_id = mysqli_fetch_array($result_upcoming_movie_by_id))
                    {
                    ?>
                    
                    <div class="single-album-cover">
                        	<img src="<?php echo $row_upcoming_movie_by_id["poster_large"]; ?>" alt="<?php echo $row_upcoming_movie_by_id["name"]; ?>">
                        </div>
                    
                    
                    
                    
                    <div class="single-album-info">
                        	<h1><?php echo $row_upcoming_movie_by_id["name"]; ?></h1>
                            <div class="single-album-infofull">
							<div class="single-album-info-3">
							                 	        </div>
                            <div class="single-album-info-4">
                            	
								<div><span>Views     </span>: <b><?php echo $row_upcoming_movie_by_id["views"]; ?></b></div>
                            </div>
							</div>
                        </div>
 
 
 
 
 
 
 
                          		
                    <div class="single-album-info">
                        <table class="movie_detail table" cellpadding="0" cellspacing="0">
						<tbody>
						<tr>
							<td width="100"><b>Imdb Url</b></td>
							<td width="10"> : </td>
							<td><?php echo $row_upcoming_movie_by_id["imdb_url"]; ?></td>
						</tr>
						
                        
                        <tr>
							<td width="100"><b>Year</b></td>
							<td width="10"> : </td>
							<td><?php echo $row_upcoming_movie_by_id["year"]; ?></td>
						</tr>
                        
                        
                        <tr>
							<td width="100"><b>Rating</b></td>
							<td width="10"> : </td>
							<td><?php echo $row_upcoming_movie_by_id["rating"]; ?></td>
						</tr>
                        
                        
                        <tr>
                            <td width="100"><b>Genres</b></td>
							<td width="10"> : </td>
							<td>
                           <?php echo $row_upcoming_movie_by_id["geners"]; ?>
                            </td>
							</tr>
                        
                        
                         <tr>
                            <td width="100"><b>Directors</b></td>
							<td width="10"> : </td>
							<td class="movie_perview">
                <?php echo $row_upcoming_movie_by_id["directors"]; ?>
                            </td>
							</tr>
                        
                        
                        
                        <tr>
                            <td width="100"><b>Writers</b></td>
							<td width="10"> : </td>
							<td>
                 <?php echo $row_upcoming_movie_by_id["writers"]; ?> 
                            </td>
							</tr>
                        
                        
                         <tr>
                            <td width="100"><b>Casts</b></td>
							<td width="10"> : </td>
							<td class="movie_perview">
                   <?php echo $row_upcoming_movie_by_id["cast"]; ?> 
                            </td>
							</tr>
                         
                         
                         
                         
                         <tr>
                            <td width="100"><b>Stars</b></td>
							<td width="10"> : </td>
							<td>
                 <?php echo $row_upcoming_movie_by_id["stars"]; ?></a> 
                            </td>
							</tr>
                         
						<tr>
							<td width="100"><b>Added</b></td>
							<td width="10"> : </td>
							<td><?php echo $row_upcoming_movie_by_id["create_date"]; ?></td>
						</tr>
						
						
						<tr>
                            <td width="100"><b>Producers</b></td>
							<td width="10"> : </td>
							<td class="movie_perview">
                 <?php echo $row_upcoming_movie_by_id["producers"]; ?>
                            </td>
							</tr>
                        
                        <tr>
							<td width="100"><b>Release Date</b></td>
							<td width="10"> : </td>
							<td><?php echo $row_upcoming_movie_by_id["release_date"]; ?></td>
						</tr>
                        
                        
                        
                        <tr>
                            <td width="100"><b>Plot</b></td>
							<td width="10"> : </td>
							<td class="movie_perview">
                 <?php echo $row_upcoming_movie_by_id["plot"]; ?> 
                            </td>
							</tr>
                        
                        <tr>
							<td width="100"><b>Language</b></td>
							<td width="10"> : </td>
							<td><?php echo $row_upcoming_movie_by_id["language"]; ?></td>
						</tr>
                        
                        
                        
                        <tr>
							<td width="100"><b>Length</b></td>
							<td width="10"> : </td>
							<td class="movie_perview"><?php echo $row_upcoming_movie_by_id["runtime"]; ?> min</td>
						</tr>
                        
                        
                      
                        
						<tr>
                            
						
						<table class="movie_detail table" cellpadding="0" cellspacing="0"><tbody><tr>
													<td><?php echo $row_upcoming_movie_by_id["storyline"]; ?></td> 						</tr></tbody></table>
						</tbody>
						</table>
                        
                        
                        
					</div>
 
<h2>Trailer</h2>

 <div id="trailer" class="trailer" style="margin-left: 20%">
    
                           <?php echo $row_upcoming_movie_by_id["youtube_embed_code"]; ?> 
                        </div>
 
 
                    
                    <?php
                    
                    
                    }
                   }
                        ?>
                        
                    	
						
				
                    </li>
                </ul>
            </div>	
				
        </div>
		
		<!-- Related Movies -->
		<div class="right-part">
        	<div class="covers">
            	<div class="covers-holder">
                    <div class="list_carousel">
                        <div class="carousel-title-nav">
                            <h2>Related: Upcoming Movies <a href="#"><i class="fa fa-arrow-circle-o-right" title="More&#133;"></i></a></h2>
                            <div class="carousel-nav">
                                <a id="prev1" class="prev" href="#"></a>
                                <div id="pager1" class="pager"></div>
                                <a id="next1" class="next" href="#"></a>
                            </div>
                        </div>
                    <ul id="covers-trigger-1" >
										
                                        
                        <?php
                        
                        //select the data
                        $select_upcoming_movie="select * from movies where status='Upcoming'
                          and id=".$upcoming_movie_id."
                       and is_deleted=0";
                       
                       $result_upcoming_movie=mysqli_query($conn,$select_upcoming_movie);
                        
                        $count_upcoming_movie=mysqli_num_rows($result_upcoming_movie);
                        
                         if($count_upcoming_movie > 0)
                    {
                            while($row_upcoming_movie=mysqli_fetch_array($result_upcoming_movie))
                            {
                                $fetched_geners=$row_upcoming_movie["geners"];
                            }
                          $array_geners=  explode(",",$fetched_geners);
                          $selected_gener=$array_geners[0];
                          
                          
                          //now select the related gener upcoming movies
                          $select_related_gener="select * from movies 
                         where
                       status='Upcoming'
                        and
                        id not in (".$upcoming_movie_id.")
                        and
                    geners like '%".$selected_gener."%'
                          and 
                        is_deleted=0";
                        
                        
                        $result_related_gener=mysqli_query($conn,$select_related_gener);
                        
                        
                        $count_related_gener=mysqli_num_rows($result_related_gener);
                        
                        if($count_related_gener > 0)
                        
                        
                        {
                          while($row_related_gener=mysqli_fetch_array($result_related_gener))
                          {
                            ?>
                             <li><a  href="upcomingmovie.php?id=<?php echo $row_related_gener["id"]; ?>"><img class="movie_image" src="<?php echo $row_related_gener["poster_large"];  ?>" alt="<?php echo $row_related_gener["name"];  ?>"><div></div></a>
						<a href="upcomingmovie.php?id=<?php echo $row_related_gener["id"]; ?>"><span class="name" title="<?php echo $row_related_gener["name"]; ?>"><?php echo $row_related_gener["name"]; ?></span></a>
						<p class="categoryname2"><a href="#" class="wrap-space">Upcoming Movies</a></p>
						
						<div class="videoValue value"><p>View: 339</p>
						
						</div>
						<p class="value">Added :  <?php echo $row_related_gener["create_date"]; ?></p>
						</li> 
                            <?php
                          }
                        }
                        else
                        {
                           
                        }
                        
                        
                    }
                      
                        
                        
                        ?>
                                            
                       
										
													
													
											
											
						
				   </ul>
					</div>
                </div>
            </div>
        </div>
		<!-- END Related Movies -->
		<p style="padding:5px;background: #191919;"></p>

    </div><!-- Content End -->
	
	<!---- Footer ---->
    <!-- Movies Countdown -->
<script type="text/javascript" src="js/countdown/jquery.countdown.min.js"></script>
	
<script type="text/javascript"> 
jQuery.noConflict();
	jQuery(document).ready(function($) {

  $('#countdown').countdown({until: new Date('2016, 07, 29')}); 
});

</script>

<!-- END Movies Countdown -->
<div class="footer">	
		<div class="copyright">
        	Copyrights &copy; 2015 - 2016, SirfLeo.Com. All Rights Reserved. &#151; 
			Designed and Developed By <a href="http://www.fbsolution.org/" target="_blank">FB Solution Inc</a>
        </div>
        <div class="footer-social-holder">
            	<ul class="social-nav-1">
                	<li><a href="https://www.facebook.com/sirfleoportal" class="facebook-1" target="_blank"></a></li>
                    <li><a href="#" class="twitter-1" target="_blank"></a></li>
                    <li><a href="#" rel="publisher" class="google-1" target="_blank"></a></li>
                    <li><a href="#" class="rssfeed-1"></a></li>
                </ul>
		</div>
    </div>	
    
  
    
     
<!-- Bootstrap Modal -->





<link rel="stylesheet" href="assets/css/simplemodal.css" type="text/css" media="screen" title="no title" charset="utf-8">
<script src="assets/js/mootools-core-1.3.1.js" type="text/javascript" charset="utf-8"></script>
<script src="assets/js/mootools-more-1.3.1.1.js" type="text/javascript" charset="utf-8"></script>
<script src="assets/js/simple-modal.js" type="text/javascript" charset="utf-8"></script>
<!-- END Bootstrap Modal -->
<script>
	window.addEvent("domready", function(e){
	/* NO Footer */
	$("video").addEvent("click", function(e){
	e.stop();
	
    var SM = new SimpleModal({"hideFooter":true, "width":510});
        SM.show({
          "title":" Maari- Trailer",
          "model":"modal",
          "contents":'<video id="example_video_1" class="video-js vjs-default-skin" controls autoplay preload="auto" width="483" height="270" poster="auto" data-setup="{}"><source src="" type="video/" /></video>'
        });
  })
  /*
  "contents":'<iframe src="http://www.imdb.com/video/wab/tt1220719/imdb/embed?autoplay=true&width=480" width="500" height="270" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe>'
    */
  });
</script>




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



<!-- Mirrored from sirfleo.com/moviepreview.php?id=9119 by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Jul 2016 08:12:31 GMT -->
</html>