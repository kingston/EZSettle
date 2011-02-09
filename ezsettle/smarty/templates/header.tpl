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
		
		<script type="text/javascript" src="js/jquery-1.4.3.js"></script>
		<script type="text/javascript" src="js/jqueryui/js/jqueryui.js"></script>
		<script type="text/javascript" src="js/jquery.form.js"></script>
		<script type="text/javascript" src="js/jquery.scrollTo.js"></script>
	</head>
	<body>
		<div id="dark">&nbsp;</div>
		<div class="container">
			<div class="header span-24 last append-bottom">
				<div class="logo span-6"><a href="index.php"><img class="left" width="375" src="images/ezsettle.png"></a></div>
				
				<div class="prepend-6 span-12 last">
					<div id="nav">
						<a href="index.php">Home</a> | 
						<a href="privacy.php">Privacy</a> |
						<a href="terms.php">Terms of Service</a> |
						<a href="faq.php">FAQ</a> |
						<a href="contact.php">Contact</a>
					</div><br/>
					<div style="float: right;">
						{if isset($username) && $username != "" }
							Welcome, Buyer128! | <a href="signin.php?logout=true">Logout</a>
						{else}
							<a href="signin.php">Login</a>
						{/if}
						{if $admin}
							<br/>
							Admin Mode
							{if isset($condition) }
								(Condition {$condition})<br/>
								{$conditionDescription[$condition]}
							{/if}
							<br/>
							Switch to condition:<br/> 
							{section name=i start=1 loop=$conditionArr}
								{if $condition != $smarty.section.i.index }<span class="condition change" id="{$conditionArr[i]}">
								{else}<span class="current">
								{/if}
									{$conditionArr[i]} &nbsp;&nbsp;&nbsp;
								</span>
							{/section}
						{/if}
							
					</div>
				</div>
				
				<div class="header_links span-24 last">
					
				</div>
			
			</div><!-- end header -->