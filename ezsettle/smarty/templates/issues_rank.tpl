{include file="header.tpl"}

<div class="main_body">
	<div class="loud headline append-bottom">Please rank the importance of each of the issues to you</div>
	<div class="span-24 last">
{include file="chat_notice.tpl"}
		<div class="prepend-3 span-18 last">
		<table>
			<tr>
				<th>Issues:</th>
				<th><span style="float: left;">Not important</span><span style="float:right;">Most important</span></th>
			</tr>
			{section name=issuesIndex loop=$issues}
				{ if $smarty.section.issuesIndex.index%2 == 0}
					<tr class="even">
				{else}
					<tr>
				{/if}
				<td width="300">{ $issues[issuesIndex] }</td>
				<td width="400"><span style="float: left;">0&nbsp;&nbsp;&nbsp;&nbsp;</span><div id="issue_rank{$smarty.section.issuesIndex.index}" class="issues"></div><span style="float: left;">&nbsp;&nbsp;&nbsp;&nbsp;100</span></td>
				</tr>
			{/section}
		</table>
		</div>
		<div class="prepend-20 span-4 last"><a href="offer.php" class="super large awesome red button">Next »</a></div>

	</div>
	{include file="chat.tpl"}
</div><!-- end main body -->

<script type="text/javascript">
{literal}
	//<![CDATA[
	 $(document).ready(function() {
		$(".issues").slider({
			min: 1,
			max: 99,
			value: 50,
			slide: function(event, ui) {
				var handle = $('.ui-slider-handle', this);
				handle.html(ui.value);
			}
			});
			$('.issues > .ui-slider-handle').html("50");
	});
	//]]>
{/literal}
</script>
{include file="footer.tpl"}