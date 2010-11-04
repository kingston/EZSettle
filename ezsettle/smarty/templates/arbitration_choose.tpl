{include file="header.tpl"}
<div class="main_body">
	<div class="loud headline append-bottom">Arbitration Process</div>
	<div class="span-24 last">
		{include file="chat_notice.tpl"}
		<div class="loud headline append-bottom">Please choose your arbitrator:</div>
		<div class="prepend-4 span-16 last">
			<table id="arb_opt">
			<tr>
				<td class="arb_human"><img src="images/ezsettle_human.jpg"></td>
				<td class="arb_computer"><img src="images/ezsettle_computer.jpg"> </td>
			</tr>
			<tr>
				<td class="arb_human">EZSettle trained professional mediator</td>
				<td class="arb_computer">EZSettle professional AnaLegal arbitration engine</td>
			</tr>
			</table>
		</div>
	</div>
	{include file="chat.tpl"}
</div><!-- end main body -->
<script type="text/javascript">
{literal}
	//<![CDATA[
	$(document).ready(function() {
		$(".arb_human").hover(function(){
			$(".arb_human").css("background","#cccccc");
		});
		
		$(".arb_human").mouseleave(function(){
			$(".arb_human").css("background","#eeeeee");
		});
		
		$(".arb_human").click(function(){
			alert("choose human arb");
			//$(".arb_human").css("background","#eeeeee");
		});
		
		$(".arb_human").click(function() {
			$.post("actions/postoffer.php",
			{offer_num: {/literal}{$offer_num}{literal}},
			function(data) {
				window.location = 'offer.php';
			},
			'json'
			);

		});
		
		$(".arb_computer").hover(function(){
			$(".arb_computer").css("background","#cccccc");
		});
		
		$(".arb_computer").mouseleave(function(){
			$(".arb_computer").css("background","#eeeeee");
		});
		
		$(".arb_computer").click(function(){
			alert("Choose computer arb");
			//$(".arb_computer").css("background","#cccccc");
		});
	

		$(".arb_computer").click(function() {
			$.post("actions/postoffer.php",
			{offer_num: {/literal}{$offer_num}{literal}},
			function(data) {
				window.location = 'offer.php';
			},
			'json'
			);			/*$.post("actions/postoffer.php",
			{offer_num: {/literal}{$offer_num}{literal}},
			function(data) {
				window.location = 'offer.php';
			},
			'json'
			);*/
		});
		


		
	
	});
	//]]>
{/literal}
</script>

{include file="footer.tpl"}