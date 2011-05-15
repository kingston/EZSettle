<?php

session_start();

require('init_smarty.php');

$smarty->assign('public', true);
$smarty->assign('username', sessionVar('username'));
$smarty->display('index.tpl');
?>

