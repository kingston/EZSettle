
		</div><!-- end container -->
		<div class="footer">&copy; EZSettle 2000-2010</div>
		<script type="text/javascript">
		{literal}
			//<![CDATA[
		$(".chat").each(function(index) {
			var time = $(this).attr("id") * 5000;
			var elem = $(this);
			setTimeout(function() { $(elem).fadeIn(); $("#chatbox").scrollTo($(elem));}, time);
		});
		
		$(".chat").live(function() {
			$(elem).bind('fadeIn', function() {
				$(elem).addClass("highlighted")
			})
		});
		//]]>
		{/literal}
		</script>
 	</body>
</html>

