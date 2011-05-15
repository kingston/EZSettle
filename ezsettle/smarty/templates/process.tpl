{include file="header.tpl"}

<div class="main_body">
	<div class="large loud headline">The EZSettle Process has 3 simple stages</div>
	<div id="process_description">
		<div id="process_inner">
	<ol class="faq">
	<li><div class="loud q2" id="1">PREPARATION</div>
	<div class="quiet box" id="a1">
		<ul>
			<li>Parties familiarize themselves with the dispute details and set their goals for the process.</li>
			<li>EZSettle sets up the case online with the list of issues that need to be resolved based on
				the case referral letter from the e-commerce website (Amzon.com; E-bay; PC4U.com).</li>
		 </ul>
		</div>
	</li>
	
	<li><div class="loud q" id="2">MEDIATION</div>
		<div class="quiet box" id="a2">
			<ul>
				<li>The mediation process is run by {if $condition == 1 || $condition == 2 || $condition == $5}the EZSettle mediation software, which
					{else}an EZSettle staff mediator, who{/if} works independently and confidentially with each party
					to advance a settlement and maximize benefits.
				</li>
				<li>Parties first review and confirm the list of disputed issues, and indicate confidentially the
				importance of each issue to them.</li>
				<li>Parties then exchange up to three offers and counter-offers trying to resolve the dispute in mutual agreement.</li>
				<li>{if $condition == 1 || $condition == 2 || $condition == $5}The mediation software{else}The staff mediator{/if} never shares information or
				preferences communicated to {if $condition == 1 || $condition == 2 || $condition == $5}it{else}him/her{/if} by one party with another party.</li>
				<li>The {if $condition == 1 || $condition == 2 || $condition == $5}mediation software{else}staff mediator{/if} will communicate messages to the
				other party if they are typed in the designated text box.</li>
				<li>If no agreement is reached within three rounds of offers and counter-offers, the case is
				directed to the EZSettle arbitration process.</li>
			</ul>
		</div></li>
	
	<li><div class="loud q" id="3">ARBITRATION</div>
		<div class="quiet box" id="a3">
			<ul>  
				<li>The arbitration process is conducted by {if $condition == 1 || $condition == 3}the sophisticated EZSettle AnaLegal™ arbitration
				software{elseif $condition == 2 || $condition == 4}an experienced EZSettle staff arbitrator{else}an arbitrator that the parties
				will choose: either the sophisticated EZSettle AnaLegal™ arbitration software or an
				experienced EZSettle staff arbitrator{/if}.</li>
				<li>The {if $condition == 1 || $condition == 3}AnaLegal™ arbitration software reviews{elseif $condition == 2 || $condition == 4}staff arbitrator reviews{else}chosen
				arbitrator reviews{/if} all the information that was received in the mediation stage, including preferences, offers and messages.</li>
				<li>The {if $condition == 1 || $condition == 3}software{elseif $condition == 2 || $condition == 4}staff arbitrator{else}chosen arbitrator{/if} 
				{if $condition == 1 || $condition == 3}generates{else}provides the parties with{/if} a binding fair settlement that represents an equitable
				solution and maximizes benefits for the parties.</li>
				<li>The arbitration settlement is the final stage of the process. The parties are bound by its result.</li>
		</div></li>
	
	
	
</ol>	
</div><!-- end process inner -->
<div class="clearfix" style="margin-bottom: 10px;"></div>
</div><!-- end process description -->
<div class="clearfix" style="margin-bottom: 10px;"></div>
	<span class="span-19">
		<span id="start_error" class="span-18 error">You must read the process description before starting!</span>&nbsp;
	</span>
	<span class="span-4 last"><button id="start" class="large awesome super disabled button startbutton">Get Started »</button></span>
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
					window.location = "mediator_arbitrator_intro.php";
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
     		{page_name:'process',
     		time_spent:(time_end-time_start)},
     		function(data){
     			//alert("done");
     		},
     		'json'
     		);
	}
//]]>
{/literal}
</script>
