<?php

session_start();

ini_set('display_errors', 1);
error_reporting(E_ALL); // show EVERYTHING
require('init_smarty.php');

$issuesArr = $_SESSION['issues_arr'];

$smarty->assign('issues', $issuesArr);

$smarty->display('issues_rank.tpl');

?>

