<?php
ini_set('display_errors', 1);
error_reporting(E_ALL); // show EVERYTHING
require('init_smarty.php');

$smarty->assign('name', 'some guy\'s name');

$smarty->display('index.tpl');
?>

