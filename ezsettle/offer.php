<?php
require_once("include.php");

$newOld = array_merge($_SESSION['chatOld'], $_SESSION['chatNew']);
$_SESSION['chatOld'] = $newOld;

$_SESSION['offer_titles'] = array(	1 => "Your First Offer",
									2 => "Casy345's First Counter Offer",
									4 => "Your Second Offer",
									5 => "Casey345's Second Counter Offer",
									7 => "Your Final Offer",
									8 => "Casey345's Final Counter Offer"
								);
$_SESSION['counteroffers'] = array(
									array('No', "0", "0", "0", "0", "0"),
									array('No', '100', '10', '0', '0', '0'),
									array('No', '150', '10', '0', '0', '0'),
									);			
															
if (!isset($_SESSION['offer_num'])) {
	$_SESSION['offer_num'] = 1;
	$_SESSION['offers'] = array();
	
}

$step = $_SESSION['step'];

switch($_SESSION['condition']) {
	case 1:
	case 2:
	case 5:
		$goods = "goods";
		$ezsettle = "EZSettle";
		$mediator = "EZSettle";
		$ezsettle_me = "EZSettle";
		break;
	case 3:
	case 4:
	case 5:
		$goods = "laptop";
		$ezsettle = "I";
		$mediator = "the mediator";
		$ezssetle_me = "me";
		break;
}

switch($_SESSION['condition']) {
	case 1:
	case 3:
		$ezsettle_person = "the EZSettle AnaLegal professional arbitration engine will";
		$ezsettle_pronoun = "its";
		break;
	case 2:
	case 4:
		$ezsettle_person = "a trained EZSettle professional arbitrator will";
		$ezsettle_pronoun = "his";
		break;
	
	case 5:
	case 6:
		$ezsettle_person = "you will be asked to choose between the services of the EZSettle professional AnaLegal arbitration engine or an EZSettle trained professional mediator, who will";
		$ezsettle_pronoun = "their";
		break;
}


