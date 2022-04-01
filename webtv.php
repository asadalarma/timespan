
 <?php

//include connection file


include("connection.php");


$connection=new connection();

$connection->connect();

include("online_users.php");




?>




<!doctype html>
<html>

<!-- Mirrored from sirfleo.com/webtv by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Jul 2016 08:02:33 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
<html lang="en">
<?php
include("meta.php");

?>

<script type="text/javascript">
 <!--
  if (screen.width <= 700) {
  window.location = "http://mobitv.sirfleo.com/";
  }
 //-->
</script>
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

<!-- jQuery mCustomScrollbar -->
<link rel="stylesheet" href="css/jquery.mCustomScrollbar.css" />
<script src="js/jquery.mCustomScrollbar.concat.min.js"></script>	
<script>
	(function($){
		$(window).load(function(){
				
		$(".data").mCustomScrollbar({
			autoHideScrollbar:true,
			theme:"minimal-dark"
		});
				
		});
	})(jQuery);
</script>

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
       <!-- <center><iframe src="images/ads728x90.jpg" width="730" height="92" scrolling="no" frameborder="0" name="I1"></iframe></center> -->
		<div class="webtv-right">
		    <div class="ch-head">
			<h2 id="channel_title" class="channel_title">Al Quran Al Kareem</h2>
			</div>
			
			<div class="ch-stream">
			    <div>
				<script type='text/javascript' src='jwplayer/swfobject.js'></script>
				<div id='mediaspace'><a href="http://get.adobe.com/flashplayer">
					Hello, you either have JavaScript <br />turned off or an issue with version of Adobe's Flash Player.<br /> Get the latest Flash player.
				</a></div>
					<script type='text/javascript'> 
					var so = new SWFObject('jwplayer/player.swf','mpl','486','320','9');
					so.addParam('allowfullscreen','true');
					so.addParam('allowscriptaccess','always');
					so.addParam('wmode','opaque');
					//so.addVariable('plugins','hd-1');
					//so.addVariable('hd.file', 'onlineptvsports');
					//so.addVariable('hd.state','true'); //too choose hd as default.
					so.addVariable('file','mecca');
					so.addVariable('skin','jwplayer/bekle.xml');  
					so.addVariable('streamer','rtmp://live.fundady.com/tv?wmsAuthSign=');
					so.addVariable('controlbar','over');
					so.addVariable('autostart','true');
					so.addVariable('stretching','exactfit');
					so.addVariable('dock', 'true');
					so.write('mediaspace');
					</script>
				</div>
			</div>
            
               
			
			<!--<div class="webtv-message">
			Choose any of your favourite channel from the list
			</div>-->
            
            
            
            
			
				</div>
                
                 <div class="webtv-holder">
			
			<div class="webtv-inner">
			<h2>Web Tv</h2>
			<div class="webs">	
				<div class="webselect clearfix">
				<select name="category" id="category" class="webd" onChange="getState(this.value);">
				    <option value="0">-- Select Category --</option>
					
					<?php
					$select_webtv_category_sql="select * from webtv_categories where is_deleted=0";
					
					$result_webtv_category=mysqli_query($conn,$select_webtv_category_sql);
					
					
					$count_webtv_category=mysqli_num_rows($result_webtv_category);
					
					if($count_webtv_category > 0)
					{
						while($row_webtv_category=mysqli_fetch_array($result_webtv_category))
						
						{
							?>
							<option value="<?php echo $row_webtv_category["id"]; ?>"><?php echo $row_webtv_category["name"]; ?></option>
							
							<?php
						}
					}
					?>
										
						
				</select>
				</div>
			</div>
			</div>
			
			
			<script>
function getState(val) {
	
	$.ajax({
	type: "POST",
	url: "get_news_channel.php",
	data:'news_channel_id='+val,
	
	success: function(data){
		$("#channellist").html(data);
	}
	});
}
</script>
			
        <div class="data mCustomScrollbar _mCS_1 mCS-autoHide mCS_no_scrollbar" data-mcs-theme="minimal-dark" id="content_1" style="position: relative; overflow: visible;">
			<div class="data mCustomScrollbar _mCS_2 mCS-autoHide" data-mcs-theme="minimal-dark" id="content_1" style="position: relative; overflow: visible;">
				<div id="mCSB_2" class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside" tabindex="0">
					<div id="mCSB_2_container" class="mCSB_container" style="position: relative; top: -1px; left: 0px;" dir="ltr">
						<ul id="channellist">
							
								
						</ul>
					</div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical mCSB_scrollTools_onDrag" style="display: block;"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger mCSB_dragger_onDrag" style="position: absolute; min-height: 50px; display: block; height: 232px; max-height: 376px; top: 0px;" oncontextmenu="return false;"><div class="mCSB_dragger_bar" style="line-height: 50px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>





<script>
$(document).ready(function(){

//this function enable the scoller 	
 $("#content_1").mCustomScrollbar({
  
 scrollButtons: {enable: true,}});
	var category_val=$('#category').val(); 
$.ajax({
	type: "POST",
	url: "get_news_channel.php",
	data:'news_channel_id='+category_val,
	
	success: function(data){
		$("#channellist").html(data);
	}
	});
	

});
	
 $( document ).on( "click", "a.live", function() {
 
	var TV_id = $(this).attr('id'); // Get the id of channel
var TV_filename = $(this).attr('name');
var TV_title = $(this).attr('title');
var TV_streamer = $(this).attr('item');
$('.channel_title').html(TV_title);
	
	
	
	
	var so = new SWFObject('jwplayer/player.swf','mpl','486','320','9');
					so.addParam('allowfullscreen','true');
					so.addParam('allowscriptaccess','always');
					so.addParam('wmode','opaque');
					//so.addVariable('plugins','hd-1');
					//so.addVariable('hd.file', 'onlineptvsports');
					//so.addVariable('hd.state','true'); //too choose hd as default.
					so.addVariable('file',TV_filename);
					so.addVariable('skin','jwplayer/bekle.xml');  
					so.addVariable('streamer',TV_streamer);
					so.addVariable('controlbar','over');
					so.addVariable('autostart','true');
					so.addVariable('stretching','exactfit');
					so.addVariable('dock', 'true');
					so.write('mediaspace');

});
</script>           
        </div>
		
		<p style="padding:5px"></p>
		<!---- Featured Movies ---->
        
       
      <br /><br />
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

<br>
<be>
<?php
include("footer.php");
?>
</div>
</body>

<!-- Mirrored from sirfleo.com/webtv by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Jul 2016 08:02:48 GMT -->
</html>