
		</div><!-- end container -->
		<div class="footer">&copy; EZSettle 2008-2010</div>
		<script type="text/javascript">
		{literal}
			//<![CDATA[
		$(document).ready(function() {
		$('.wait.button').addClass('disabled');
		$("#typing").hide();
		setTimeout(function(){
			$("#typing").show();
		},4000);
		max_time = 0;
		accumulated_time = 0;
		$(".chatnotice").each(function(index) {
			var text = $(this).html();
			var timeOut = text.length * 9;
			accumulated_time += timeOut;
			var time = accumulated_time;//$(this).attr("alt") * timeOut;
			if(time > max_time){
				max_time = time;	
			}
			var elem = $(this);
			setTimeout(function() { $(elem).fadeIn();}, time);
		});
		
		
		
		setTimeout(function() {	
			$("#typing").hide();
			$('.wait.button').removeClass('disabled');
			},max_time);
		
		

		
		$(".condition").live('click', function() {
			var id = $(this).attr('id');

			$.post(
				'actions/postadmin.php', 
				{ condition: id }, 
				function() {
					location.reload(true);
				}, 'json'
			);
		});
		
		
	});
	function closeNotice(id) {
		$("#"+id).hide();
	}
	

	function showLoading() {
		$("#dark").fadeIn();
		var left = $(window).width()/2  - $("#loading").width()/2;
		var top = $(window).height()/2 + $(window).scrollTop() - $("#loading").height()/2;
		$("#loading").css("left", left+"px");
		$("#loading").css("top", top+"px");
		$("#loading").fadeIn();
	}
	function hideLoading() {
		$("#dark").fadeOut();
		$("#loading").fadeOut();
	}
	function showMessageHistory() {
		var left = $(window).width()/2  - $("#message_history").width()/2;
		var top = $(window).height()/2 + $(window).scrollTop() - $("#message_history").height()/2;
		$("#message_history").css("left", left+"px");
		$("#message_history").css("top", top+"px");
		$("#message_history").fadeIn();
	}
	
	function hideMessageHistory() {
		$("#message_history").fadeOut();
	}

	
	
	
	//]]>
	{/literal}
	

		</script>
 	</body>
</html>

