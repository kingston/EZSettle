	<div class="box" id="chatbox" style="height: 200px; overflow: scroll;">
	
	{foreach from=$chatOld item=message name=chat}
		<div class="chat quiet">
			<div class="span-2"><img class="profile_picture" src="images/avatar.jpg"></div>
			<div class="span-20 last"><span class="speaker">{ $message.speaker }:</span> 
				{ $message.message }
			</div>
			<div class="clearfix" style="margin-bottom: 5px;"></div>
		</div><!-- end chat -->
	{/foreach}

	{foreach from=$chatNew item=message name=chat}
		<div class="chat" id="{$smarty.foreach.chat.index}" style="display:none;">
			<div class="span-2"><img class="profile_picture" src="images/avatar.jpg"></div>
			<div class="span-20 last"><span class="speaker">{ $message.speaker }:</span> 
				{ $message.message }
			</div>
			<div class="clearfix" style="margin-bottom: 5px;"></div>
		</div><!-- end chat -->
	{/foreach}



	</div><!-- end box -->