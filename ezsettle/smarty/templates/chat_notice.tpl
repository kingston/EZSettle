{foreach from=$chatNew item=message name=chat}
	<div class="chatnotice {if isset($message.style)}{$message.style}{else}notice{/if}" id="notice{$smarty.foreach.chat.index}" alt="{$smarty.foreach.chat.index}" style="display: none;">
		{if isset($message.style) && $message.style=='second_party'}
		<div class="prepend-2 span-19"><span class="speaker">{ $message.speaker }:</span> 
			{ $message.message }
		</div>
		{else}
		<div class="span-2"><img class="profile_picture" src="{$avatar}"></div>
		<div class="span-19"><span class="speaker">{ $message.speaker }:</span> 
			{ $message.message }
		</div>
		{/if}
		<div class="prepend-1 span-1 last" style="cursor: pointer;" onclick="closeNotice('notice{$smarty.foreach.chat.index}');"><img src="images/close.gif"></div>
		<div class="clearfix" style="margin-bottom: 5px;"></div>
	</div><!-- end chat -->
{/foreach}
<div id="typing">{$typing}</div>
<div style="float: right;" class="super medium awesome red button" id="view_message_history">View Mediator Message History</div>

<div class="clearfix"></div>
<hr class="space"/>
<script type="text/javascript">
{literal}
	//<![CDATA[
		$(document).ready(function() {
			$("#view_message_history").click(function() {
				showMessageHistory();
			});	
			$("#hide_message_history").click(function() {
				hideMessageHistory();
			});
		});
	//]]>
{/literal}
</script>