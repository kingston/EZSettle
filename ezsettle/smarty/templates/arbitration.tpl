{include file="header.tpl"}
<div class="main_body">
	<div class="loud headline append-bottom">Arbitration process</div>
	<div class="span-24 last">
		{include file="chat_notice.tpl"}
		<div class="span-24 last">
		<!--<form id="offer" name="ofer" method="post" action="offer.php">-->
			<input type="hidden" name="offer" value="{$offer}" />
			<div class="success">
				Here is the summary of your and Casey345's offers.
			</div>
			<table>
				<tr>
					<th>Issues:</th>
					<th>Your 1st Offer</th>
					<th>Casey345's 1st Counteroffer</th>
					<th>Your 2nd Offer</th>
					<th>Casey345's 2nd Counteroffer</th>
					<th>Your 3rd Offer</th>
					<th>Casey345's 3rd Counteroffer</th>
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
						{if $all_offers[3][0]=="Yes"}Yes
						{else}No
						{/if}
					{elseif $smarty.section.issuesIndex.index == 5}
						{if $all_offers[3][5] == "buyer"} Buyer
						{elseif $all_offers[3][5] == "seller"}Seller
						{else} N/A
						{/if}
					{else}
						{$all_offers[3][issuesIndex]}
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
			</table>
		<!--</form>-->
		</div>

	</div>
	{include file="chat.tpl"}
</div><!-- end main body -->

{include file="footer.tpl"}