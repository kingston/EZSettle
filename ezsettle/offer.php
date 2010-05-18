<?php
require_once("include.php");

$newOld = array_merge($_SESSION['chatOld'], $_SESSION['chatNew']);
$_SESSION['chatOld'] = $newOld;

$_SESSION['offer_titles'] = array(	1 => "Your First Offer",
									2 => "Casy345's First Counter Offer",
									3 => "Your Second Offer",
									4 => "Casey345's Second Counter Offer",
									5 => "Your Final Offer",
									6 => "Casey345's Final Counter Offer"
								);
$_SESSION['counteroffers'] = array(
									array('No', "0", "0", "0", "0", "0"),
									array('No', '600', '0', '0', '0', '0'),
									array('No', '700', '0', '0', '0', '0')
									);			
															
if (!isset($_SESSION['offer_num'])) {
	$_SESSION['offer_num'] = 1;
	$_SESSION['offers'] = array();
}

$step = $_SESSION['step'];

switch($_SESSION['offer_num']) {
	case 1:
		$_SESSION['chatNew'] = array(
								array(	'speaker' => 'Mediator', 
										'message' => 'Pat128, since you initiated the process, please list in the fields below your first offer on each item. Remember, you and Casey345 will be able to exchange 3 offers in order to reach an agreement.')
								);
	case 2:
		$_SESSION['chatNew'] = array(
								array(	'speaker' => 'Mediator', 
										'message' =>"Casey345 did not accept your first offer. Casey345 said: &quot;I don’t understand this complaint at all. I sent the laptop in a perfectly good condition, and definitely not broken. I used it for just one month before I realized it wasn't what I needed. To tell you the truth, I don't see why I should pay anything, certainly not the outrageous request for the costs of rental computer and emotional distress.&quot;")
										);
		break;
	default:
		$_SESSION['chatNew'] = array();
		
}
							
							

$smarty->assign('issues', $_SESSION['issuesArr']);
$smarty->assign('chatNew', $_SESSION['chatNew']);
$smarty->assign('chatOld', $_SESSION['chatOld']);
$smarty->assign('offer_title', $_SESSION['offer_titles'][$_SESSION['offer_num']]);
$smarty->assign('offer_num', $_SESSION['offer_num']);
$smarty->assign('offers', $_SESSION['offers'][$step]);
$smarty->assign('counteroffers', $_SESSION['counteroffers'][$step]);
$smarty->assign('username', sessionVar('username'));
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

