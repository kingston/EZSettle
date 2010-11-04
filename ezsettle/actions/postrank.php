<?
ini_set('display_errors', 1);

session_start();
require_once(dirname(__FILE__) . '/../utils.php');
$result = array('success' => true);

//write offer to db
$_SESSION['issues_rank'] = array(
							$_POST['issue_rank0'],
							$_POST['issue_rank1'],
							$_POST['issue_rank2'],
							$_POST['issue_rank3'],
							$_POST['issue_rank4'],
							$_POST['issue_rank5'],
							);
														    
echo json_encode($result);

?>