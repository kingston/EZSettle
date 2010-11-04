<div id="message_history" class="hide" style="overflow: scroll;">
<div class="headline loud">
	<span style="float: left;">Message History</span>
	<span id="hide_message_history">Close<span>
</div>
<div class="clearfix"></div>
	<div id="chatbox" style="overflow: scroll;">

	{foreach from=$chatOld item=message name=chat}
		<div class="chat quiet">
			<div class="span-2"><img class="profile_picture" src="{$avatar}"></div>
			<div class="span-20 last"><span class="speaker">{ $message.speaker }:</span> 
				{ $message.message }
			</div>
			<div class="clearfix" style="margin-bottom: 5px;"></div>
		</div><!-- end chat -->
	{/foreach}

	{foreach from=$chatNew item=message name=chat}
		<div class="chat {if( isset($message.style)&&($message.style=="second_party"))}{$message.style}{else}notice{/if}" id="{$smarty.foreach.chat.index}">
			<div class="span-2"><img class="profile_picture" src="{$avatar}"></div>
			<div class="span-20 last"><span class="speaker">{ $message.speaker }:</span> 
				{ $message.message }
			</div>
			<div class="clearfix" style="margin-bottom: 5px;"></div>
		</div><!-- end chat -->
	{/foreach}

	</div><!-- end box -->
</div>