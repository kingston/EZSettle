{include file="header.tpl"}
<div class="main_body">
	<div class="loud headline append-bottom">Additional Ideas for Settlement</div>
	<div class="span-24 last">
{include file="chat_notice.tpl"}
		<div class="span-24 last">
		
			<br/>
		<div class="span-3">Completely Unwilling&nbsp;&nbsp;&nbsp;</div><div id="damage_slider" class="span-11" style="width: 400px;"></div><div class="span-4">&nbsp;&nbsp;&nbsp;Extremely<br />&nbsp;&nbsp;&nbsp;Willing</div>
		<div class="span-4 last"><a id="next" class="super large awesome red button wait">Next »</a></div>
		 </div>
		<div class="clearfix append-bottom"></div>
		<hr class="space"/>
	{include file="chat.tpl"}
</div><!-- end main body -->
{include file="footer.tpl"}
<script type="text/javascript">
{literal}
	//<![CDATA[
	var time_start;
	var time_end;

	 $(document).ready(function() {
		$("#damage_slider").slider({
			min: 1,
			max: 100,
			value: 50,
			slide: function(event, ui) {
				var handle = $('.ui-slider-handle', this);
				handle.html(ui.value);
			}
			});
			$('#damage_slider > .ui-slider-handle').html("50");
			setTimeout(function() {	
				$("#next").click(function() { 
					$.post("actions/postoffer.php",
					{offer_num: {/literal}{$offer_num}{literal},
					creative_likeliness: $( "#damage_slider" ).slider( "option", "value" )},
					function(data) {
						window.location = 'offer.php';
					},
					'json'
					);
				});
			},max_time);
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
     		{page_name:'creative',
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
