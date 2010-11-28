{include file="header.tpl"}

<div class="main_body">
	<div class="prepend-1 large loud headline">Mediator Introduction</div>
	<hr class="space"/>
	<div class="prepend-1 span-22 append-1 last">
	<p>Dear Jessie128 and Casey345,</p>
	<p>
		Thank you for choosing the EZSettle process. {if $condition == 1 || $condition == 2 || $condition == 5}The EZSettle software is{else}I will be your
		mediator, and I am{/if} here to help you solve the case. {if $condition == 1 || $condition == 2 || $condition == 5}Here is a brief explanation on{else}
		Let me first briefly explain{/if} how the process works. It begins by trying to reach
		agreement in mediation. After agreeing on the list of issues that need to be resolved, each of you will 
		individually indicate the importance of each of these items to you. Each one of you will be able to make up to three
		settlement offers, which the other party can accept or reject. By custom, the complainant makes
		the first offer. Throughout the process, {if $condition == 1 || $condition == 2 || $condition == 5}the system{else}I{/if} will communicate with you
		separately. Any information you share with {if $condition == 1 || $condition == 2 || $condition == 5}the system{else}me{/if} remains completely
		confidential. If you would like {if $condition == 1 || $condition == 2 || $condition == 5}the system{else}me{/if}to share particular information with
		the other party, you may do so by using the chat box titled “share message with the other party”.
		Please respect each other and avoid using foul language.
	</p>

	<p>
		As you will be making offers, {if $condition == 1 || $condition == 2 || $condition == 5}the system{else}I{/if} will make suggestions to help you
		reach agreement. {if $condition == 1 || $condition == 2 || $condition == 5}The system's{else}My{/if} messages to you will appear in chat boxes at the
		top of the page. If after three offers and counter offers you will not reach agreement, you will be
		transferred to the EZSettle arbitration process. {if $condition == 1 || $condition == 3}The EZSettle professional AnaLegal arbitration
		software will generate a binding settlement for you{elseif $condition==2 || $condition==4}An EZSettle professional staff arbitrator
		will provide you with a binding settlement{else}You will be asked to decide whether you will receive a binding
		settlement from either the EZSettle professional AnaLegal arbitration software or an EZSettle
		professional staff arbitrators{/if}. The arbitration settlement will be based on information received
		during the mediation.
	</p>

	<p>
		Some people reach mutual agreement in mediation; others prefer to decline the last offer and
		proceed to arbitration. The decision depends, among other things, on the assessment of the potential ability to receive a better
		arbitration settlement compared to the last offer that was made in the mediation.
	</p>
	
	<p>
		Click &quot;Next&quot; to continue to the mediation process.
	</p>
	
		</div>
		<div class="prepend-20 span-4 last">
		<div style="float: right;">
		<a href="issues.php" class="large super awesome red button">Next »</a>
		</div>
		</div>

</div><!-- end main body -->

{include file="footer.tpl"}
<script type="text/javascript">
{literal}
	//<![CDATA[
	var time_start;
	var time_end;
	$(document).ready(function() {
		$("#process_description").scroll(function() { 
			var scrollEnd = parseInt($("#process_inner").css('height')) - parseInt($("#process_description").css('height'));
			if ($("#process_description").scrollTop() >= scrollEnd) {
				$("#start_error").fadeOut();
				$("#start").removeClass('disabled').addClass('red').click(function() {
					window.location = "mediator_statement.php";
				})
			}
		});
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
     		{page_name:'mediator_statement',
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