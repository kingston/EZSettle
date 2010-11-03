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
						{if $all_offers[6][0]=="Yes"}Yes
						{else}No
						{/if}
					{elseif $smarty.section.issuesIndex.index == 5}
						{if $all_offers[6][5] == "buyer"} Buyer
						{elseif $all_offers[6][5] == "seller"}Seller
						{else} N/A
						{/if}
					{else}
						x{$all_offers[6][issuesIndex]}
						<!--$<input type="text" size="10" maxlength="10" disabled="yes" name="issues{$smarty.section.issuesIndex.index}" value="{$offers[issuesIndex]}" />-->
					{/if}
					</div>
					</td>
					
					<td><div class="float: right;"> 
					{if $smarty.section.issuesIndex.index == 0}
						<input type="radio" name="c_issue0" value="Yes" disabled="yes" {if $counteroffers[0]=="Yes"}checked{/if}>Yes 
						<input type="radio" name="c_issue0" value="No" disabled="yes" {if $counteroffers[0]=="No"}checked{/if}>No
					{elseif $smarty.section.issuesIndex.index == 5}
						<input type="radio" name="issues5" value="buyer" disabled="yes" {if $counteroffers[5]=="buyer"}checked="yes"{/if}/>Buyer <input type="radio" name="issues5" value="seller" disabled="yes" {if $counteroffers[5]=="seller"}checked="yes"{/if}/>Seller
					{else}
						$<input type="text" size="10" maxlength="10" disabled="yes" name="c_issues{$smarty.section.issuesIndex.index}" value="{$counteroffers[issuesIndex]}" />
					{/if}
					</div>
					</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					</tr>
				{/section}
					<tr><td colspan="3"><div style="float: right;">
						<input type="submit" class="super large awesome red button" name="accept" value="✓ Accept Offer" />
						<input type="submit" class="super large awesome black button" name="submit" id="counteroffer" value="Make Counteroffer »" /></div></td></tr>
			</table>
		<!--</form>-->
		</div>

	</div>
	{include file="chat.tpl"}
</div><!-- end main body -->

{include file="footer.tpl"}