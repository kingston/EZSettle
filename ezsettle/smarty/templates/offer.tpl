{include file="header.tpl"}

<div class="main_body">
	<div class="loud headline append-bottom">{ $offer_title}</div>
	<div class="span-24 last">
		{include file="chat.tpl"}
		<div class="prepend-3 span-18 last">
		<form id="offer" name="ofer" method="post" action="offer.php">
			<input type="hidden" name="offer_num" value="{$offer_num}" />
			<table>
				<tr>
					<th>Issues:</th>
					<th><div style="float: right;">Your Offer:</div></th>
				</tr>
				{section name=issuesIndex loop=$issues}
					{ if $smarty.section.issuesIndex.index%2 == 0}
						<tr class="even">
					{else}
						<tr>
					{/if}
					<td width="300">{ $issues[issuesIndex] }</td>
					<td width="400"><div style="float: right;">
					{if $smarty.section.issuesIndex.index == 0}
						<input type="radio" name="issues0" value="Yes">Yes <input type="radio" name="issues0" value="No">No
					{else}
						$<input type="text" size="10" maxlength="10" name="issues{$smarty.section.issuesIndex.index}" value="" />
					{/if}
					</div>
					</td>
					</tr>
				{/section}
					<tr><td>Comments for Casey345:</td><td><div style="float: right;"><textarea rows="3" cols="40" name="casey" value="" ></textarea></div></td></tr>
					<tr><td>Comments for the mediator:<br/>
					<span class="quiet">(These will not be shown to Casey345)</span></td>
					<td><div style="float: right;"><textarea rows="3" cols="40" name="mediator" value="" ></textarea></div></td></tr>
					<tr><td colspan="2"><div style="float: right;"><input type="submit" class="super large awesome red button" name="submit" value="Make offer" /></div></td></tr>
			</table>
		</form>
		</div>

	</div>
</div><!-- end main body -->

<script type="text/javascript">
{literal}
	//<![CDATA[
	 $(document).ready(function() {
	
	});
	//]]>
{/literal}
</script>
{include file="footer.tpl"}