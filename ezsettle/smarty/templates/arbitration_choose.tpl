{include file="header.tpl"}
<div class="main_body">
	<div class="loud headline append-bottom">Arbitration Process</div>
	<div class="span-24 last">
		{include file="chat_notice.tpl"}
		<div class="loud headline append-bottom">Please choose your arbitrator:</div>
		<div class="prepend-5 span-10 last">
			<div class="span-5">
				<img class="arb_opt_pic" src="images/ezsettle_human.jpg"></div>
				<img class="arb_opt_pic" src="images/ezsettle_computer.jpg"></div>
			</div>
		</div>
	</div>
	{include file="chat.tpl"}
</div><!-- end main body -->
<script type="text/javascript">
{literal}
	//<![CDATA[
	 $(document).ready(function() {
		$("#counteroffer").click(function() {
			$.post("actions/postoffer.php",
			{offer_num: {/literal}{$offer_num}{literal}},
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