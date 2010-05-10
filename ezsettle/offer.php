<?php
ini_set('display_errors', 1);
error_reporting(E_ALL); // show EVERYTHING
require('init_smarty.php');

$issuesArr = array('Return laptop', 'Pay back cost of computer', 'Pay back original shipment', 'Pay cost of renewal computer', 'Pay emotional distress damages', 'If relevant, pay cost of return shipment');

$smarty->assign('issues', $issuesArr);

$smarty->display('offer.tpl');

?>

