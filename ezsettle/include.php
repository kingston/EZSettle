<?

session_start();

require('init_smarty.php');
$condition = $_SESSION['condition'];

if($condition == 1 || $condition == 2 || $condition == 5)
	$avatar = "images/ezsettle_computer.jpg";
else
	$avatar = "images/ezsettle_human.jpg";

?>