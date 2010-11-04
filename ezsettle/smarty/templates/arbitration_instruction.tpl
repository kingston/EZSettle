{include file="header.tpl"}
<div class="main_body">
	<div class="loud headline append-bottom">Arbitration Instruction</div>
	THE  TEXT GOES HERE<br />
	<div id="arb_instruction">Go back to offer</div>
</div><!-- end main body -->
<script type="text/javascript">
{literal}
	//<![CDATA[
	$(document).ready(function() {	

		$("#arb_instruction").click(function() {
			$.post("actions/postoffer.php",
			{offer_num: {/literal}{$offer_num}{literal}}, //Add info about choice here
			function(data) {
				window.location = 'offer.php';
			},
			'json'
			);			
		});
		


		
	
	});
	//]]>
{/literal}
</script>
{include file="footer.tpl"}