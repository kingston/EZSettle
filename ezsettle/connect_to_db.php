<?php

	try {
    	$db = new PDO("sqlite:db/test.db" );
    	$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    	//echo "PDO connection object created";
    } catch(PDOException $e){
    	echo $e->getMessage();
    }

?>