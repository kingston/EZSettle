{include file="header.tpl"}

<div class="main_body">
	<div class="loud headline append-bottom">Alternative Potential Causes for Damage</div>
	<div class="span-24 last">
{include file="chat_notice.tpl"}
		<div class="prepend-2 span-20 append-2 last">
		<div class="span-3"><strong>Highly Unlikely</strong></div><div id="damage_slider" class="span-11" style="width: 400px;"></div><div class="span-3"><strong>Highly Likely</strong></div>
		<div class="span-3 last"><a id="next" class="super large awesome red button">Next »</a></div>
		 </div>
		<div class="clearfix append-bottom"></div>
		<hr class="space"/>
	{include file="chat.tpl"}
</div><!-- end main body -->

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
	});
	
	$("#next").click(function() { 
		$.post("actions/postoffer.php",
		{offer_num: {/literal}{$offer_num}{literal},
		damage_likeliness: $( "#damage_slider" ).slider( "option", "value" )},
		function(data) {
			window.location = 'offer.php';
		},
		'json'
		);
	});
	//]]>
{/literal}
</script>
{include file="footer.tpl"}