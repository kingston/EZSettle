<?
ini_set('display_errors', 1);

session_start();
require_once(dirname(__FILE__) . '/../utils.php');
$result = array('success' => true);

//write offer to db

$_SESSION['offer_num'] = $_POST['offer_num'];
$_SESSION['offer_num']++;
$step = $_SESSION['offer_num']/2-1;
$_SESSION['step'] = $step;
$_SESSION['offers'][$step] = array(	postVar('issues0'),
									postVar('issues1'),
									postVar('issues2'),
									postVar('issues3'),
									postVar('issues4'),
									postVar('issues5')
								);
								
echo json_encode($result);

?>