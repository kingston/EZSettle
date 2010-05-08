{include file="header.tpl"}

<div class="main_body">
	<div class="loud headline append-bottom">The issues that need to be resolved</div>
	<div class="span-24 last">
		<div class="box" style="height: 200px; overflow: scroll;">
		
			<div class="chat" id="chat2" style="display:none;">
				<div class="span-2"><img class="profile_picture" src="images/avatar.jpg"></div>
				<div class="span-20 last"><span class="speaker">EZSettle Mediator:</span> 
					You may not recognize all the issues in the list, if the other party has raised an issue that you did not include in your list. After reviewing the list, please click “yes” to confirm that these are the issues or “no” to add another issue.
				</div>
				<div class="clearfix" style="margin-bottom: 5px;"></div>
			</div><!-- end chat -->
			
			<div class="chat" id="chat1" style="display:none;">
				<div class="span-2"><img class="profile_picture" src="images/avatar.jpg"></div>
				<div class="span-20 last"><span class="speaker">EZSettle Mediator:</span> In this process, we would like to address the concerns that both you and Casey345 raised. We combined the issues that the two of you included in your correspondence with PC4U.com into a single list.</div>
				<div class="clearfix" style="margin-bottom: 5px;"></div>
			</div><!-- end chat -->
			
			<div>
				<div class="span-2"><img class="profile_picture" src="images/avatar.jpg"></div>
				<div class="span-20 last"><span class="speaker">EZSettle Mediator:</span> Hello!</div>
				<div class="clearfix" style="margin-bottom: 5px;"></div>
			</div><!-- end chat -->
			
		</div><!-- end box -->
		
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
		</div>
	</div>
	</div>
</div><!-- end main body -->

<script type="text/javascript">
{literal}
	//<![CDATA[
	 $(document).ready(function() {
		setTimeout(function() { $("#chat1").show()}, 2000);
		setTimeout(function() { $("#chat2").show()}, 4000);
		$("#add_issue").click(function() {
			$("#more_issues").fadeIn('slow');
		})
	});
	//]]>
{/literal}
</script>
{include file="footer.tpl"}