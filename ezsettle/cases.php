<?php
require_once('include.php');

$smarty->assign('username', sessionVar('username'));
$smarty->assign('condition', $_SESSION['condition']);
$smarty->display('cases.tpl');
?>

