{include file="header.tpl"}

<div class="main_body">
	<div class="loud headline append-bottom">The issues that need to be resolved</div>
	<div class="span-24 last">
	{include file="chat_notice.tpl"}
		<div class="prepend-3 span-10">
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
	<div class="prepend-1 span-8 append-2 last">
		<div style="height: 75px; width:1px;">&nbsp:</div>
		Do you agree that these are the issues that need to be addressed in this process:<br/>
		<span id="go_to_rank_issue" class="super large awesome red button wait">Yes</span>
		<span id="add_issue" class="super large awesome black button wait">No&nbsp;</span>
		<div style="display:none;" id="more_issues">
			Add additional issues:
			<input type="text" id="issues_text"/>
			<input type="submit" class="super medium awesome red button" id="add" value="Add">
			<div id="issues_added" style="display:none;" class="notice span-6">Thanks, got it, but unfortunately, our system cannot consider this issue at this time. <a href="issues2.php">Click here to continue</a></div>
		</div>
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
		$("#add_issue").click(function() {
			$("#more_issues").fadeIn('slow');
		});
		
		$("#add").click(function() {
			//PAOTODO:remove this and put it into the database
			//alert($("#issues_text").val());
     		$.post("actions/add_additional_issues.php",
     		{added:$("#issues_text").val()},
     		function(data){
     			$("#issues_text").val("");
				$("#issues_added").show();
     		},
     		'json
     		);
			
		});	
		
		$("#go_to_rank_issue").click(function(){
			window.location = "issues2.php";
		});
		
		},max_time);
		
	});
	//]]>
{/literal}
</script>
