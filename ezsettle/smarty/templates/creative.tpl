{include file="header.tpl"}
<div class="main_body">
	<div class="loud headline append-bottom">Additional Ideas for Settlement</div>
	<div class="span-24 last">
{include file="chat_notice.tpl"}
		<div class="span-24 last">
		<div class="success">
				Please indicate here if you are willing to consider this option.{$ezsettle} will
NOT share this information with Casey345.
			</div>
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
	 $(document).ready(function() {
		$("#damage_slider").slider({
			min: 0,
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
	});
	
	//]]>
{/literal}
</script>
