{foreach from=$chatNew item=message name=chat}
	<div class="chatnotice {if isset($message.style)}{$message.style}{else}notice{/if}" id="notice{$smarty.foreach.chat.index}" alt="{$smarty.foreach.chat.index}" style="display: none;">
		<div class="span-2"><img class="profile_picture" src="{$avatar}"></div>
		<div class="span-19"><span class="speaker">{ $message.speaker }:</span> 
			{ $message.message }
		</div>
		<div class="prepend-1 span-1 last" style="cursor: pointer;" onclick="closeNotice('notice{$smarty.foreach.chat.index}');"><img src="images/close.gif"></div>
		<div class="clearfix" style="margin-bottom: 5px;"></div>
	</div><!-- end chat -->
{/foreach}