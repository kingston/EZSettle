{include file="header.tpl"}

<div class="main_body">
	<div class="loud headline append-bottom">
	Pending Cases
	</div>
	<div class="span-15 last">
		You have one pending case.
		<table>
			<tr>
				<th>Case:</th>
				<th>Other party:</th>
				<th>Agent:</th>
				<th>Action:</th>
			</tr>
			<tr class="even">
				<td>Laptop purchase</td>
				<td>Seller345</td>
				<td>EZSettle Mediator</td>
				<td><a href="process.php" class="super large awesome red button">Resolve Case</a></td>
			</tr>
		</table>
	</div>
	<hr class="space"/>
	<div class="loud headline append-bottom">
	Completed Cases
	</div>
	<div class="span-15 last">
		You do not have any completed cases.
		
	</div>
</div><!-- end main body -->
<script type="text/javascript">
{literal}
	//<![CDATA[
	var time_start;
	var time_end;
	
	$(document).ready(function() {		
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
     		{page_name:'cases',
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
{include file="footer.tpl"}