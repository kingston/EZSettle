{include file="header.tpl"}
<div class="main_body">
	<div class="loud headline append-bottom">Choose Arbitration Service</div>
	<div class="span-24 last">
		<!--{include file="chat_notice.tpl"}-->
		Good news, you and Casey345 made the same choice on {$arb_choice}. Click 'Next' to move to
		arbitration.
		<div class="prepend-20 span-4 last">
			<div id="send_to_arbitration" class="super large awesome red button" />
						Next
			</div></td>
		</div>
	</div>
	<!--{include file="chat.tpl"}-->
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
     		{page_name:'arb_same_choice',
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