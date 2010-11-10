<?php
//connect to db
try {
	$db = new PDO("sqlite:../db/ezsettle.db" );
    	$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    	//echo "PDO connection object created";
    } catch(PDOException $e){
      echo $e->getMessage();
    }


    $sql1 = "UPDATE users SET try_additional_issue = 1 WHERE user_id =".$_SESSION['experimental_id']; 
	//$sql2 = "UPDATE users SET additional_issue ='".$_POST['added']."' WHERE user_id =".$_SESSION['experimental_id']; 
    try {
    	$count = $db->exec($sql1);
    //	$count = $db->exec($sql2);
    } catch(PDOException $e){
      echo $e->getMessage();
    }

?>