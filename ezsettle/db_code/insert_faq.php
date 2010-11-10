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

	$sql = "INSERT INTO offers (user_fk, offer_num) VALUES (202, 1)";

	try {
    	$count = $db->exec($sql);
    } catch(PDOException $e){
    	echo $e->getMessage();
    }
    
    

	//echo $count;
?>