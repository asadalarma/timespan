<script>
/*$(document).ready(function(){
  $('.treeview').click(function(e) {
    e.preventDefault();
    //alert("ef");
      $(this).removeClass('treeview');
       $('li').removeClass('active treeview');
    $(this).addClass('active');
      var currentPage = window.location.href;
      var href = $('.active a').attr('href');
      alert(href);
     window.location.href = "<?php echo SITE_ROOT; ?>"+href;
      
      //get page name
      var lastPathSegment = href.substr(href.lastIndexOf('/') + 1);
      alert(lastPathSegment);
     
       // $(this).addClass('active treeview');
    
      
     
});
    });*/
</script>  


<!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="bootstrap/image/profile.png" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p> Al-Khalid</p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- search form -->
    <!--  <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>-->
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">MAIN NAVIGATION</li>
        <li  <?php if(basename($_SERVER['PHP_SELF']) == "dashboard.php")
    
    {
echo 'class="treeview active"';        
    }
    else
    {
        echo 'class="treeview"';
    }
               
               ?>>
          <a href="dashboard.php">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span> 
          </a>
       <!-- <ul class="treeview-menu">
            <li class="active"><a href="index.html"><i class="fa fa-circle-o"></i> Dashboard v1</a></li>
            <li><a href="index2.html"><i class="fa fa-circle-o"></i> Dashboard v2</a></li>
          </ul>-->
        </li>
          
     
        
          
              <li  <?php if(basename($_SERVER['PHP_SELF']) == "users.php")
    
    {
echo 'class="treeview active"';        
    }
    else
    {
        echo 'class="treeview"';
    }
               
               ?>>
          <a href="users.php">
            <i class="fa fa-dashboard"></i> <span>Users</span> 
          </a>
       <!-- <ul class="treeview-menu">
            <li class="active"><a href="index.html"><i class="fa fa-circle-o"></i> Dashboard v1</a></li>
            <li><a href="index2.html"><i class="fa fa-circle-o"></i> Dashboard v2</a></li>
          </ul>-->
        </li>
          

    
    
           <li  <?php if(basename($_SERVER['PHP_SELF']) == "banners.php")
    
    {
echo 'class="treeview active"';        
    }
    else
    {
        echo 'class="treeview"';
    }
               
               ?>>
          <a href="banners.php">
            <i class="fa fa-pie-chart"></i>
            <span>Banners</span>
           
          </a>
        
           </li> 
          
          
          
          
            <li <?php if(basename($_SERVER['PHP_SELF']) == "game_categories.php")
    
    {
echo 'class="treeview active"';        
    }
    else
    {
        echo 'class="treeview"';
    }
               
               ?>>
          <a href="game_categories.php">
            <i class="fa fa-pie-chart"></i>
            <span>Game Categories</span>
           
          </a>
        
        </li> 
          
          
          
          
            <li <?php if(basename($_SERVER['PHP_SELF']) == "movie_categories.php")
    
    {
echo 'class="treeview active"';        
    }
    else
    {
        echo 'class="treeview"';
    }
               
               ?>>
          <a href="movie_categories.php">
            <i class="fa fa-dashboard"></i> <span>Movie Categories</span> 
          </a>
       
        </li>
          
          
          
        <li <?php if(basename($_SERVER['PHP_SELF']) == "movie_qualities.php")
    
    {
echo 'class="treeview active"';        
    }
    else
    {
        echo 'class="treeview"';
    }
               
               ?>>
          <a href="movie_qualities.php">
            <i class="fa fa-files-o"></i>
            <span>Movie Qualities</span>
            
           
          </a>
         
        </li>
          
          
          
          
       
          
       
          
           <li <?php if(basename($_SERVER['PHP_SELF']) == "music_categories.php")
    
    {
echo 'class="treeview active"';        
    }
    else
    {
        echo 'class="treeview"';
    }
               
               ?>>
          <a href="music_categories.php">
            <i class="fa fa-dashboard"></i> <span>Music Categories</span> 
          </a>
       
        </li>
          
          
      
          
          
          
     
        
           
           <li <?php if(basename($_SERVER['PHP_SELF']) == "online_game_categories.php")
    
    {
echo 'class="treeview active"';        
    }
    else
    {
        echo 'class="treeview"';
    }
               
               ?>>
          <a href="online_game_categories.php">
            <i class="fa fa-dashboard"></i> <span>Online Game Categories</span> 
          </a>
       
        </li>
        
         
          
          
          
            <li <?php if(basename($_SERVER['PHP_SELF']) == "software_categories.php")
    
    {
echo 'class="treeview active"';        
    }
    else
    {
        echo 'class="treeview"';
    }
               
               ?>>
          <a href="software_categories.php">
            <i class="fa fa-dashboard"></i> <span>Software Categories</span> 
          </a>
       
        </li>
          
          
          
          
          
           <li <?php if(basename($_SERVER['PHP_SELF']) == "tvshow_categories.php")
    
    {
echo 'class="treeview active"';        
    }
    else
    {
        echo 'class="treeview"';
    }
               
               ?>>
          <a href="tvshow_categories.php">
            <i class="fa fa-dashboard"></i> <span>Tv Show Categories</span> 
          </a>
       
        </li>
        
          
          
           <li <?php if(basename($_SERVER['PHP_SELF']) == "video_categories.php")
    
    {
echo 'class="treeview active"';        
    }
    else
    {
        echo 'class="treeview"';
    }
               
               ?>>
          <a href="video_categories.php">
            <i class="fa fa-dashboard"></i> <span>Video Categories</span> 
          </a>
       
        </li>
      
          
          
             
           <li <?php if(basename($_SERVER['PHP_SELF']) == "wallpaper_categories.php")
    
    {
echo 'class="treeview active"';        
    }
    else
    {
        echo 'class="treeview"';
    }
               
               ?>>
          <a href="wallpaper_categories.php">
            <i class="fa fa-dashboard"></i> <span>Wallpaper Categories</span> 
          </a>
       
        </li>
      
       
          
           <li <?php if(basename($_SERVER['PHP_SELF']) == "webtv_categories.php")
    
    {
echo 'class="treeview active"';        
    }
    else
    {
        echo 'class="treeview"';
    }
               
               ?>>
          <a href="webtv_categories.php">
            <i class="fa fa-dashboard"></i> <span>WebTv Categories</span> 
          </a>
       
        </li>
        
        <li <?php if(basename($_SERVER['PHP_SELF']) == "games.php")
    
    {
echo 'class="treeview active"';        
    }
    else
    {
        echo 'class="treeview"';
    }
               
               ?>>
          <a href="games.php">
            <i class="fa fa-dashboard"></i> <span>Games</span> 
          </a>
       
        </li>
        
        
        
        <li <?php if(basename($_SERVER['PHP_SELF']) == "movies.php")
    
    {
echo 'class="treeview active"';        
    }
    else
    {
        echo 'class="treeview"';
    }
               
               ?>>
          <a href="movies.php">
            <i class="fa fa-dashboard"></i> <span>Movies</span> 
          </a>
       
        </li>
        
        
        
        
         <li <?php if(basename($_SERVER['PHP_SELF']) == "musics.php")
    
    {
echo 'class="treeview active"';        
    }
    else
    {
        echo 'class="treeview"';
    }
               
               ?>>
          <a href="musics.php">
            <i class="fa fa-dashboard"></i> <span>Musics</span> 
          </a>
       
        </li>
        
        
        <li <?php if(basename($_SERVER['PHP_SELF']) == "online_games.php")
    
    {
echo 'class="treeview active"';        
    }
    else
    {
        echo 'class="treeview"';
    }
               
               ?>>
          <a href="online_games.php">
            <i class="fa fa-dashboard"></i> <span>Online Game</span> 
          </a>
       
        </li>
        
        
        <li <?php if(basename($_SERVER['PHP_SELF']) == "softwares.php")
    
    {
echo 'class="treeview active"';        
    }
    else
    {
        echo 'class="treeview"';
    }
               
               ?>>
          <a href="softwares.php">
            <i class="fa fa-dashboard"></i> <span>Softwares</span> 
          </a>
       
        </li>
        
        
           <li <?php if(basename($_SERVER['PHP_SELF']) == "tvshows.php")
    
    {
echo 'class="treeview active"';        
    }
    else
    {
        echo 'class="treeview"';
    }
               
               ?>>
          <a href="tvshows.php">
            <i class="fa fa-dashboard"></i> <span>Tv Show</span> 
          </a>
       
        </li>
        
        
        <li <?php if(basename($_SERVER['PHP_SELF']) == "videos.php")
    
    {
echo 'class="treeview active"';        
    }
    else
    {
        echo 'class="treeview"';
    }
               
               ?>>
          <a href="videos.php">
            <i class="fa fa-dashboard"></i> <span>Video</span> 
          </a>
       
        </li>
        
      
          
          <li <?php if(basename($_SERVER['PHP_SELF']) == "wallpapers.php")
    
    {
echo 'class="treeview active"';        
    }
    else
    {
        echo 'class="treeview"';
    }
               
               ?>>
          <a href="wallpapers.php">
            <i class="fa fa-dashboard"></i> <span>Wallpaper</span> 
          </a>
       
        </li>
          
          
          
          <li <?php if(basename($_SERVER['PHP_SELF']) == "webtv.php")
    
    {
echo 'class="treeview active"';        
    }
    else
    {
        echo 'class="treeview"';
    }
               
               ?>>
          <a href="webtv.php">
            <i class="fa fa-dashboard"></i> <span>Web Tv</span> 
          </a>
       
        </li>
          
          
          
        
        </ul>
        
      
    </section>
    <!-- /.sidebar -->
  </aside>