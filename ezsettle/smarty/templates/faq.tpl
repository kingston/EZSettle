{include file="header.tpl"}

<div class="main_body">
	<div class="large loud headline">Frequenty Asked Questions</div>
	<ol class="faq">
	<li><div class="loud q" id="1">What is Online Dispute Resolution (ODR)? &nbsp;&nbsp;&nbsp;<span id="arrow1"><img src="images/arrowdown.png"/></span></div>
	<div class="quiet box hide" id="a1">
	Online dispute resolution (ODR) is a method of dispute resolution that uses technology to failitate the resolution of disputes between parties. ODR primarily involves mediation or arbitration, or a combination of the two (as is the case for the EZSettle system).</div>
	</li>
	
	<li><div class="loud q" id="2">How do I use the EZSettle system? &nbsp;&nbsp;&nbsp;<span id="arrow2"><img src="images/arrowdown.png"/></span></div>
		<div class="quiet box hide" id="a2">EZSettle is an entirely web based ODR system. Contact us today to begin using EZSettle for your case. Please review our 6-step process page for more details.
	</div></li>
	
	<li><div class="loud q" id="3">When can I access the system? &nbsp;&nbsp;&nbsp;<span id="arrow3"><img src="images/arrowdown.png"/></span></div>
		<div class="quiet box hide" id="a3">Anytime. The EZSettle system is always accessible.</div></li>
	
	<li><div class="loud q" id="4">From where can I access the system? &nbsp;&nbsp;&nbsp;<span id="arrow4"><img src="images/arrowdown.png"/></span></div>
	<div class="quiet box hide" id="a4">Anywhere. If you have an internet connection, you can access the EZSettle system. EZSettle is compatible with every modern (HTML5 compliant) web browser.</div></li>
	
	<li><div class="loud q" id="5">Does EZSettle require a party to reveal preference information to another party?<span id="arrow5"><img src="images/arrowdown.png"/></span></div>
	<div class="quiet box hide" id="a5">No. What and how much is revealed is completely under each party’s own control. Confidential information revealed to the mediator will be treated as such and will not be revealed to the other party.</div></li>
	
	<li><div class="loud q" id="6">What is mediation? &nbsp;&nbsp;&nbsp;<span id="arrow6"><img src="images/arrowdown.png"/></span></div>
	<div class="quiet box hide" id="a6">Mediation is a way of resolving disputes between two parties through the use of a third party facilitator (termed a mediator). The purpose of the mediator is to structure the negotiation between the two parties with the intent of reaching a mutually acceptable resolution. Mediation is not a legally binding process.</div></li>
	
	<li><div class="loud q" id="7">What is arbitration? &nbsp;&nbsp;&nbsp;<span id="arrow7"><img src="images/arrowdown.png"/></span></div>
	<div class="quiet box hide" id="a7">Arbitration is a legal technique for the resolution of disputes outside the courts, wherein two parties to a dispute refer it to a third party (termed an arbitrator) for a decision. Arbitration is a legally binding procedure, and the arbitrator’s decision must be complied with.</div></li>
	
	<li><div class="loud q" id="8">Can EZSettle generate efficient solutions? &nbsp;&nbsp;&nbsp;<span id="arrow8"><img src="images/arrowdown.png"/></span></div>
	<div class="quiet box hide" id="a8">With preference analysis, EZSettle knows exactly how both parties value the multiple issues that comprise every dispute. EZSettle takes that knowledge and uses the sophisticated optimization algorithms of the AnaLegal computational system to generate solutions that maximize satisfaction for both parties.</div></li>
	
	<li><div class="loud q" id="9">What happens if no agreement is reached? &nbsp;&nbsp;&nbsp;<span id="arrow9"><img src="images/arrowdown.png"/></span></div>
	<div class="quiet box hide" id="a9">The EZSettle system allows for three rounds of mediation, or facilitated negotiation, followed by a binding arbitration if no agreement is reached. See our process page for more information.</div></li>

	<li><div class="loud q" id="10">Can I retract an offer after I submit it? &nbsp;&nbsp;&nbsp;<span id="arrow10"><img src="images/arrowdown.png"/></span></div>
	<div class="quiet box hide" id="a10">No. Once an offer is made in the EZSettle system, it is considered a legal contract.</div></li>

	<li><div class="loud q" id="11">Are EZSettle transactions secure? &nbsp;&nbsp;&nbsp;<span id="arrow11"><img src="images/arrowdown.png"/></span></div>
	<div class="quiet box hide" id="a11">EZSettle currently employs the widely used OpenSSL protocol with the 168-bit triple-DES encryption algorithm to provide state of the art security for your online dispute resolution needs.</div></li>

	<li><div class="loud q" id="12">Do I have to accept one of the other party’s offers? &nbsp;&nbsp;&nbsp;<span id="arrow12"><img src="images/arrowdown.png"/></span></div>
	<div class="quiet box hide" id="a12">No. You are not required to accept any of the other party’s offers during the mediation stage. However, if no agreement is reached the case will proceed to binding arbitration.</div></li>

	<li><div class="loud q" id="13">Is EZSettle really a neutral party? &nbsp;&nbsp;&nbsp;<span id="arrow13"><img src="images/arrowdown.png"/></span></div>
	<div class="quiet box hide" id="a13">EZSettle is private and independent. It is not an agent or representative of any sponsor or party using the system.</div></li>

	<li><div class="loud q" id="14">What technical support is available? &nbsp;&nbsp;&nbsp;<span id="arrow14"><img src="images/arrowdown.png"/></span></div>
	<div class="quiet box hide" id="a14">Please use our <a href="contact.php">contact form</a> or call to speak with an agent for assistance.</div></li>

</ol>
</div><!-- end main body -->

{include file="footer.tpl"}

<script type="text/javascript">
{literal}
	//<![CDATA[
	$(document).ready(function() {
		$(".q").live('click', function() {
			var id = $(this).attr("id");
			$("#a"+id).fadeIn();
			$("#arrow"+id).html("<img src="images/arrowup.png"/>");
			$(this).removeClass("q").addClass("q2");
		});
		
		$(".q2").live('click', function() {
			var id = $(this).attr("id");
			$("#a"+id).fadeOut();
			$("#arrow"+id).html("<img src="images/arrowdown.png"/>");
			$(this).removeClass("q2").addClass("q");
		});
	});
//]]>
{/literal}
</script>