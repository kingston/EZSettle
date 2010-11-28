{include file="header.tpl"}
<div class="main_body">
	<div class="span-24 last">
		<div class="loud headline append-bottom">Choose Arbitration Service</div>
		Please choose whether you would like the case to be arbitrated by one of EZSettle's staff arbitrators or by EZSettle’s AnaLegal™ arbitration software. If you and Casey345 do not make the same choice, you will be directed to discuss your options and reach agreement on the matter.
		<br/><br/>
		<div class="prepend-4 span-16 last">
			<table id="arb_opt">
			<tr>
				<td class="arb_human"><img src="images/ezsettle_human.jpg"></td>
				<td class="arb_computer"><img src="images/ezsettle_computer.jpg"> </td>
			</tr>
			<tr>
				<td class="arb_human" >EZSettle trained staff arbitrator</td>
				<td class="arb_computer">EZSettle AnaLegal arbitration engine</td>
			</tr>
			</table>
		</div>
	</div>
</div><!-- end main body -->
<script type="text/javascript">
{literal}
	//<![CDATA[
	var time_start;
	var time_end;
	$(document).ready(function() {
		$(".arb_human").hover(function(){
			$(".arb_human").css("background","#cccccc");
		});
		
		$(".arb_human").mouseleave(function(){
			$(".arb_human").css("background","#eeeeee");
		});
		
		
		$(".arb_human").click(function() {
			$.post("actions/postchoosearb.php",
			{offer_num: {/literal}{$offer_num}{literal},
			 arb_choice: "EZSettle trained staff mediator"},
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
		
	

		$(".arb_computer").click(function() {
			$.post("actions/postchoosearb.php",
			{offer_num: {/literal}{$offer_num}{literal},
				arb_choice:"EZSettle AnaLegal arbitration engine"}, //Add info about choice here
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
     		{page_name:'arb_choose',
     		time_spent:(time_end-time_start)},
     		function(data){
     			//alert("done");
     		},
     		'json'
     		);
	}

	//]]>
{/literal}
</script>

{include file="footer.tpl"}