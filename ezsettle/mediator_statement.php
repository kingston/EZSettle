<?php

include('include.php');
$smarty->assign('username', sessionVar('username'));
$smarty->display('mediator_statement.tpl');
?>

