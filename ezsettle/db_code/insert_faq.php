<?php
 //ini_set('display_errors', 1);                                                              
 //error_reporting(E_ALL);
	try {
    	$db = new PDO("sqlite:../db/test.db" );
    	$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    	//echo "PDO connection object created";
    } catch(PDOException $e){
    	echo $e->getMessage();
    }

	$sql = "INSERT INTO faqs (user_fk, time_spent) VALUES (".$_POST['user'].", ".$_POST['time_spent'].")";

	try {
    	$count = $db->exec($sql);
    } catch(PDOException $e){
    	echo $e->getMessage();
    }

	//echo $count;
?>