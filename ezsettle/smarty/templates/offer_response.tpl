{include file="header.tpl"}
<div class="main_body">
	<div class="loud headline append-bottom">{ $offer_title}</div>
	<div class="span-24 last">
		{include file="chat_notice.tpl"}
		<div class="span-24 last">
		
			<input type="hidden" name="offer" value="{$offer}" />
			<div class="success">
				Here is Casey345’s counter offer. You may accept the offer or make a new counter offer.
			</div>
			<table>
				<tr>
					<th>Issues:</th>
					<th>Your Offer</th>
					<th>Casey345's Counteroffer</th>
				</tr>
				{section name=issuesIndex loop=$issues}
					{ if $smarty.section.issuesIndex.index%2 == 0}
						<tr class="even">
					{else}
						<tr>
					{/if}
					<td width="250">{ $issues[issuesIndex] }</td>
					
					<td width="300"><div class="float: right;">
					{if $smarty.section.issuesIndex.index == 0}
						<input type="radio" name="issues0" value="Yes" disabled="yes" {if $offers[0]=="Yes"}checked="yes"{/if} />Yes 
						<input type="radio" name="issues0" value="No" disabled="yes" {if $offers[0]=="No"}checked="yes"{/if} />No
					{elseif $smarty.section.issuesIndex.index == 5}
						<input type="radio" name="issues5" value="buyer" disabled="yes" {if $offers[5]=="buyer"}checked="yes"{/if } />Buyer
						<input type="radio" name="issues5" value="seller" disabled="yes" {if $offers[5]=="seller"}checked="yes"{/if}/>Seller
					{else}
						$<input type="text" size="10" maxlength="10" disabled="yes" name="issues{$smarty.section.issuesIndex.index}" value="{$offers[issuesIndex]}" />
					{/if}
					</div>
					</td>
					
					<td width="300"><div class="float: right;"> 
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
					</tr>
				{/section}
					<tr><td colspan="3"><div style="float: right;">
						<input type="submit" class="super large awesome red button wait" name="accept" id="accept_offer" value="✓ Accept Offer" />
						
						<input type="submit" class="super large awesome black button wait" name="submit" id="counteroffer" 
							{if $offer_num==8}value="Go to Arbitration Process »"{else}value="Make Counteroffer »"{/if} /></div></td></tr>
			</table>
		
		</div>

	</div>
	{include file="chat.tpl"}
</div><!-- end main body -->
{include file="footer.tpl"}
<script type="text/javascript">
{literal}
	//<![CDATA[
	 $(document).ready(function() {
	 	setTimeout(function() {	
			$("#counteroffer").click(function() {
				$.post("actions/postoffer.php",
				{offer_num: {/literal}{$offer_num}{literal}},
				function(data) {
					window.location = 'offer.php';
				},
				'json'
				);
			});
			
			$("#accept_offer").click(function() {
				$.post("actions/offer.php",
				{offer_num: {/literal}{$offer_num}{literal},
				accept: "yes"},
				function(data) {
					window.location = 'offer.php';
				},
				'json'
				);
			});
		},max_time);
		
	});
	//]]>
{/literal}
</script>
