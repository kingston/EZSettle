<?
ini_set('display_errors', 1);

session_start();
require_once(dirname(__FILE__) . '/../utils.php');
$result = array('success' => true);

//write offer to db

$_SESSION['offer_num'] = $_POST['offer_num'];
switch ($_SESSION['offer_num']){
	case 1:
	case 2:
	case 3:
		$step = 0;
		break;	
	case 4:
	case 5:
	case 6:
		$step = 1;
		break;
	case 7:
	case 8:
	case 9:
		$step = 2;
		break;
}

if($_SESSION['offer_num'] == 6) {
 	$_SESSION['creative_likeliness'] = $_POST['creative_likeliness'];
}

if($_SESSION['offer_num'] == 3) {
 	$_SESSION['damage_likeliness'] = $_POST['damage_likeliness'];
}

if($_POST['accept']){
	$_SESSION['accept'] = $_POST['accept'];	
}

$_SESSION['offer_num']++;
//$step = $_SESSION['offer_num']/2-1;

$_SESSION['step'] = $step;
if(postVar('issues0')) {
	$_SESSION['offers'][$step] = array(	postVar('issues0'),
										postVar('issues1'),
										postVar('issues2'),
										postVar('issues3'),
										postVar('issues4'),
										postVar('issues5')
									);
	//connect to db
	try {
		$db = new PDO("sqlite:../db/ezsettle.db" );
    	$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);	    	
    	//echo "PDO connection object created";
	} catch(PDOException $e){
	    echo $e->getMessage();
	}	

	$trial =0;
	if( $_SESSION['offer_num'] == 2){
		$trial = 1;
	}elseif($_SESSION['offer_num'] == 5){
		$trial = 2;
	}elseif($_SESSION['offer_num'] == 8){
		$trial = 3;
	}
	$sql = "INSERT INTO offers (user_fk, offer_num, return_laptop) VALUES (".$_SESSION['experimental_id'].", ".$trial.",'".postVar('issues0')."')";

	try {
    	$count = $db->exec($sql);
    } catch(PDOException $e){
    	echo $e->getMessage();
    }
}		
echo json_encode($result);

?>