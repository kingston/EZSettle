<?php
session_start();

require('init_smarty.php');
$smarty->assign('username', sessionVar('username'));

$smarty->assign('public', true);
$smarty->display('terms.tpl');
?>

