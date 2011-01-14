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
		$past_v2be = "were";
		$present_v2be_cap = "Are";
		$ezsettle = "The system";
		$mediator = "the system";
		$ezsettle_i_small = "the system";
		$ezsettle_me = "EZSettle";
		$typing = "The system is generating text ...";
		break;
	case 3:
	case 4:
	case 6:
		$goods = "laptop";
		$past_v2be = "was";
		$present_v2be_cap = "Is";
		$ezsettle = "I";
		$mediator = "I";
		$ezsettle_i_small = "I";
		$ezssetle_me = "me";
		$typing = "The mediator is typing ... ";
		break;
}

switch($_SESSION['condition']) {
	case 1:
	case 3:
		$ezsettle_person = "the professional AnaLegal™ arbitration software will";
		$ezsettle_person_long_cap = "The EZSettle AnaLegal™ professional arbitration software";
		$ezsettle_pronoun = "the system's";
		$ezsettle_pronoun_short_big = "The system";
		$ezsettle_arbitrating = "The EZSettle AnaLegal™ professional arbitration software is considering the";
		$will_arbitrate = "the EZSettle AnaLegal™ professional arbitration software will serve as the arbitrator for your case";
		$ezsettle_arbitrator = "The arbitration engine";
		$ezsettle_arbitrator_result = "the AnaLegal™ arbitration engine";
		$ezsettle_small = "the system";
		break;
	case 2:
	case 4:
		$ezsettle_person = "a professional staff arbitrator will";
		$ezsettle_person_long_cap = "I, an EZSettle professional staff arbitrator,";
		$ezsettle_pronoun_short_big = "I";
		$ezsettle_pronoun = "my";
		$ezsettle_arbitrating = "An EZSettle professional staff arbitrator is considering the";
		$will_arbitrate = "I am an EZSettle professional staff arbitrator and I will serve as an arbitrator for your case";
		$ezsettle_arbitrator = "I";
		$ezsettle_arbitrator_result = "I";
		$ezsettle_small = "I";
		break;
	
	case 5:
	case 6:
		$ezsettle_person = "you will be asked to choose between the services of EZSettle’s AnaLegal™ arbitration software or an EZSettle staff arbitrator, that will";
		$ezsettle_pronoun = "the arbitrator's";
		$ezsettle_person_long_cap = "The EZSettle arbitrator";
		$ezsettle_arbitrating  = "The facts of the";
		$will_arbitrate = "the EZSettle AnaLegal™ professional arbitration software or an EZSettle professional staff arbitrator will serve as the arbitrator for your case, according to the choice you have made";
		$ezsettle_arbitrator = "Your chosen arbitrator ";
		$ezsettle_small = "you chosen arbitrator";
		$ezsettle_being_considered = "are being considered in arbitration";
		$ezsettle_arbitrator_result = "the arbitrator";
		$ezsettle_pronoun_short_big = "The arbitrator";
		break;
}


