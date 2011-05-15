<?
ini_set('display_errors', 1);

session_start();
require_once(dirname(__FILE__) . '/../utils.php');
$result = array('success' => true);
if($_SESSION['admin']) {
	$condition = postVar("condition");
	$_SESSION['condition'] = $condition;
}
else { 
	$result['success'] = false; 
}
echo json_encode($result);

?>
