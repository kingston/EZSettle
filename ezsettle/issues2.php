<?php

require_once("include.php");

$newOld = array_merge($_SESSION['chatOld'], $_SESSION['chatNew']);
switch($_SESSION['condition']) {
	case 1:
	case 2:
	case 5:
		$typing = "The system is generating text ...";
		$me = "the system";
		break;
	case 3:
	case 4:
	case 6:
		$typing = "The mediator is typing ... ";
		$me = "me";
		break;
}

$_SESSION['chatOld'] = $newOld;
$med_message = 'Slide the marker left or right to indicate how important each issue is to you, on a scale from 1 (not important) to 100 (very important). Your ranking will help you, as well as '.$me.', understand your priorities. In case you and Casey345 do not reach an agreement in mediation, the EZSettle ';
if(($_SESSION['condition']==1) || ($_SESSION['condition']==3)){
	$med_message=$med_message.'arbitration software';
}else if (($_SESSION['condition']==2) || ($_SESSION['condition']==4)){
	$med_message=$med_message.'staff arbitrator';
}else{
	$med_message=$med_message.'arbitrator';
}
$med_message=$med_message.' will take into account which issues are more important to you when determining the final settlement.';
$_SESSION['chatNew'] = array(
							array('speaker' => 'Mediator', 
								'message' => $med_message)
							);
$smarty->assign('username', sessionVar('username'));
$smarty->assign('issues', $_SESSION['issuesArr']);
$smarty->assign('chatNew', $_SESSION['chatNew']);
$smarty->assign('chatOld', $_SESSION['chatOld']);
$smarty->assign('condition', $_SESSION['condition']);
$smarty->assign('avatar', $avatar);
$smarty->assign('typing',$typing);
$smarty->display('issues_rank.tpl');

?>

