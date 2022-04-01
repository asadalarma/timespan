<?php

/////////////////////////////////////////////////////////////////////////////////////////////////////////
// WebService for Php
// Author: Muhammad Asad
// 
// 
// 
// 
// 
/////////////////////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////




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
            
			if(isset($_POST["add_movie_from_imdb"]))
            {
               include("imdb.php");

$imdb_tt_id = mysql_real_escape_string($_POST["imdb_tt_id"]);

$video_embed_code = mysql_real_escape_string($_POST["video_embed_code"]);

$movie_status = mysql_real_escape_string($_POST["movie_status"]);


$i = new Imdb ();
$mArr = $i->getMovieInfoById($imdb_tt_id);



$title_id=$mArr["title_id"];

if(is_array($title_id) == true)
{
   $title_id= implode(',', $title_id);
}


$imdb_url=$mArr["imdb_url"];

if(is_array($imdb_url) == true)
{
   $imdb_url= implode(',', $imdb_url);
}


$title=$mArr["title"];
if(is_array($title) == true)
{
   $title= implode(',', $title);
}


$year=$mArr["year"];

if(is_array($year) == true)
{
   $year= implode(',', $year);
}


$rating=$mArr["rating"];

if(is_array($rating) == true)
{
   $rating= implode(',', $rating);
}

$genres=$mArr["genres"];

if(is_array($genres) == true)
{
   $genres= implode(',', $genres);
   
}


$directors=$mArr["directors"];

if(is_array($directors) == true)
{
   $directors= implode(',', $directors);
}


$writers=$mArr["writers"];

if(is_array($writers) == true)
{
   $writers= implode(',', $writers);
}


$cast=$mArr["cast"];


if(is_array($cast) == true)
{
   $cast= implode(',', $cast);
}


$stars=$mArr["stars"];


if(is_array($stars) == true)
{
   $stars= implode(',', $stars);
}




$producers=$mArr["producers"];


if(is_array($producers) == true)
{
   $producers= implode(',', $producers);
}



$release_date=$mArr["release_date"];

if(is_array($release_date) == true)
{
   $release_date= implode(',', $release_date);
}


$plot=$mArr["plot"];


if(is_array($plot) == true)
{
   $plot= implode(',', $plot);
}


$poster=$mArr["poster"];

if(is_array($poster) == true)
{
   $poster= implode(',', $poster);
}



$poster_large=$mArr["poster_large"];


if(is_array($poster_large) == true)
{
   $poster_large= implode(',', $poster_large);
}


$poster_full=$mArr["poster_full"];

if(is_array($poster_full) == true)
{
   $poster_full= implode(',', $poster_full);
}




$language=$mArr["language"];

if(is_array($language) == true)
{
   $language= implode(',', $language);
}


$runtime=$mArr["runtime"];
if(is_array($runtime) == true)
{
   $runtime= implode(',', $runtime);
}


$storyline2=mysql_real_escape_string($mArr["storyline2"]);


date_default_timezone_set("Asia/Karachi"); 
    $current_date= date('d/m/Y H:i:s a'); 

//now insert into movies table


$insert_movies="insert into movies
(name,description,title_id,imdb_url,year,rating,geners,directors,writers,cast,stars,
producers,
release_date,
plot,
poster,
poster_large,
poster_full,
language,
runtime,
storyline,
status,
youtube_embed_code,create_date) values
('$title',
'$title',
'$title_id',
'$imdb_url',
'$year',
'$rating',
'$genres',
'$directors',
'$writers',
'$cast',
'$stars',
'$producers',
'$release_date',
'$plot',
'$poster',
'$poster_large',
'$poster_full',
'$language',
'$runtime',
'$storyline2',
'$movie_status',
'$video_embed_code','$current_date')";

    $result_insert_movies=mysqli_query($conn,$insert_movies);
    
    if($result_insert_movies == true)
    {
        //set the session in localstorage
        
        $cookie_name = "movie_status";
$cookie_value = "Movie Inserted Successfully";
setcookie($cookie_name, $cookie_value, time() + 5, "/"); // 86400 = 1 day
        
     
        
                //redirect to login page
       $page_name="movies.php";
        
        echo '<script type="text/javascript">
        window.location = "'.$page_name.'";
            </script>';
            
    }
    else
    {
      echo "error";
    }
            }
            else
            {
               
               $_SESSION["message"]="button is not pressed";
                //redirect to login page
       $page_name="movies.php";
        
        echo '<script type="text/javascript">
        window.location = "'.$page_name.'";
            </script>';
            }
			
              
                
                
              
			 
			
                  
				
					
            
			
			
			
			
			
            
            
            
			
			
			
			
           
              }
	}




/////////////////////////////////////////////////








?>
