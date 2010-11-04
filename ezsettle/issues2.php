<?php

require_once("include.php");

$newOld = array_merge($_SESSION['chatOld'], $_SESSION['chatNew']);
$_SESSION['chatOld'] = $newOld;
$med_message = 'pull the marker left or right to indicate how important each issue is to you, on a scale from 1 (not important) to 100 (very important). Your ranking will help you think about your priorities. In case you and Casey345 do not reach agreement in mediation, the EZSettle ';
if(($_SESSION['condition']==1) || ($_SESSION['condition']==3)){
	$med_message=$med_message.'arbitration software ';
}else if (($_SESSION['condition']==2) || ($_SESSION['condition']==4)){
	$med_message=$med_message.'staff arbitrator';
}else{
	$med_message=$med_message.'arbitrator';
}
$med_message=$med_message.'will take into account which issues are more important to you when determining the final settlement.';
$_SESSION['chatNew'] = array(
							array('speaker' => 'EZSettle Mediator says', 
								'message' => $med_message)
							);
$smarty->assign('username', sessionVar('username'));
$smarty->assign('issues', $_SESSION['issuesArr']);
$smarty->assign('chatNew', $_SESSION['chatNew']);
$smarty->assign('chatOld', $_SESSION['chatOld']);
$smarty->assign('condition', $_SESSION['condition']);
$smarty->assign('avatar', $avatar);
$smarty->display('issues_rank.tpl');

?>