switch($_SESSION['offer_num']) {
	case 1:
		$s = "";
		if ($ezsettle_i_small == "I"){
			$s = "";	
		}else{
			$s = "s";	
		}
		$_SESSION['chatNew'] = array(
								array(	'speaker' => 'Mediator', 
										'message' => 'Jessie128, since you initiated the process, please list in the fields below your first offer on each item. Remember, you and Casey345 will each be able to exchange 3 offers (total of 6) in order to reach an agreement.'),
								array('speaker' => 'Mediator',
									'message' => 'After you submit your offer, '.$ezsettle_i_small.' will communicate it to Casey345. Please wait patiently until '.$ezsettle_i_small.' communicate'.$s.' Casey345’s response back to you.'
								
								)
								);
		break;
	case 2:
		$_SESSION['chatNew'] = array(
								array(	'speaker' => 'Mediator', 
										'message' =>"Casey345 did not accept your first offer. Casey345 has a message for you." ),
								array('speaker' => 'Message from Casey345',
									'style'=>'second_party',
								'message' =>'I don’t understand this complaint at all. The computer was not broken when I packed it. I used it for just one month before I realized it wasn\'t what I needed. Honestly, I don\'t see why I should pay anything, especially not the costs of the rental computer and "emotional distress," which seem to me like an outrageous request')
						);
		break;
		
	case 3:
		$_SESSION['chatNew'] = array(
									array( 'speaker' => 'Mediator',
										'message' =>"You reported receiving the laptop in an unacceptable condition. In e-commerce deals, it is sometimes the case that someone other than the buyer or seller could have damaged the goods. Try recalling whether the package was open or otherwise damaged when you received it or if someone else received the package on your behalf. Consider whether something might have happened to the package between the time you received it and opened it or before or after you began using it."
									),
									array( 'speaker' => 'Mediator',
										'message' =>"Use the scale below to mark how likely it is that the laptop was damaged AFTER the seller has shipped it. {$ezsettle} will NOT share this information with Casey345"
									)
								);
		break;
	
	case 4:
		$_SESSION['chatNew'] = array(
									array( 'speaker' => 'Mediator',
										'message' =>"After one mediation round the offers that you and Casey345 exchanged are still quite far apart. Consider your estimation of the likelihood that the laptop was not damaged by the seller, as well as any other relevant factors."
									),
									array( 'speaker' => 'Mediator',
										'message' =>"Then, please make your second offer. You will be able to make one more offer after this one."
									)
								);
		break;
		
	case 5:
		$_SESSION['chatNew'] = array(
									array( 'speaker' => 'Mediator',
										'message' =>"Casey345 did not accept your second offer. Casey345 has a message for you."
									),
									array('speaker' => 'Message from Casey345',
									'style'=>'second_party',
								'message' =>"This just doesn’t make sense. I mean, the laptop was in perfect condition when I sent it, and I don't think that you can prove otherwise. (The emotional distress really has nothing to do with me, much like the rental computer). BUT, following {$mediator}'s suggestion, I'm willing to offer something because of the (slim!) chance that I didn't pack the package well (which I don't think happened, but ok), and because I'm willing to split with you the chance that the laptop was somehow damaged on its way to you. Mainly, I just want to get this thing over with.")
								);
		break;
	case 6:
		$_SESSION['chatNew'] = array(
									array( 'speaker' => 'Mediator',
										'message' =>"You and Casey345 made some good progress, but your offers are still quite far apart. Before you make your last offer, {$mediator} would like you to think creatively about options you may have not considered yet. Is the laptop of any value to you? Can you keep the laptop for your personal use? Can you re-sell the laptop yourself and ask Casey345 for less money?"
									),
									array('speaker' => 'Mediator',
									'message'=>"Please indicate here how willing you are to consider these options.{$ezsettle} will NOT share this information with Casey345.")
									//,
									//array( 'speaker' => 'Mediator',
								//			'message' => "When you make your final offer, consider keeping the {$goods} and adjusting the financial compensation you are requesting accordingly"
					//						)
								);
	
		break;
	case 7:
		$_SESSION['chatNew'] = array(
									array( 'speaker' => 'Mediator',
										'message' =>"This is your third and final opportunity to make a mediation offer to Casey345 (Casey345 will be able to make a final offer too)."
									),
									array( 'speaker' => 'Mediator',
										'message' =>"When you make your final offer, consider keeping the laptop and adjusting the financial compensation you are requesting accordingly. Remember that this is your final opportunity to share information with {$ezsettle_me} or send messages to Casey345."
									)
								);

		break;
	case 8:
			$_SESSION['chatNew'] = array(
										array( 'speaker' => 'Mediator',
											'message' =>"Casey345 did not accept your final offer. Casey345 has a message for you."
										),
										array('speaker' => 'Message from Casey345',
									'style'=>'second_party',
								'message' =>"I hope you realize how ridiculous this situation is from my perspective. I’m making this final offer as an act of good faith and to get this over with. If you don’t accept it, whatever, let’s see what the arbitrator has to say."),
										array( 'speaker' => 'Mediator',
											'message' =>"{$ezsettle} would like to remind you that if you reject Casey345's offer, {$mediator} will transfer your case to arbitration, where {$ezsettle_person} review the information that was exchanged in the mediation and provide you and Casey345 with a final binding settlement."
										)
									);
	  	break;
	case 9:
	
	break;
	case 10:
		if(($_SESSION['condition']==5) || ($_SESSION['condition']==6)){
				$_SESSION['chatNew'] = array(
												array( 'speaker' => 'System text',
													'message' =>"Please choose whether you would like the case to be arbitrated by one of EZSettle's staff arbitrators or by EZSettle’s AnaLegal™ arbitration software. If you and Casey345 do not make the same choice, you will be directed to discuss your options and reach agreement on the matter."
												)											);	
		}
		/*else{
				$_SESSION['chatNew'] = array(
												array( 'speaker' => 'Mediator',
													'message' =>"You and Casey 345 did not reach an agreement. We will now switch to use an arbitrator."
												),
												array( 'speaker' => 'Mediator',
													'message' =>"{$ezsettle_person} arbitrate for you"
												)
											);	
		}*/
	break;
	case 11:
		if(($_SESSION['condition']==5) || ($_SESSION['condition']==6)){
				$_SESSION['chatNew'] = array(
												array( 'speaker' => 'System text',
													'message' =>"Good news, you and Casey345 made the same choice. Click 'Next' to move to arbitration."
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
$smarty->assign('issues_rank',$_SESSION['issues_rank']);
$smarty->assign('ezsettle',$ezsettle);
if($_SESSION['offer_num']>= 9 ){
	$smarty->assign('all_offers', $_SESSION['offers']);	
	$smarty->assign('all_counteroffers', $_SESSION['counteroffers']);
	$smarty->assign('creative_likeliness',$_SESSION['creative_likeliness']);
	$smarty->assign('damage_likeliness',$_SESSION['damage_likeliness']);
}
if(($_SESSION['condition'] == 5)||($_SESSION['condition'] == 6)){
	$smarty->assign('ezsettle_being_considered',$ezsettle_being_considered);	
}

$smarty->assign('counteroffers', $_SESSION['counteroffers'][$step]);
$smarty->assign('username', sessionVar('username'));
$smarty->assign('condition', $_SESSION['condition']);
$smarty->assign('avatar', $avatar);
$smarty->assign('mediator', $mediator);
$smarty->assign('mediator_caps', $mediator_caps);
$smarty->assign('past_v2be',$past_v2be);
$smarty->assign('present_v2be_cap',$present_v2be_cap);
$smarty->assign('ezsettle_me',$ezsettle_me);
$smarty->assign('ezsettle', $ezsettle);
$smarty->assign('step', $step);
$smarty->assign('ezsettle_arbitrating',$ezsettle_arbitrating);
$smarty->assign('typing',$typing);
if(($_SESSION['offer_num']== 11) &&(($_SESSION['condition']==5) || ($_SESSION['condition']==6))){
	$smarty->assign('arb_choice',$_SESSION['arb_choice']);
}
$smarty->assign('will_arbitrate', $will_arbitrate);

$smarty->assign('$ezsettle_arbitrator',$ezsettle_arbitrator);
$smarty->assign('ezsettle_small',$ezsettle_small);
$smarty->assign('ezsettle_person_long_cap',$ezsettle_person_long_cap);
$smarty->assign('ezsettle_pronoun_short_big', $ezsettle_pronoun_short_big );
$smarty->assign('ezsettle_pronoun',$ezsettle_pronoun);

//var_dump($_SESSION['counteroffers'][$step]);
//Your offer

if($_SESSION['accept'] == 'yes'){
//if ($_POST['accept'] && $_POST['accept'] != '') {
	$smarty->assign('all_offers', $_SESSION['offers']);	
	$smarty->assign('all_counteroffers', $_SESSION['counteroffers']);
	$smarty->display('accept.tpl');
}else if($_SESSION['offer_num']== 9){
	if(($_SESSION['condition']==5) || ($_SESSION['condition']==6)){
		$smarty->display('arbitration_choose.tpl');
		
	}else{
		$smarty->display('arbitration_instruction.tpl');	
	}
	
}else if ($_SESSION['offer_num']== 10){
	if(($_SESSION['condition']==5) || ($_SESSION['condition']==6)){
		$smarty->display('choose_pre_arbitration.tpl');
		
	}else{
		$smarty->display('arbitration.tpl');	
	}
}else if($_SESSION['offer_num']== 11){
	if(($_SESSION['condition']==5) || ($_SESSION['condition']==6)){
		$smarty->display('choose_pre_arbitration.tpl');
		//$smarty->display('arbitration_instruction.tpl');
		
	}else{
		$smarty->display('arbitration_result.tpl');	
	}
}else if($_SESSION['offer_num']== 12){
	if(($_SESSION['condition']==5) || ($_SESSION['condition']==6)){
		$smarty->display('arbitration_instruction.tpl');
		
	}else{
		$smarty->display('arbitration.tpl');
	}
}else if($_SESSION['offer_num']== 13){
	if(($_SESSION['condition']==5) || ($_SESSION['condition']==6)){
		$smarty->display('arbitration.tpl');
		
	}else{	
		$smarty->display('arbitration_result.tpl');
	}
}else if($_SESSION['offer_num']== 13){
	if(($_SESSION['condition']==5) || ($_SESSION['condition']==6)){
		$smarty->display('arbitration_result.tpl');
	}
} else if($_SESSION['offer_num']%3 == 1) {
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

