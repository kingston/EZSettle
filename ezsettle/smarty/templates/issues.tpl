{include file="header.tpl"}

<div class="main_body">
	<div class="loud headline append-bottom">The issues that need to be resolved</div>
	<div class="span-24 last">
	
		{include file="chat.tpl"}
		
		<div class="span-8">
		<table>
			<tr>
				<th>Issues:</th>
			</tr>
			{section name=issuesIndex loop=$issues}
				{ if $smarty.section.issuesIndex.index%2 == 0}
					<tr class="even">
				{else}
					<tr>
				{/if}
				<td>{ $issues[issuesIndex] }</td>
				</tr>
			{/section}
		</table>
		</div>
	<div class="14 last">
		Do you agree that these are the issues that need to be addressed in this process: 
		<a href="issues2.php" class="super large awesome red button">Yes</a>
		<a id="add_issue" class="super large awesome black button">No</a>
		<div style="display:none;" id="more_issues">
			Add additional issues:
			<input type="text" />
			<input type="submit" value="Add">
		</div>
	</div>
	</div>
</div><!-- end main body -->

<script type="text/javascript">
{literal}
	//<![CDATA[
	 $(document).ready(function() {
		$("#add_issue").click(function() {
			$("#more_issues").fadeIn('slow');
		})
	});
	//]]>
{/literal}
</script>
{include file="footer.tpl"}