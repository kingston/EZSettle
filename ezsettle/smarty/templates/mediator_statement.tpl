{include file="header.tpl"}

<div class="main_body">
	<div class="prepend-1 large loud headline">Mediator Introduction</div>
	<hr class="space"/>
	<p>Dear Jessie128 and Casey345,</p>
	<p>
		Thank you for joining the EZSettle process. {if $condition == 1 || $condition == 2 || $condition == 5}The EZSettle software is{else}I will be your
		mediator, and I'm{/if} here to help you solve this case. {if $condition == 1 || $condition == 2 || $condition == 5}Here is a quick explanation on{else}
		Let me first quickly explain{/if} how our process works. We begin with trying to reach
		agreement in mediation. After agreeing on the list of issues that need to be resolved and
		individually ranking their importance to you, each one of you will be able to make up to 3
		settlement offers, which the other party can accept or reject. By custom, the complainant makes
		the first offer. Throughout the process, {if $condition == 1 || $condition == 2 || $condition == 5}the system{else}I{/if} will communicate with you
		separately. Any information you share with {if $condition == 1 || $condition == 2 || $condition == 5}the system{else}me{/if} remains completely
		confidential. If you would like {if $condition == 1 || $condition == 2 || $condition == 5}the system{else}me{/if}to share particular information with
		the other party, you may do so by using the chat box titled “share message with the other party”.
		Please respect each other and avoid using foul language.
	</p>

	<p>
		As you will be making offers, {if $condition == 1 || $condition == 2 || $condition == 5}the system{else}I{/if} will make suggestions to help you
		reach agreement. If after 3 offers and counter offers you will not reach agreement, you will be
		transferred to the EZSettle arbitration process. {if $condition == 1 || $condition == 3}The EZSettle professional AnaLegal arbitration
		software will generate a binding settlement for you{elseif $condition==2 || $condition==4}An EZSettle professional staff arbitrator
		will provide you with a binding settlement{else}You will be asked to choose receiving a binding
		settlement from either the EZSettle professional AnaLegal arbitration software or one of our
		professional staff arbitrators{/if}. The arbitration settlement will be based on information received
		during the mediation.
	</p>

	<p>
		Some people reach mutual agreement in mediation; others prefer to decline the last offer and
		proceed to arbitration. The decision depends on the assessment of the ability to receive a better
		arbitration settlement compared to the last mediation offer by the other party.
	</p>
	
	<p>
		Click &quot;Next&quot; to continue to the mediation process.
	</p>
	<div class="prepend-20 span-4 last">
		<div style="float: right;">
		<a href="issues.php" class="large super awesome red button">Next »</a>
		</div>
		</div>

</div><!-- end main body -->

{include file="footer.tpl"}