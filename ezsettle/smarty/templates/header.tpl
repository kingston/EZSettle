<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
	<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
 	<head>
   		<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
   		<title>EZSettle</title>
		<link rel="stylesheet" href="css/blueprint/screen.css" type="text/css" media="screen, projection" />
		<link rel="stylesheet" href="css/blueprint/print.css" type="text/css" media="print" />
		<link rel="stylesheet" href="css/main.css" type="text/css" />
		<link rel="stylesheet" href="css/buttons.css" type="text/css" />
		<!--[if lt IE 8]><link rel="stylesheet" href="/../css/blueprint/ie.css" type="text/css" media="screen, projection" /><![endif]-->
		<link rel="stylesheet" href="js/jqueryui/css/blitzer/jqueryui.css" type="text/css" />
		
		<script type="text/javascript" src="js/jquery-1.4.js"></script>
		<script type="text/javascript" src="js/jqueryui/js/jqueryui.js"></script>
		<script type="text/javascript" src="js/jquery.form.js"></script>
		<script type="text/javascript" src="js/jquery.scrollTo.js"></script>
	</head>
	<body>
		<div class="container">
			<div class="header span-24 last append-bottom">
				<div class="logo span-6"><a href="index.php"><img class="left" src="images/ezsettle.png"></a></div>
				<div class="header_links prepend-7 span-10 append-1 last">
					<div id="nav">
						<a href="index.php">Home</a> | 
						<a href="system.php">EZSettle0.1</a> | 
						<a href="privacy.php">Privacy</a> |
						<a href="faq.php">FAQ</a> |
						<a href="contact.php">Contact</a>
					</div>
				</div>
				{if isset($username) }
					<div class="prepend-17 span-6 last">Welcome, {$username}! | <a href="signin.php?logout=true">Logout</a></div>
				{/if}
			</div><!-- end header -->