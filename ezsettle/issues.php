<?php

session_start();

ini_set('display_errors', 1);
error_reporting(E_ALL); // show EVERYTHING
require('init_smarty.php');

$issuesArr = array('Return laptop', 'Pay back cost of computer', 'Pay back original shipment', 'Pay cost of renewal computer', 'Pay emotional distress damages', 'If relevant, pay cost of return shipment');

$_SESSION['issuesArr'] = $issuesArr;
$_SESSION['issuesArrIndex'] = 0;

$smarty->assign('issues', $issuesArr);
$smarty->assign('issues_index', $_SESSION['issuesArrIndex']);
$smarty->display('issues.tpl');

?>

