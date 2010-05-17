<?php
require_once("include.php");

$newOld = array_merge($_SESSION['chatOld'], $_SESSION['chatNew']);
$_SESSION['chatOld'] = $newOld;

$_SESSION['offer_titles'] = array(	1 => "Your First Offer",
									2 => "Casey345's First Response",
									3 => "Your Second Offer",
									4 => "Casey345's Second Response",
									5 => "Your Final Offer",
									6 => "Casey345's Final Response"
								);
$_SESSION['counteroffers'] = array(
									array('No', '500', '0', '0', '0', '0'),
									array('No', '600', '0', '0', '0', '0'),
									array('No', '700', '0', '0', '0', '0')
									);			
															
if (!isset($_SESSION['offer_num'])) {
	$_SESSION['offer_num'] = 1;
	$_SESSION['offers'] = array();

}

switch($_SESSION['offer_num']) {
	case 1:
		$_SESSION['chatNew'] = array(
								array(	'speaker' => 'Mediator', 
										'message' => 'Pat128, since you initiated the process, please list in the fields below your first offer on each item. Remember, you and Casey345 will be able to exchange 3 offers in order to reach an agreement.')
								);
		break;
	default:
		$_SESSION['chatNew'] = array();
		
}
							
							
$smarty->assign('username', sessionVar('username'));
$smarty->assign('issues', $_SESSION['issuesArr']);
$smarty->assign('chatNew', $_SESSION['chatNew']);
$smarty->assign('chatOld', $_SESSION['chatOld']);
$smarty->assign('offer_title', $_SESSION['offer_titles'][$_SESSION['offer_num']]);
$smarty->assign('offer_num', $_SESSION['offer_num']);
$smarty->assign('offers', $_SESSION['offers'][$step]);
$smarty->assign('counteroffers', $_SESSION['counteroffers'][$step]);
$smarty->assign('condition', $_SESSION['condition']);
$smarty->assign('avatar', $avatar);
$smarty->assign('mediator', $mediator);
$smarty->assign('mediator_caps', $mediator_caps);
//var_dump($_SESSION['counteroffers'][$step]);
//Your offer
if($_SESSION['offer_num']%2 == 1) {
	$smarty->display('offer.tpl');
}

else {
	$smarty->display('offer_response.tpl');
}
?>

