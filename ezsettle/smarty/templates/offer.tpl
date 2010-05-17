{include file="header.tpl"}

<div class="main_body">
	<div class="loud headline append-bottom">{ $offer_title}</div>
	<div class="span-24 last">
	{include file="chat_notice.tpl"}

		<div class="prepend-3 span-18 last">
		<div class="error hide" id="errors">Please fill in the following fields:</div>
		<form id="offer" name="ofer" method="post" action="actions/postoffer.php">
			<input type="hidden" name="offer_num" value="{$offer_num}" />
			<table>
				<tr>
					<th class="headline">Issues:</th>
					<th class="headline"><div style="float: right;">Your Offer:</div></th>
				</tr>
				{section name=issuesIndex loop=$issues}
					{ if $smarty.section.issuesIndex.index%2 == 0}
						<tr class="even" id="row{$smarty.section.issuesIndex.index}">
					{else}
						<tr id="row{$smarty.section.issuesIndex.index}">
					{/if}
					<td width="300"><div id="issueslabel{$smarty.section.issuesIndex.index}">{ $issues[issuesIndex] }</div></td>
					<td width="400"><div style="float: right;">
					{if $smarty.section.issuesIndex.index == 0}
						<input type="radio" name="issues0" value="Yes">Yes <input type="radio" name="issues0" value="No">No
					{elseif $smarty.section.issuesIndex.index == 5}
						<input type="radio" name="issues5" value="buyer">Buyer <input type="radio" name="issues5" value="seller">Seller
					{else}
						$<input type="text" size="10" maxlength="10" id="issues{$smarty.section.issuesIndex.index}" name="issues{$smarty.section.issuesIndex.index}" value="" />
					{/if}
					</div>
					</td>
					</tr>
				{/section}
				<tr><td colspan="2"><hr/></td></tr>
				<tr><td colspan="2" class="loud headline">Comments:</td></tr>
					<tr><td>Comments {$mediator} should pass to Casey345:</td><td><div style="float: right;"><textarea rows="3" cols="40" name="casey" value="" ></textarea></div></td></tr>
					<tr><td>Comments for {$mediator}:<br/>
					<span class="quiet">(These will not be shown to Casey345)</span></td>
					<td><div style="float: right;"><textarea rows="3" cols="40" name="mediator" value="" ></textarea></div></td></tr>
					<tr><td colspan="2"><div style="float: right;"><input type="submit" class="super large awesome red button" name="submit" value="Make offer" /></div></td></tr>
			</table>
		</form>
		</div>

	</div>
	{include file="chat.tpl"}
	<div class="loading" id="loading">
		<div class="loud headline"><img class="loader" id="loader" src="images/loader_big.gif" />Thanks for waiting...</div>
		Please wait while {$mediator} communicates your offer to Casey345.<br/>
		{$mediator_caps} will come back to you with Casey345's response and/or counteroffer.
		<br/><div style="clear:both; height: 1px;"></div>
		{if $condition == 1 || $condition == 2 || $condition == 5}
		<img id="diagram" src="images/diagram-computer.jpg"/>
		{else}
		<img id="diagram" src="images/diagram-human.jpg"/>
		{/if}
		<div style="clear:both; height: 1px;"></div>
	</div><!-- end loading -->
</div><!-- end main body -->

<script type="text/javascript">
{literal}
	//<![CDATA[
	 $(document).ready(function() {
		$("input[name='issues0']").change(function() {
			var returnItem = $("input[name='issues0']:checked").val();
			if(returnItem == "No") {
				$("input[name='issues5']").attr("disabled", "yes");
				$("#issueslabel5").addClass("quiet");
			}
			else {
				$("input[name='issues5']").removeAttr("disabled");
				$("#issueslabel5").removeClass("quiet");
			}
		});
		$("#offer").ajaxForm({
			beforeSubmit:checkOffer,
			success:afterOffer,
			dataType: 'json'
		});
	});
	
	function showLoading() {
		$("#dark").fadeIn();
		var left = $(window).width()/2  - $("#loading").width()/2;
		var top = $(window).height()/2 + $(window).scrollTop() - $("#loading").height()/2;
		$("#loading").css("left", left+"px");
		$("#loading").css("top", top+"px");
		$("#loading").fadeIn();
	}
	
	function checkOffer(formData, jqForm, options) {
		var errors = "";
		$("#errors").hide();

		if(!($("input[name='issues0']:checked").val())) {
			$("#row0").addClass('rowerror');
			errors+="error";
		}
		else {
			$("#row0").removeClass('rowerror');
		}
		for(var i=1; i<5; i++) {
			if(!$("#issues" + i).val()) {
				$("#row"+i).addClass('rowerror');
				errors += "issues" + i + " ";
			}
			else {
				$("#row"+i).removeClass('rowerror');
			}
		}
		if (errors != "") {
			$("#errors").show();
			return false;
		}
		showLoading();
	}

	
	function hideLoading() {
		$("#dark").fadeOut();
		$("#loading").fadeOut();
	}
	
	function afterOffer(data) {
		setTimeout(function() {
			hideLoading();
			window.location = 'offer.php';
		}, 8000);
	}
	//]]>
{/literal}
</script>
{include file="footer.tpl"}