<?php


//The Configuration file

if($_SERVER['HTTP_HOST']=="localhost" || $_SERVER['HTTP_HOST']=="127.0.0.1")
{
    define('FOLDER_NAME','development/update_timespan/timespan_admin');
    define('ROOT_PATH', realpath(dirname(__FILE__)."/../").'/');
   define('SITE_ROOT', 'http://'.$_SERVER['HTTP_HOST'].'/'.FOLDER_NAME.'/');

   define("IMAGES_DIR", SITE_ROOT . "bootstrap/image/");

   define("DOCUMENT_DIR", SITE_ROOT . "document/");
    define("SESSION_TIMEOUT", 3600);
    
    $base_url=SITE_ROOT;
    
    
}
else
{
    echo "You are not on localhost";
}






    
       
    


?>