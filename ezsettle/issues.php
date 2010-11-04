<?php

require_once("include.php");

$_SESSION['issuesArr']= array('Return laptop', 'Pay back cost of computer', 'Pay back original shipment', 'Pay cost of rental computer', 'Pay emotional distress damages', 'If relevant, who pays the cost of return shipment?');

$_SESSION['chatNew'] = array(
	array('speaker' => 'EZSettle Mediator says', 'message' => 'In this process, we would like to address the concerns that you and
Casey345 raised. We combined the issues that the two of you included in your correspondence
with PC4U.com into a single list. You may not recognize all the issues in the list, if the other
party raised an issue that you did not address. After reviewing the list, please click “yes” to
confirm that these are the issues or “no” to add another issue.')
	);
	
switch($_SESSION['condition']) {
	case 1:
	case 2:
	case 5:
		$typing = "The system is generating text ...";
		break;
	case 3:
	case 4:
	case 6:
		$typing = "The mediator is typing ... ";
		break;
}

$_SESSION['chatOld'] = array();
$smarty->assign('username', sessionVar('username'));
$smarty->assign('issues', $_SESSION['issuesArr']);
$smarty->assign('chatNew', $_SESSION['chatNew']);
$smarty->assign('chatOld', $_SESSION['chatOld']);
$smarty->assign('condition', $_SESSION['condition']);
$smarty->assign('avatar', $avatar);
$smarty->assign('typing',$typing);
$smarty->display('issues.tpl');


?>

