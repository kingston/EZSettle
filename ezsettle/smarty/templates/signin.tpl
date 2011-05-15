{include file="header.tpl"}

<div class="main_body prepend-5 span-14 append-5">
	
	{if isset($logout)}
		<div class="loud notice">You have been successfully logged out.</div>
	{else}
		<div class="loud success">Please login to get started:</div>
	{/if}
	<div class="box">
		<form id="signin" name="signin" method="post" action="actions/postsignin.php">
			<fieldset>
			<div class="span-5"><label for="username">Username:</label></div>
			<div class="span-5 last"><input type="text" id="username" name="username"/></div>
			<div class="span-5"><label for="password">Password:</label></div>
			<div class="span-5 last"><input type="password" id="password" name="password"/></div>
			<div class="span-10 last"><input type="checkbox" id="agree" name="agree"/>
				I have read and agree to the <a href="terms.php">terms of service.</a></div>
			<div class="prepend-7 span-5 last"><input type="submit" class="super awesome large red button" value="Sign In"/></div>
			</fieldset>
		</form>
	</div>
	<div id="errors" class="error" style="display:none;"></div>
</div><!-- end main body -->

<script type="text/javascript">
{literal}
	//<![CDATA[
		$(document).ready(function() {
			$("#signin").ajaxForm({
				dataType: 'json',
				beforeSubmit: preSignin,
				success: postSignin
			});
		});
		
		function preSignin(formData, jqForm, options) {
			var errors = "";
			if($("#username").val() == "") {
				errors += "You must enter your username!<br/>";
			}
			if($("#password").val() == "") {
				errors += "You must enter your password!<br/>";
			}
			if (errors != "") {
				$("#errors").html(errors);
				$("#errors").show();
				return false;
			}
            $("#errors").hide();
		}
		
		function postSignin(data) {
            if (data.success === true) {
			    window.location = 'cases.php';
            } else {
                $("#errors").html(data.errors);
                $("#errors").show();
            }
		}
		
	//]]>
{/literal}
</script>
