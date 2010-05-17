<?php

session_start();

require('init_smarty.php');

if (getVar('logout')) {
	session_destroy();
	$smarty->assign('logout', true);
}

$smarty->display('signin.tpl');

?>

