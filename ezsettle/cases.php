<?php
session_start();

require('init_smarty.php');

$smarty->assign('username', sessionVar('username'));
$smarty->assign('condition', $_SESSION['condition']);
$smarty->display('cases.tpl');
?>

