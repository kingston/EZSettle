<?php
session_start();

require_once("init_smarty.php");

$smarty->assign('public', true);
$smarty->assign('username', sessionVar('username'));

$smarty->display('contact.tpl');
?>

