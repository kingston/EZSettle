{include file="header.tpl"}
<div class="main_body">
	<div class="loud headline append-bottom">The Information Provided for Arbitration</div>
	
	<div class="span-24 last">
		{include file="chat_notice.tpl"}
		<div class="span-24 last">			
			<div class="success">
				Here is the information that you provided to EZSettle. 
				This information will be used to determine 
				the final settlement of the case in arbitration.
			</div>
			
			<div class="span-24 last">
				<div class = "span-12">
					<div class="loud headline" >The issues to settle and your preferences</div>
					<table>
						<tr> 
							<th>Issues:</th>
							<th>Your Preferences</th>
						</tr>
						{section name=issuesIndex loop=$issues}
						{ if $smarty.section.issuesIndex.index%2 == 0}
							<tr class="even">
						{else}
							<tr>
						{/if}
						<td width="250">{ $issues[issuesIndex] }</td>
						
						<td><div class="float: right;">
							{$issues_rank[issuesIndex]}
						</div>
						</td>

					
					</tr>
				{/section}

					</table>	
				</div>
				<div class = "span-12 last">
					<div class="loud headline">Your indication regarding relevant factors: </div>
					<table >
						<tr>
							<th>Factors</th>
							<th>Likelihood</th>
						</tr>
						<tr class="even">
							<td>How likely it is that the latop was damaged after the seller has shipped it?</td>
							<td style="vertical-align:top;">{$damage_likeliness}/100</td>
						</tr>
						<tr>
							<td>How willing are you to consider keeping the laptop?</td>
							<td style="vertical-align:top;" >{$creative_likeliness}/100</td>
						</tr>
					</table>
					<br />
					<div style="border:1px black solid; padding:5px;">
					<div class="loud headline">Exchanged Messages</div>
					<p class="even">If you sent messages to the mediator or Casey345, they are included in the arbitration materials.
					</p>
					</div>
				</div>
			</div>
			<div class="loud headline">The offers exchanged</div>
			<table>
				<tr>
					<th>Issues:</th>
					<th>Your Offer-1</th>
					<th>Casey345's Offer-1</th>
					<th>Your Offer-2</th>
					<th>Casey345's Offer-2</th>
					<th>Your Offer-3</th>
					<th>Casey345's Offer-3</th>
				</tr>
				{section name=issuesIndex loop=$issues}
					{ if $smarty.section.issuesIndex.index%2 == 0}
						<tr class="even">
					{else}
						<tr>
					{/if}
					<td width="250">{ $issues[issuesIndex] }</td>
					
					<td><div class="float: right;">
					{if $smarty.section.issuesIndex.index == 0}
						{if $all_offers[0][0]=="Yes"}Yes
						{else}No
						{/if}
					{elseif $smarty.section.issuesIndex.index == 5}
						{if $all_offers[0][5] == "buyer"} Buyer
						{elseif $all_offers[0][5] == "seller"}Seller
						{else} N/A
						{/if}
					{else}
						{$all_offers[0][issuesIndex]}
					{/if}
					</div>
					</td>
					
					<td><div class="float: right;"> 
					{if $smarty.section.issuesIndex.index == 0}
						{if $all_counteroffers[0][0]=="Yes"}Yes
						{else}No
						{/if}
					{elseif $smarty.section.issuesIndex.index == 5}
						{if $all_counteroffers[0][5] == "buyer"} Buyer
						{elseif $all_counteroffers[0][5] == "seller"}Seller
						{else} N/A
						{/if}
					{else}
						{$all_counteroffers[0][issuesIndex]}
					{/if}
					</div>
					</td>
					<td><div class="float: right;">
					{if $smarty.section.issuesIndex.index == 0}
						{if $all_offers[1][0]=="Yes"}Yes
						{else}No
						{/if}
					{elseif $smarty.section.issuesIndex.index == 5}
						{if $all_offers[1][5] == "buyer"} Buyer
						{elseif $all_offers[1][5] == "seller"}Seller
						{else} N/A
						{/if}
					{else}
						{$all_offers[1][issuesIndex]}
					{/if}
					</div>
					</td>
					
					<td><div class="float: right;"> 
					{if $smarty.section.issuesIndex.index == 0}
						{if $all_counteroffers[1][0]=="Yes"}Yes
						{else}No
						{/if}
					{elseif $smarty.section.issuesIndex.index == 5}
						{if $all_counteroffers[1][5] == "buyer"} Buyer
						{elseif $all_counteroffers[1][5] == "seller"}Seller
						{else} N/A
						{/if}
					{else}
						{$all_counteroffers[1][issuesIndex]}
					{/if}
					</div>
					</td>
					
					<td><div class="float: right;">
					{if $smarty.section.issuesIndex.index == 0}
						{if $all_offers[2][0]=="Yes"}Yes
						{else}No
						{/if}
					{elseif $smarty.section.issuesIndex.index == 5}
						{if $all_offers[2][5] == "buyer"} Buyer
						{elseif $all_offers[2][5] == "seller"}Seller
						{else} N/A
						{/if}
					{else}
						{$all_offers[2][issuesIndex]}
					{/if}
					</div>
					</td>
					
					<td><div class="float: right;"> 
					{if $smarty.section.issuesIndex.index == 0}
						{if $all_counteroffers[2][0]=="Yes"}Yes
						{else}No
						{/if}
					{elseif $smarty.section.issuesIndex.index == 5}
						{if $all_counteroffers[2][5] == "buyer"} Buyer
						{elseif $all_counteroffers[2][5] == "seller"}Seller
						{else} N/A
						{/if}
					{else}
						{$all_counteroffers[2][issuesIndex]}
					{/if}
					</div>
					</td>
					
					</tr>
				{/section}
				<tr><td colspan="3"><div style="float: right;">
						<div id="send_to_arbitration" class="super large awesome red button" />
						Send to Arbitration
						</div></td></tr>
			</table>
			
		</div>

	</div>
	{include file="chat.tpl"}
	<div class="arb_loading" id="loading" style="display:none">
				<div class="loud headline"><img class="loader" id="loader" src="images/loader_big.gif" />Thanks for waiting...</div>
				Please wait for your arbitration Settlement.{$ezsettle_arbitrating} case and the information that was shared in the mediation process{if isset($ezsettle_being_considered)} {$ezsettle_being_considered} {/if}.<br/>
				The review and analysis process may take a few minutes, please wait for a pop-up window with the terms of the binding arbitration settlement to appear here.
				<br/><div style="clear:both; height: 1px;"></div>
				<div style="clear:both; height: 1px;"></div>
			</div><!-- end loading -->
</div><!-- end main body -->
<script type="text/javascript">
{literal}
	//<![CDATA[
	 $(document).ready(function() {
		$("#send_to_arbitration").click(function() {
			$(".success").hide();
			$("#send_to_arbitration").hide();
			var left = $(window).width()/2  - $("#loading").width()/2;
			//var top = $(window).height()/2 + $(window).scrollTop() - $("#message_history").height()/2;
			$("#loading").css("top","10px");

			$("#loading").css("left", left+"px");
			$("#loading").fadeIn();
			$.post("actions/postoffer.php",
			{offer_num: {/literal}{$offer_num}{literal}},
			function(data) {
				afterOffer(data)
			},
			'json'
			);			
		});

	});

	function afterOffer(data) {
		setTimeout(function() {
			$("#loading").fadeOut();
			window.location = 'offer.php';
		}, 3000);
	}
	
	
	//]]>
{/literal}
</script>
{include file="footer.tpl"}