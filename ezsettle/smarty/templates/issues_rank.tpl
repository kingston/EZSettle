{include file="header.tpl"}

<div class="main_body">
	<div class="loud headline append-bottom">Please rank the importance of each of the issues to you</div>
	<div class="span-24 last">
		<div class="box" style="height: 200px; overflow: scroll;"><span class="speaker">EZSettle Mediator:</span>Pull the marker to indicate how important each issue is to you  (most right – very important, most left –not important) we will show you a numerical value ranging from 1-100 corresponding to your mark on the scale. In case you and Casey345 do not reach an agreement within 3 rounds of mediation, your ranking will help the EZSettle arbitrator consider which aspects of this dispute are more important to you when determining the final settlement.</div>
		<div class="span-24 last">
		<table>
			<tr>
				<th>Issues:</th>
				<th>Rank:</th>
			</tr>
			{section name=issuesIndex loop=$issues}
				{ if $smarty.section.issuesIndex.index%2 == 0}
					<tr class="even">
				{else}
					<tr>
				{/if}
				<td width="200">{ $issues[issuesIndex] }</td>
				<td width="500"><span style="float: left;">0</span><div id="issue_rank{$smarty.section.issuesIndex.index}" class="issues"></div><span style="float: left;">100</span></td>
				</tr>
			{/section}
		</table>
		</div>
		<div class="prepend-20 span-4 last"><a href="offer.php" class="super large awesome red button">Next »</a></div>

	</div>
</div><!-- end main body -->

<script type="text/javascript">
{literal}
	//<![CDATA[
	 $(document).ready(function() {
		$(".issues").slider({
			min: 1,
			max: 100,
			value: 50,
			slide: function(event, ui) {
				var handle = $('.ui-slider-handle', this);
				handle.html(ui.value);
			}
			});
	});
	//]]>
{/literal}
</script>
{include file="footer.tpl"}