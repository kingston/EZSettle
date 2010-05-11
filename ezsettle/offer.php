<?php
session_start();
ini_set('display_errors', 1);
error_reporting(E_ALL); // show EVERYTHING
require('init_smarty.php');

$newOld = array_merge($_SESSION['chatOld'], $_SESSION['chatNew']);

$_SESSION['offer_titles'] = array(	1 => "Your offer #1",
									2 => "Casey345's Response #1",
									3 => "Your offer #2",
									4 => "Casey345's Response #2",
									5 => "Your offer #3",
									6 => "Casey345's Response #3"
								);
									
if (!isset($_POST['offer'])) {
	$_SESSION['offer'] = 1;

}
else {
	$_SESSION['offer'] = $_POST['offer'];
}

$_SESSION['chatOld'] = $newOld;
$_SESSION['chatNew'] = array(
							array(	'speaker' => 'Mediator', 
									'message' => 'Pat128, since you initiated the process, please list in the fields below your first offer on each item. Remember, you and Casey345 will be able to exchange 3 offers in order to reach an agreement.')
							);

$smarty->assign('issues', $_SESSION['issuesArr']);
$smarty->assign('chatNew', $_SESSION['chatNew']);
$smarty->assign('chatOld', $_SESSION['chatOld']);
$smarty->assign('offer_title', $_SESSION['offer_titles'][$_SESSION['offer']]);
$smarty->assign('offer', $_SESSION['offer']);
$smarty->display('offer.tpl');

?>

