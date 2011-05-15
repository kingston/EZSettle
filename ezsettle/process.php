<?php
require_once("stage.inc.php");
transitionStage("cases", "process");

require_once('include.php');

$smarty->assign('username', sessionVar('username'));
$smarty->assign('condition', $_SESSION['condition']);
$smarty->assign('avatar', $avatar);
$smarty->assign('mediator', $mediator);
$smarty->assign('mediator_caps', $mediator_caps);

$smarty->display('process.tpl');
?>

