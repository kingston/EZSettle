<?php
require_once("include.php");

$smarty->assign('username', sessionVar('username'));

echo "hi!!! result";
//$smarty->display('arbitration_result.tpl');
?>