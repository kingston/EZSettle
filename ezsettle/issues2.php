<?php

session_start();

ini_set('display_errors', 1);
error_reporting(E_ALL); // show EVERYTHING
require('init_smarty.php');

$newOld = array_merge($_SESSION['chatOld'], $_SESSION['chatNew']);
$_SESSION['chatOld'] = $newOld;
$_SESSION['chatNew'] = array(
							array('speaker' => 'Mediator', 'message' => 'Pull the marker to indicate how important each issue is to you  (most right – very important, most left –not important) we will show you a numerical value ranging from 1-100 corresponding to your mark on the scale.'),
							array('speaker' => 'Mediator', 'message' => 'In case you and Casey345 do not reach an agreement within 3 rounds of mediation, your ranking will help the EZSettle arbitrator consider which aspects of this dispute are more important to you when determining the final settlement.')
							);
$smarty->assign('username', sessionVar('username'));
$smarty->assign('issues', $_SESSION['issuesArr']);
$smarty->assign('chatNew', $_SESSION['chatNew']);
$smarty->assign('chatOld', $_SESSION['chatOld']);

$smarty->display('issues_rank.tpl');

?>

