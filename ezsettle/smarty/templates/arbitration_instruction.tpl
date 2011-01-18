{include file="header.tpl"}
<div class="main_body">
	<div class="prepend-1 loud headline append-bottom">Welcome to the EZSettle Arbitration Process</div>
	<div class="prepend-1 span-22 append-1 last">
	<p>
	Welcome to the EZSettle arbitration process. In this process, {$will_arbitrate}. {$ezsettle_arbitrator} will review and analyze the facts of the case and the information that was shared in the mediation process. Subsequently, {if $condition==1||$condition==3}the arbitration engine{elseif $condition==2 ||$condition==4}I{else}your chose arbitrator{/if} will provide you and Casey345 with a final binding arbitration settlement. 
	</p>
	<p>
	On the next page, you will be able to review a summary of the information that {$ezsettle_small} will consider in the process.
	</p>
	<div {if $condition==5 || $condition==6}id="send_to_study"{else}id="send_to_arbitration"{/if} class="super large awesome red button" />
		Send Case to Arbitration
	</div>
	</div>
	

	<!--<div id="send_to_arbitration" class="prepend-20 span-4 last super large awesome red button" style="float:right;">
		
		Send to Arbitration
		
		</div>-->

</div><!-- end main body -->
<script type="text/javascript">
{literal}
	//<![CDATA[
	var time_start;
	var time_end;
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
		
		$("#send_to_study").click(function() {
			alert("Please complete the mediation questionnaire and then return to the EZSettle website to complete the arbitration.");
			window.open("https://stanforduniversity.qualtrics.com/SE/?SID=SV_26sE8JX0VKJ5FNq" );
			$.post("actions/postoffer.php",
			{offer_num: {/literal}{$offer_num}{literal}}, //Add info about choice here
			function(data) {
				window.location = 'offer.php';
			},
			'json'
			);		
		});
		
		var d_s = new Date();
		time_start = d_s.getTime();

	});
	
	$(window).unload(function(){
		exit_page();
	});
	
	function exit_page(){
		var d_e = new Date();
		time_end = d_e.getTime();
		$.post("actions/save_time_on_page.php",
     		{page_name:'arb_instruction',
     		time_spent:(time_end-time_start)},
     		function(data){
     			alert("done");
     		},
     		'json'
     		);
	}

	//]]>
{/literal}
</script>
{include file="footer.tpl"}