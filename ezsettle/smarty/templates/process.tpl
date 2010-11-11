{include file="header.tpl"}

<div class="main_body">
	<div class="large loud headline">The EZSettle Process has 6 simple phases</div>
	<div id="process_description">
		<div id="process_inner">
	<ol class="faq">
	<li><div class="loud q2" id="1">Prepare for Mediation</div>
	<div class="quiet box" id="a1">
		<ul>
			<li>Parties review the EZSettle mediation-arbitration process and agree to be bound by its results.</li>
			<li>Parties familiarize themselves with the dispute details and set their goals for the process.</li>
			<li>An EZSettle agent sets up the case online and gives access codes to each party.</li>
		 </ul>
		</div>
	</li>
	
	<li><div class="loud q" id="2">Qualify Interests</div>
		<div class="quiet box" id="a2">
			<ul>
				<li>{if $condition == 1 || $condition == 2 || $condition == $5}Parties are presented{else}Our Mediator presents the parties{/if} 
					with an initial list of issues that need to resolved, based on the case referral letter from the e-commerce
					platform (Amzon.com; E-bay; PC4U.com) and amend or confirm it.
				</li>
			</ul>
		</div></li>
	
	<li><div class="loud q" id="3">Quantify Preferences</div>
		<div class="quiet box" id="a3">
			<ul>  
				<li>Parties indicate the relative importance of each particular issue on the list, using a numerical scale (1-100).</li>
				<li>These preference values are confidential and will never be revealed to the other party.</li>
		</div></li>
	
	<li><div class="loud q" id="4">Mediation</div>
	<div class="quiet box" id="a4">
		<ul> 
			<li>Parties go through up to 3 rounds of offers and counter-offers in the mediation stage.</li>
			<li>The EZSettle {if $condition == 1 || $condition == 2 || $condition == 5}mediation software{else}staff mediator{/if} 
				works independently and confidentially with each party to advance a settlement and maximize benefits.</li>
			<li>{if $condition == 1 || $condition == 2 || $condition == 5}The system{else}The staff mediator{/if} never shares information communicated by
				one party with another party. However, parties may communicate with each other through
				the EZSettle {if $condition == 1 || $condition == 2 || $condition == 5}system{else}mediator{/if} by typing messages in the designated text box.</li>
			<li>If no agreement is reached within 3 rounds of mediation, the case is directed to the EZSettle final arbitration process.</li>
		</ul>
	</div></li>
	
	<li><div class="loud q" id="5">Arbitration</div>
	<div class="quiet box" id="a5">
		<ul>
			<li>{if $condition == 1 || $condition == 3}The EZSettle AnaLegal™ professional arbitration software reviews{elseif $condition == 2 || $condition == 4}An EZSettle
				professional staff arbitrator reviews{else}EZSettle asks the parties to choose using either
				the EZSettle AnaLegal™ professional arbitration software or an EZSettle professional
				staff arbitrator to review{/if} all the information that was received in the mediation stage,
				{if $condition == 1 || $condition == 3}and generates{elseif $condition == 2 || $condition == 4}and decides on{else}to provide{/if} a binding fair settlement that
				establishes equity and maximizes benefits for the parties.</li>
		</ul>
	</div></li>
	
	<li><div class="loud q" id="6">Secure commitment</div>
	<div class="quiet box" id="a6">
		<ul>
			<li>EZSettle agents compile a formal binding legal document with the terms of the agreement,
				to be dispatched to both parties by email.</li>
		</ul>
	</div></li>
	
</ol>	
</div><!-- end process inner -->
<div class="clearfix" style="margin-bottom: 10px;"></div>
</div><!-- end process description -->
<div class="clearfix" style="margin-bottom: 10px;"></div>
	<span id="start_error" class="span-18 error">You must read the process description before starting!</span><button id="start" class="large awesome super disabled button startbutton">Get Started »</button>
<div class="clearfix" style="margin-bottom: 10px;"></div>
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
		expID = $("#expID").attr("exp_id");
		if((expID == null)||(expID=="")){
			alert("Hey it's null");
		}
		data = "page='process'&time_spent="+(time_end-time_start);
		$.ajax({
  			type: "POST",
   			url: "save_time_on_page.php",
   			data: faq,
   			success: function(msg){
     			//alert(msg);
			//window.location = link;

   			},
   			error: function(xhr, textStatus, errorThrown){
   				alert("fail: " + xhr+" "+textStatus + " " + errorThrown);
   			}
 		});
	}
//]]>
{/literal}
</script>