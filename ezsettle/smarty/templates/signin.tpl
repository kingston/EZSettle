{include file="header.tpl"}

<div class="main_body prepend-6 span-12 append-6">
	<div class="loud notice">Get started:</div>
	<div class="box">
		<form id="signin" name="signin" method="post" action="postsignin.php">
			<fieldset>
			<div class="span-5"><label for="username">Username:</label></div>
			<div class="span-5 last"><input type="text" id="username" name="username"/></div>
			<div class="span-5"><label for="password">Password:</label></div>
			<div class="span-5 last"><input type="password" id="password" name="password"/></div>
			<div class="span-10 last"><input type="checkbox" id="agree" name="agree" disabled/>
				I have read and agree to the <a href="privacy.php">terms of service.</a></div>
			<div class="prepend-5 span-5 last"><input type="submit" class="super awesome large red button" value="Sign In"/></div>
			</fieldset>
		</form>
	</div>
</div><!-- end main body -->
