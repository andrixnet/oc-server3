{***************************************************************************
*  You can find the license in the docs directory
*
*  Unicode Reminder メモ
***************************************************************************}
{* OCSTYLE *}
<div class="content2-pagetitle">
	<img src="resource2/{$opt.template.style}/images/misc/is_oconly_small.png" style="align: left; margin-right: 10px;" />
	{t}OConly-81{/t}
</div>

<div class="content-txtbox-noshade" style="padding-right: 25px;">
	<p>
		{t}<b>OConly-81</b> is a new challenge about finding OConly caches under varying conditions, i.e. with different difficulty and terrain ratings. To participate, you can enable the OConly-81 statistics in your <a href="mydetails.php">user profile settings</a>.{/t}<br />
	</p>

	<div class="buffer" style="width: 500px;">&nbsp;</div>

	<div class="content2-container bg-blue02">
		<p class="content-title-noshade-size2">
			<img src="resource2/{$opt.template.style}/images/profile/32x22-profile.png" style="align: left; margin-right: 10px;" width="32" height="22"  /> 
			{t}Participants{/t}
		</p>
	</div>

	<p>
		{t}Users with OConly-81 statistics:{/t}
	</p>

	<ul class="col4">
		{foreach from=$users item=user}
			<li><a href="viewprofile.php?userid={$user.user_id}#oconly81">{$user.username}</a> ({$user.count})</li>
		{/foreach}
	</ul>

	<div class="buffer" style="width: 500px;">&nbsp;</div>

	<div class="content2-container bg-blue02">
		<p class="content-title-noshade-size2">
			<img src="resource2/{$opt.template.style}/images/cacheicon/22x20-traditional.png" style="align: left; margin-right: 10px;" width="22" height="20"  /> 
			{t}Statistics{/t}
		</p>
	</div>

	<p>
		{t}Overall terrain and difficulty distribution of active OConly caches:{/t}
	</p>

	<table class="table">
		<tr>
			<td>
				{include file="res_oconly81.tpl" userid=$userid}
			</td>
		</tr>
	</table>

</div>
