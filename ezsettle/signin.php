<?php

session_start();

ini_set('display_errors', 1);
error_reporting(E_ALL); // show EVERYTHING
require('init_smarty.php');

if (getVar('logout')) {
	session_destroy();
	$smarty->assign('logout', true);
}

$smarty->display('signin.tpl');

?>

