<?
require_once(dirname(__FILE__) . '/../utils.php');
//check username and password
session_start();

$_SESSION['username'] = 'Jessie128';
$_SESSION['experimental_id'] = postVar('password');

if($_SESSION['experimental_id'] == "ezsettle") {
	$_SESSION['admin'] = true;
	$_SESSION['condition'] = 1;
}
else {
	$_SESSION['condition'] = $_SESSION['experimental_id'];// % 6 + 1; //conditions 1-6
}
$result = array('success' => true);
//connect to db
try {
    	$db = new PDO("sqlite:../db/ezsettle.db" );
    	$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    	//echo "PDO connection object created";
    } catch(PDOException $e){
    	echo $e->getMessage();
    }


$now = date('Y-m-d H:i:s',time());
	//$sql = "INSERT INTO users (user_id, condition, login_time)".
	//	" VALUES (".$_SESSION['experimental_id'].", ".$_SESSION['condition'].",".$now.")";
	$sql = "INSERT INTO users (user_id, condition, login_time) VALUES (".$_SESSION['experimental_id'].", ".$_SESSION['condition'].", '".$now."')";

	try {
    	$count = $db->exec($sql);
    } catch(PDOException $e){
    	echo $e->getMessage();
    }

echo json_encode($result);

?>
