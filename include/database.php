<?php
/**
 * Created by PhpStorm.
 * User: Indro
 * Date: 31.10.2015
 * Time: 15:00
 */
//connect database
$db = mysqli_connect('127.0.0.1', 'root', '', 'cleanblog') or die(mysqli_error($db));
mysqli_query($db, "SET NAMES 'utf8'");