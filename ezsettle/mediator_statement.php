<?php

include('include.php');
$smarty->assign('username', sessionVar('username'));
$smarty->assign('condition', $_SESSION['condition']);
$smarty->assign('avatar', $avatar);
$smarty->assign('mediator', $mediator);
$smarty->assign('mediator_caps', $mediator_caps);
$smarty->display('mediator_statement.tpl');
?>

