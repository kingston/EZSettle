<?php
session_start();
ini_set('display_errors', 1);
error_reporting(E_ALL); // show EVERYTHING
require('init_smarty.php');
$smarty->assign('username', sessionVar('username'));

$smarty->display('terms.tpl');
?>

