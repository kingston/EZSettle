<?

session_start();

require('init_smarty.php');
$condition = $_SESSION['condition'];
$admin = $_SESSION['admin'];
$conditionArr = array(0, 1, 2, 3, 4, 5, 6);
$conditionDescription = array('', 'Comp-Med/Comp-Arb', 'Comp-Med/Human-Arb', 'Human-Med/Comp-Arb', 'Human-Med/Human-Arb', 'Comp-Med/Choose Arb', 'Human-Med/Choose Arb');
if($condition == 1 || $condition == 2 || $condition == 5) {
	$avatar = "images/ezsettle_computer.jpg";
	$mediator = "EZSettle";
	$mediator_caps = "EZSettle";
}
else {
	$avatar = "images/med_human.jpg";
	$mediator = "the mediator";
	$mediator_caps = "The mediator";
}

$smarty->assign('admin', $admin);
$smarty->assign('conditionArr', $conditionArr);
$smarty->assign('conditionDescription', $conditionDescription);
?>