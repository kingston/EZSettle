{include file="header.tpl"}
<div class="main_body">
<div class="prepend-1 large loud headline">Introducing the Mediator and Arbitrator for Your Case</div>
<hr class="space"/>
<div class="prepend-1 span-22 append-1 last">
	<p>
	The mediation process will be conducted by {if $condition == 1 || $condition == 2 || $condition == 5}ProSet™, <i>EZSettle</i>’s mediation software{else}Avery Campbell, an <i>EZSettle</i> staff mediator{/if}.
	</p>
	<div class="prepend-1 span-20 append-2 last">
	<table>
	<tr>
		{if $condition == 1 || $condition == 2 || $condition == 5}
		<td style="vertical-align:top">
			<img src="images/ezsettle_computer.jpg" height="150px" />
		</td>
		<td style="vertical-align:top; padding-left:40px;">
			<b>ProSet™ Mediation Software</b><br />
			The ProSet mediation software is based on sophisticated computational algorithms
			that were developed at Stanford University in collaboration with attorneys specializing
			in contract law, consumer disputes, and tort law. The software has successfully
			mediated over 350 settlements for <i>EZSettle</i>, using an interest-based approach to identify
			preferences and facilitate agreement. ProSet™ has resolved buyer-seller disputes for a
			variety of online corporations including E-Bay and Amazon.
		</td>
		{else}
		<td style="vertical-align:top">
			<img src="images/mediator.jpg" height="150px">	
		</td>
		<td style="vertical-align:top">
			<b>Avery Campbell</b><br />
			Avery Campbell is a lawyer from the Bay Area specializing in contract law, consumer
			disputes, and tort law. Campbell received a law degree from Stanford University and has
			successfully mediated over 350 cases for <i>EZSettle</i>, using an interest-based approach to
			identify preferences and facilitate agreement. Campbell has resolved buyer-seller disputes
			for a variety of online corporations including E-Bay and Amazon.
		</td>
		{/if}
	</tr>
	</table>
	</div>
	<p>
	Should your case reach the arbitration stage of the dispute resolution process {if $condition == 1 || $condition == 3}the <i>EZSettle</i>
	AnaLegal™ arbitration software{elseif $condition == 2 || $condition == 4}Taylor Green, an <i>EZSettle</i> staff arbitrator,{else}
	an arbitrator of your choice: either the <i>EZSettle</i> AnaLegal™ arbitration software or
	Taylor Green, an experienced <i>EZSettle</i> staff arbitrator{/if} will provide you with a final
	binding settlement.
	</p>
	<div class="prepend-1 span-20 append-2 last">
	<table>
	<tr>
		{if $condition == 1 || $condition == 3}
		<td style="vertical-align:top">
			<img src="images/ezsettle_computer_arb.jpg" height="150px" />
		</td>
		<td style="vertical-align:top; padding-left:40px;">
			<b>AnaLegal™ Arbitration Engine</b><br />
			The AnaLegal arbitration engine is based on sophisticated computational algorithms
			that were developed at Stanford University in collaboration with attorneys specializing
			in consumer disputes, tort law, and contract law. The AnaLegal™ arbitration software
			uses the information that parties provide in order to form trade-off rules that allocate
			issues according to a strategy of appropriate compensation. The software has successfully
			provided arbitration services in over 400 <i>EZSettle</i> cases, resulting in binding enforceable
			arbitration settlements for a variety of buyer-seller disputes.
		</td>
		{elseif $condition == 2 || $condition == 4}
		<td style="vertical-align:top">
			<img src="images/arbitrator.jpg" height="150px">	
		</td>
		<td style="vertical-align:top">
			<b>Taylor Green</b><br />
			Taylor Green is a San Francisco-based lawyer specializing in contract law, consumer
			disputes, and tort law. Green earned his degree from Stanford Law School and has
			provided arbitration services in over 400 <i>EZSettle</i> cases. As an arbitrator, Green uses
			the information that parties provide in order to form trade-off rules that allocate issues
			according to a strategy of appropriate compensation. Green has successfully provided
			binding enforceable arbitration settlements for a variety of buyer-seller disputes.
		</td>
		{/if}
	</tr>
	</table>
	</div>
		
</div>

</div>
<div class="prepend-20 span-4 last">
		
		<a href="mediator_statement.php" class="large super awesome red button">Next »</a>
		
		</div>
{include file="footer.tpl"}
