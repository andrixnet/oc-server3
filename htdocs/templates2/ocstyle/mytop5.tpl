{***************************************************************************
 *  You can find the license in the docs directory
 *
 *  Unicode Reminder メモ
 ***************************************************************************}
{* OCSTYLE *}

<div class="content2-pagetitle">
	<img src="resource2/{$opt.template.style}/images/misc/32x32-winner.png" style="align: left; margin-right: 10px;" width="32" height="32" />
	{t}My recommendations{/t}
</div>
  
{if $deleted==true}		  
	<div class="content-txtbox-noshade">
		<p style="line-height: 1.6em;"><span style="color: red">{t 1=$deletedItem.wp 2=$deletedItem.cachename|escape}Your recommendation for "<a href="viewcache.php?wp=%1">%2</a>" has been removed!{/t}</span></p>
		<div class="buffer" style="width: 500px;">&nbsp;</div>
	</div> 
{/if}

<table class="null" border="0" cellspacing="0" width="98%">
	<tr>
		<td colspan="2">
			<table class="table">
				<tr class="searchresult">
					<th width="50px">{t}Type{/t}</td>
					<th width="50px">{t}State{/t}</td>
					<th width="500px" colspan="2">{t}Name{/t}</td>
				</tr>
				{foreach from=$ratings item=ratingItem}
					{cycle assign=listcolor values="listcolor1,listcolor2"}
					<tr>
						<td class="{$listcolor}">{include file="res_cacheicon_22.tpl" cachetype=$ratingItem.type|escape}</th>
						<td class="{$listcolor}">{include file="res_cachestatus.tpl" status=$ratingItem.status}</th>
						<td class="{$listcolor}"><span style="{include file="res_cachestatus_span.tpl" status=$ratingItem.status}"><a href="viewcache.php?wp={$ratingItem.wp}">{$ratingItem.cachename|escape}</a></span></th>
						<td class="{$listcolor}">[<a href="javascript:if(confirm('{t escape=js}Do you really want to remove this recommendation?{/t}'))location.href='mytop5.php?action=delete&amp;cacheid={$ratingItem.cacheid}'">{t}Remove recommendation{/t}</a>]</th>
					</tr>
				{foreachelse}
					<tr><td colspan="3"><br />{t}You haven't recommended a Geocache.{/t}</td></tr>
				{/foreach}
			</table>
		</td>
	</tr>
</table>
