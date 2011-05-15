<?php
ini_set('display_errors', 1);

session_start();
require_once(dirname(__FILE__) . '/../utils.php');
$result = array('success' => true);

 //ini_set('display_errors', 1);                                                              
 //error_reporting(E_ALL);
	try {
    	$db = new PDO("sqlite:../db/ezsettle.db" );
    	$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    	//echo "PDO connection object created";
    } catch(PDOException $e){
    	echo $e->getMessage();
    }

	$sql = "INSERT INTO faqs (user_fk, time_spent) VALUES (".$_SESSION['experimental_id'].", ".sqlite_escape_string($_POST['time_spent']).")";

	try {
    	$count = $db->exec($sql);
    } catch(PDOException $e){
    	echo $e->getMessage();
    }

	//echo $count;
	echo json_encode($result);
?>
