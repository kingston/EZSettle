<?

session_start();

require('init_smarty.php');
$condition = $_SESSION['condition'];
$admin = $_SESSION['admin'];
$condition_arr = array(1, 2, 3, 4, 5, 6);
if($condition == 1 || $condition == 2 || $condition == 5) {
	$avatar = "images/ezsettle_computer.jpg";
	$mediator = "EZSettle";
	$mediator_caps = "EZSettle";
}
else {
	$avatar = "images/ezsettle_human.jpg";
	$mediator = "the mediator";
	$mediator_caps = "The mediator";
}

$smarty->assign('admin', $admin);
?>