{include file="header.tpl"}

<div class="main_body">
	<div class="loud headline append-bottom">Please rank the importance of each of the issues to you</div>
	<div class="span-24 last">
{include file="chat_notice.tpl"}
		<div class="prepend-3 span-18 last">
		<table>
			<tr>
				<th>Issues:</th>
				<th><span style="float: left;">Not important</span><span style="float:right;">Highly important</span></th>
			</tr>
			{section name=issuesIndex loop=$issues}
				{ if $smarty.section.issuesIndex.index%2 == 0}
					<tr class="even">
				{else}
					<tr>
				{/if}
				<td width="300">{ $issues[issuesIndex] }</td>
				<td width="400"><span style="float: left;">0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><div id="issue_rank{$smarty.section.issuesIndex.index}" class="issues"></div><span style="float: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;100</span></td>
				</tr>
			{/section}
		</table>
		</div>
		<div class="prepend-20 span-4 last" ><div id="submit_ranking" class="super large awesome red button wait">Next »</div></div>

	</div>
	{include file="chat.tpl"}
</div><!-- end main body -->
{include file="footer.tpl"}
<script type="text/javascript">

{literal}
	//<![CDATA[
	var time_start;
	var time_end;
	 $(document).ready(function() {
	 	setTimeout(function() {	
		$("#submit_ranking").click(function() {
			$.post("actions/postrank.php",
			{issue_rank0: $( "#issue_rank0" ).slider( "option", "value" ),
			 issue_rank1: $( "#issue_rank1" ).slider( "option", "value" ),
			 issue_rank2: $( "#issue_rank2" ).slider( "option", "value" ),
			 issue_rank3: $( "#issue_rank3" ).slider( "option", "value" ),
			 issue_rank4: $( "#issue_rank4" ).slider( "option", "value" ),
			 issue_rank5: $( "#issue_rank5" ).slider( "option", "value" ),	
			
			}, //Add info about choice here
			function(data) {
				window.location = 'offer.php';
			},
			'json'
			);			
		});		
		},max_time);
		$(".issues").slider({
			min: 1,
			max: 100,
			value: 50,
			slide: function(event, ui) {
				var handle = $('.ui-slider-handle', this);
				handle.html(ui.value);
			}
			});
			$('.issues > .ui-slider-handle').html("50");
			
			var d_s = new Date();
		time_start = d_s.getTime();
			
	});
		$(window).unload(function(){
		exit_page();
	});
	
	function exit_page(){
		var d_e = new Date();
		time_end = d_e.getTime();
		
		$.post("actions/save_time_on_page.php",
     		{page_name:'issues_rank',
     		time_spent:(time_end-time_start)},
     		function(data){
     			alert("done");
     		},
     		'json'
     		);
	}
	//]]>
{/literal}
</script>
