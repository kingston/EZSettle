<?php

session_start();

require('init_smarty.php');

if (getVar('logout')) {
	session_destroy();
    header("Location: signin.php?loggedout=true");
    die();
}
if (getVar('loggedout')) {
    $smarty->assign('logout', true);
}

require('stage.inc.php');
checkStage("start");

$smarty->assign('username', sessionVar('username'));

$smarty->display('signin.tpl');

?>

