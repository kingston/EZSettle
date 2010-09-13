{include file="header.tpl"}

<div class="main_body">
	<div class="large loud headline">The EZSettle Process has 6 simple phases</div>
	<div id="process_description">
		<div id="process_inner">
	<ol class="faq">
	<li><div class="loud q2" id="1">Prepare for Mediation</div>
	<div class="quiet box" id="a1">
		<ul>
			<li>Both parties review the EZSettle procedure and accept guidelines for conduct.</li>
			<li>Both parties commit to using the EZSettle mediation-arbitration process, and to be bound by its results.</li>
			<li>An EZSettle agent sets up the case online and gives access codes to each party.</li>
		    <li>Before beginning the process, it is useful for the parties to:</li>
			<ul>
			<li>Familiarize themselves with the details of their dispute</li>
			<li>Think about what they want to achieve in the dispute resolution process</li>
			</ul>
		</ul>
		</div>
	</li>
	
	<li><div class="loud q" id="2">Qualify Interests</div>
		<div class="quiet box" id="a2">
			<ul>
				<li>{if $condition == 1 || $condition == 2 || $condition == $5}Parties are presented{else}Our Mediator presents the parties{/if} 
					with an initial list of the interests and issues that need to resolved. The list is based on the case referral letter from the e-commerce platform (Amazon.com; EBay; PC4U.com)</li>
				<li>Parties are asked to review and confirm the list of issues that should be addressed in the process.</li>
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
			<liParties go through a maximum of 3 rounds of offers and counter offers in the mediation stage.</li>
			<li>{if $condition == 1 || $condition == 2 || $condition == 5}The EZSettle professional mediation software{else}EZSettle trained professional mediator{/if} 
				works independently with each party to elicit their preferences and advance settlement. These preferences remain confidential at all times, unless the parties tell the {if $condition == 1 || $condition == 2 || $condition == 5}system{else}mediator{/if} to share them with the other party.</li>
			<li>Parties may exchange messages with each other by using the EZSettle {if $condition == 1 || $condition == 2 || $condition == 5}system{else}mediator{/if} as an intermediary, and typing the message in the designated text box on the page.</li>
			<li>The EZSettle {if $condition == 1 || $condition == 2 || $condition == 5}mediation software{else}mediation professional{/if} will make individual confidential suggestions to the parties to help them reach an agreement and maximize the benefits to both parties.</li>
		</ul>
	</div></li>
	
	<li><div class="loud q" id="5">Arbitration</div>
	<div class="quiet box" id="a5">
		<ul>
			<li>If no agreement is reached within 3 rounds of mediation, the EZSettle process will enter the arbitration stage.</li>
			<li>EZSettle {if $condition == 1 || $condition == 3}professional arbitration software, based on the AnaLegal computational engine will{elseif $condition == 2 || $condition == 4} trained professional arbitrator will{else}will ask the parties to choose between the services of the EZSettle professional arbitration software (based on the AnaLegal computational engine) or an EZSettle trained professional mediator to{/if} review all the information that was exchanged or received in the mediation stage, {if $condition == 1 || $condition == 3}to generate{elseif $condition == 2 || $condition == 4}to decide on{else}and provide{/if} a fair and just settlement, that establishes equity and maximizes benefits for the parties.</li>
		</ul>
	</div></li>
	
	<li><div class="loud q" id="6">Secure commitment</div>
	<div class="quiet box" id="a6">
		<ul>
			<li>Once a Settlement is reached, whether in mediation or arbitration, parties receive immediate notice of the terms of the settlement.</li>
			<li>EZSettle agents will compile a formal binding legal document with the terms of the agreement. This document is dispatched to both parties to sign, by either email or postal mail.</li>
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
		
	});
//]]>
{/literal}
</script>