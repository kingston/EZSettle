<?
ini_set('display_errors', 1);
require_once(dirname(__FILE__) . '/../include.php');

$result = array('success' => true);

//write offer to db

$_SESSION['offer_num'] = $_POST['offer_num'];
$_SESSION['offer_num']++;
$step = $_SESSION['offer_num']/2-1;
$_SESSION['offers'][$step] = array(	postvar('issues0'),
									postvar('issues1'),
									postvar('issues2'),
									postvar('issues3'),
									postvar('issues4'),
									postvar('issues5')
								);
								
echo json_encode($result);

?>