switch($_SESSION['offer_num']) {
	case 1:
		$_SESSION['chatNew'] = array(
								array(	'speaker' => 'Mediator', 
										'message' => 'Pat128, since you initiated the process, please list in the fields below your first offer on each item. Remember, you and Casey345 will be able to exchange 3 offers in order to reach an agreement.')
								);
		break;
	case 2:
		$_SESSION['chatNew'] = array(
								array(	'speaker' => 'Mediator', 
										'message' =>"Casey345 did not accept your first offer. Casey345 said: &quot;I don’t understand this complaint at all. I sent the laptop in a perfectly good condition, and definitely not broken. I used it for just one month before I realized it wasn't what I needed. To tell you the truth, I don't see why I should pay anything, certainly not the outrageous request for the costs of rental computer and emotional distress.&quot;")
						);
		break;
		
	case 3:
		$_SESSION['chatNew'] = array(
									array( 'speaker' => 'Mediator',
										'message' =>"You reported receiving the {$goods} you bought from Casey345 in an unacceptable condition. In e-commerce deals, it is sometimes the case that someone other than the buyer or the seller could have damaged the goods. Was the package open or otherwise damaged when it was delivered to you? Did someone else receive the package on your behalf? Could something have happened to the package between the time you received it and opened it? Is it possible that someone else damaged the {$goods} before or after you began using it?"
									),
									array( 'speaker' => 'Mediator',
											'style' => 'success',
											'message' => "Please use the scale below to mark how likely it is that the {$goods} you bought was damaged after the seller shipped it. {$ezsettle} will NOT share this information with Casey345."
											)
								);
		break;
	
	case 4:
		$step = 0;
		$_SESSION['chatNew'] = array(
									array( 'speaker' => 'Mediator',
										'message' =>"As you can see, after you and Casey345 completed one round of mediation, your offers are still quite far apart. Please give some thought to Casey345's response (see Message History), and consider whether someone else might have damaged the {$goods} and any other relevant factors that may affect your offer."
									),
									array( 'speaker' => 'Mediator',
											'style' => 'success',
											'message' => "Then, please make your second offer. You will be able to make one more offer after this one."
											)
								);
		break;
		
	case 5:
		$_SESSION['chatNew'] = array(
									array( 'speaker' => 'Mediator',
										'message' =>"Casey345 did not accept your second offer. Casey345 said: &quot;I still don’t feel that this makes any sense or that I should pay anything. I KNOW that the laptop was in perfect condition when I sent it, and I don't think that you can prove otherwise. I still don’t understand why you are asking for all this money because a lot of it has nothing to do with me. BUT, following {$mediator}'s suggestion, I'm willing to offer something because of the chance that I didn't pack the package well (which I don't think happened, but ok), and because I'm willing to split with you some of the chance that the delivery service damaged the laptop. Mainly, I just want to get this thing over with.&quot;"
									)
								);
		break;
	case 6:
		$_SESSION['chatNew'] = array(
									array( 'speaker' => 'Mediator',
										'message' =>"As you can see, although you and Casey345’s have made some progress, your offers are still quite far apart. Before you make your last offer, {$ezsettle} would like you to think creatively about options you may have not considered yet. Is the disputed {$goods} of any value to you? Perhaps you can keep the {$goods} for your personal use or re-sell it yourself, and ask Casey345 for less money?"
									),
									array( 'speaker' => 'Mediator',
											'style' => 'success',
											'message' => "Please indicate here if you are willing to consider this option. {$ezsettle} will NOT share this information with Casey345. In any event, when you make your final offer, you may want to consider keeping the {$goods} and adjusting your various financial compensation requests accordingly"
											)
								);
	
		break;
	case 7:
		$step = 1;
		$_SESSION['chatNew'] = array(
									array( 'speaker' => 'Mediator',
										'message' =>"This is your third and final opportunity to make a mediation offer to Casey345 (Casey345 will be able to make a final offer too). Before making your final offer, {$ezsettle} would like to remind you that this is also your final opportunity to share information with {$ezsettle_me} or send messages to Casey345."
									)
								);

		break;
	case 8:
		$step = 2;
			$_SESSION['chatNew'] = array(
										array( 'speaker' => 'Mediator',
											'message' =>"Casey345 did not accept your final offer. Casey345 said: \"You know what, this is really ridiculous, I’m just making this final offer as an act of good faith and to get this over with. If you don’t accept it, whatever, let’s see what the arbitrator has to say.\""
										),
										array( 'speaker' => 'Mediator',
											'message' =>"{$ezsettle} would like to remind you that if you reject Casey345's offer, {$ezsettle} will transfer your case to arbitration, where {$ezsettle_person} provide you with a final binding settlement, based on {$ezsettle_pronoun} understanding of the situation and the preferences and offers the two parties communicated."
										)
									);
	case 9:
		if(($_SESSION['condition']==5) || ($_SESSION['condition']==6)){
			$step = 1;
				$_SESSION['chatNew'] = array(
												array( 'speaker' => 'Mediator',
													'message' =>"You and Casey 345 did not reach an agreement. We will now switch to use an arbitrator.{$ezsettle_person} arbitrate for you"
												)											);	
		}else{
			$step = 2;
				$_SESSION['chatNew'] = array(
												array( 'speaker' => 'Mediator',
													'message' =>"You and Casey 345 did not reach an agreement. We will now switch to use an arbitrator."
												),
												array( 'speaker' => 'Mediator',
													'message' =>"{$ezsettle_person} arbitrate for you"
												)
											);	
		}
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

if($_SESSION['offer_num']>= 9 ){
	$smarty->assign('all_offers', $_SESSION['offers']);	
	$smarty->assign('all_counteroffers', $_SESSION['counteroffers']);
	$smarty->assign('creative_likeliness',$_SESSION['creative_likeliness']);
}
$smarty->assign('counteroffers', $_SESSION['counteroffers'][$step]);
$smarty->assign('username', sessionVar('username'));
$smarty->assign('condition', $_SESSION['condition']);
$smarty->assign('avatar', $avatar);
$smarty->assign('mediator', $mediator);
$smarty->assign('mediator_caps', $mediator_caps);
$smarty->assign('step', $step);
//var_dump($_SESSION['counteroffers'][$step]);
//Your offer


if ($_POST['accept'] && $_POST['accept'] != '') {
	$smarty->assign('all_offers', $_SESSION['offers']);	
	$smarty->assign('all_counteroffers', $_SESSION['counteroffers']);
	$smarty->display('accept.tpl');
}else if ($_SESSION['offer_num']== 9){
	if(($_SESSION['condition']==5) || ($_SESSION['condition']==6)){
		$smarty->display('arbitration_choose.tpl');
		
	}else{
		$smarty->display('arbitration.tpl');	
	}
}else if($_SESSION['offer_num']== 10){
	$smarty->display('arbitration.tpl');
}else if($_SESSION['offer_num']== 11){
	$smarty->display('arbitration_result.tpl');
}
else if($_SESSION['offer_num']%3 == 1) {
	$smarty->display('offer.tpl');
}

else if ($_SESSION['offer_num']%3 == 2){
	$smarty->display('offer_response.tpl');
}

else if ($_SESSION['offer_num']==3) {
	$smarty->display('damage.tpl');
}

else if ($_SESSION['offer_num']==6) {
	$smarty->display('creative.tpl');
}
 
?>

