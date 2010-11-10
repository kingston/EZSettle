<?
ini_set('display_errors', 1);

session_start();
require_once(dirname(__FILE__) . '/../utils.php');
$result = array('success' => true);

//write offer to db
if($_SESSION['offern_num'] == 1){
	$offer_trial = 1;	
}else if($_SESSION['offern_num'] == 4){
	$offer_trial = 2;	
}else if($_SESSION['offern_num'] == 7){
	$offer_trial = 3;	
}else{
	$offer_trial = 0;	
}

if($offer_trial > 0){
	try {
		$db = new PDO("sqlite:../db/ezsettle.db" );
	    	$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	    	//echo "PDO connection object created";
	    } catch(PDOException $e){
	      echo $e->getMessage();
	    }
	  //  $sql = "INSERT INTO users (user_id, condition, login_time) VALUES (".$_SESSION['experimental_id'].", ".$_SESSION['condition'].", '".$now."')";
	  //nae = 'casey' name = 'mediator'
		$sql = "INSERT INTO offers VALUES (".$_SESSION['experimental_id'].", ".$offer_trial.", '".postVar('issues0')."', ".postVar('issues1').", ".
			postVar('issues2').", ".postVar('issues3').", ".postVar('issues4').", '".postVar('issues5')."', '".postVar('casey')."', '".postVar('mediator')."')";
	    try {
	    	$count = $db->exec($sql);
	    } catch(PDOException $e){
	      echo $e->getMessage();
	    }
	
		
		
	}
	
}




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
}		
echo json_encode($result);

?>