{include file="header.tpl"}
<div class="main_body">
	<div class="loud headline append-bottom">Welcome to the EZSettle Arbitration Process</div>
	<div class="span-24 last">
	<p>
	Welcome to the EZSettle arbitration process. In this process, {$will_arbitrate}. {$ezsettle_arbitrator} will review and analyze the facts of the case and the information that was shared in the mediation process and will provide you and Casey345 with a final binding arbitration settlement. 
	</p>
	<p>
	In the next page, you will be able to review a summary of the information that {$ezsettle_small} will consider in the process.
	</p>
	</div>
	<div  class="super large awesome red button" />
						Send to Arbitration
						</div>
	<div id="send_to_arbitration" class="prepend-20 span-4 last super large awesome red button" style="float:right;">
		
		Send to Arbitration
		
		</div>

</div><!-- end main body -->
<script type="text/javascript">
{literal}
	//<![CDATA[
	$(document).ready(function() {	

		$("#send_to_arbitration").click(function() {
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