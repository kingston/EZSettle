<?php
	session_start();
	require('init_smarty.php');
    $smarty->assign('public', true);
	$smarty->assign('username', sessionVar('username'));
	$smarty->assign('expID',$_SESSION['experimental_id']);
	$smarty->display('faq.tpl');
	
?>

