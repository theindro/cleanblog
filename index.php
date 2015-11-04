<?php
//Set timezone
date_default_timezone_set('Europe/Tallinn');

//start loadtime
$page_load_start = microtime(1);

//connect database
require 'include/database.php';

//Set page
$page = !empty($_GET['page']) ? $_GET['page'] : 'home';


//include controller, if it exists
if (file_exists("controllers/$page.php"))  {
    require "controllers/$page.php";
}


//include template
require "templates/master_template.php";

// Show page load time
echo "lehte laaditi " . round(microtime(1) - $page_load_start, 4). " sekundit";
?>