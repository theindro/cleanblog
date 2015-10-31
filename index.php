<?php

//start loadtime
$page_load_start = microtime(1);

//connect database
require 'include/database.php';

//Set page
$page = !empty($_GET['page']) && file_exists("pages/$_GET[page].php") ? ($_GET['page']) : 'home';

//include required page
require "templates/master_template.php";

// Show page load time
echo "lehte laaditi " . round(microtime(1) - $page_load_start, 4). " sekundit";
?>