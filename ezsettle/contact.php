<?php
require_once("include.php");

$smarty->assign('username', sessionVar('username'));

$smarty->display('contact.tpl');
?>

