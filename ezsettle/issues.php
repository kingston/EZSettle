<?php

session_start();

require('init_smarty.php');

$_SESSION['issuesArr']= array('Return laptop', 'Pay back cost of computer', 'Pay back original shipment', 'Pay cost of rental computer', 'Pay emotional distress damages', 'If relevant, who pays the cost of return shipment?');

$_SESSION['chatNew'] = array(
	array('speaker'=>'Mediator', 'message'=>'Hello!'), 
	array('speaker' => 'Mediator', 'message' => 'In this process, we would like to address the concerns that both you and Casey345 raised. We combined the issues that the two of you included in your correspondence with PC4U.com into a single list.'), 
	
	array('speaker' => 'Mediator', 'message' => 'You may not recognize all the issues in the list, if the other party has raised an issue that you did not include in your list. After reviewing the list, please click “yes” to confirm that these are the issues or “no” to add another issue.'),


	);
$_SESSION['chatOld'] = array();
$smarty->assign('username', sessionVar('username'));
$smarty->assign('issues', $_SESSION['issuesArr']);
$smarty->assign('chatNew', $_SESSION['chatNew']);
$smarty->assign('chatOld', $_SESSION['chatOld']);
$smarty->assign('condition', $_SESSION['condition']);
$smarty->display('issues.tpl');

?>

