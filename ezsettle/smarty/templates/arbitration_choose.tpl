{include file="header.tpl"}
<div class="main_body">
	<div class="loud headline append-bottom">Arbitration Process</div>
	<div class="span-24 last">
		{include file="chat_notice.tpl"}
		<div class="loud headline append-bottom">Please choose your arbitrator:</div>
		<div class="prepend-4 span-16 last">
			<table id="arb_opt">
			<tr>
				<td><img src="images/ezsettle_human.jpg"></td>
				<td><img src="images/ezsettle_computer.jpg"> </td>
			</tr>
			<tr>
				<td>EZSettle trained professional mediator</td>
				<td>EZSettle professional AnaLegal arbitration engine</td>
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
		$("#arb_opt > tr > td").hover(function(){
			$(this).css("border","2px solid red");
		});
		
	
	});
	//]]>
{/literal}
</script>

{include file="footer.tpl"}