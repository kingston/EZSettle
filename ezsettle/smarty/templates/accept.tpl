{include file="header.tpl"}

<div class="main_body">
	<div class="large loud headline">Resolution</div>
	<hr class="space"/>
	Congratulations! You and Casey345 have reached an agreement about the terms of your settlement.
	<hr class="space"/>
	According to your agreement:
	
	
	<div class="prepend-20 span-4 last"><a href="javascript:window.close()" id="close_window" href="javascript:void(0)" class="super medium awesome red button">Print Agreement</a></div>

</div><!-- end main body -->

{include file="footer.tpl"}

<script type="text/javascript">
{literal}
	//<![CDATA[
	 $(document).ready(function() {
		$("#close_window").click(function() {
			$(window).close();
		});
	});
	//]]>
{/literal}
</script>