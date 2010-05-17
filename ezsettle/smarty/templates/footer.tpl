
		</div><!-- end container -->
		<div class="footer">&copy; EZSettle 2000-2010</div>
		<script type="text/javascript">
		{literal}
			//<![CDATA[
		$(document).ready(function() {
		$(".chat").each(function(index) {
			var time = $(this).attr("id") * 4000;
			var elem = $(this);
			setTimeout(function() { $(elem).fadeIn(); $("#chatbox").scrollTo($(elem));}, time);
		});
		

		$(".chatnotice").each(function(index) {
			var time = $(this).attr("alt") * 3000;
			var elem = $(this);
			setTimeout(function() { $(elem).fadeIn();}, time);
		});
	});
	function closeNotice(id) {
		$("#"+id).hide();
	}
	//]]>
	{/literal}
	

		</script>
 	</body>
</html>

