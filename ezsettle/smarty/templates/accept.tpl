{include file="header.tpl"}
<div class="main_body">
	<div class="large loud headline">Resolution</div>
	<hr class="space"/>
	Congratulations! You and Casey345 have reached an agreement about the terms of your settlement.
	<hr class="space"/>
	According to your agreement:
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
				<tr><td colspan="3"><div style="float: right;">
						<input type="submit" class="super large awesome red button" name="accept" value="Start Arbitration Process" />
						</div></td></tr>
			</table>
	
	<div class="prepend-20 span-4 last"><a href="javascript:window.close()" id="close_window" href="javascript:void(0)" class="super medium awesome red button">Print Agreement</a></div>

</div><!-- end main body -->

{include file="footer.tpl"}

<script type="text/javascript">
{literal}
	//<![CDATA[
	 $(document).ready(function() {
		$("#close_window").click(function() {
			$(window).close();
		});
	});
	//]]>
{/literal}
</script>