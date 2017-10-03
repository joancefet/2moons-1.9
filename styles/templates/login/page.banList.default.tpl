{block name="title" prepend}{$LNG.siteTitleBanList}{/block}
{block name="content"}
	<div class="container" style="margin-top: 80px;">
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">{$LNG.bn_players_banned_list}</div>
                    {if $isMultiUniverse}<p>{html_options options=$universeSelect selected=$UNI class="changeUni" id="universe" name="universe"}</p>{/if}
					<table class="table table-hover">
						<thead>
						<tr>
							<th>{$LNG.bn_from}</th>
							<th>{$LNG.bn_until}</th>
							<th>{$LNG.bn_player}</th>
							<th>{$LNG.bn_by}</th>
							<th>{$LNG.bn_reason}</th>
						</tr>
						</thead>
						<tbody>
                        {if $banCount}
                            {foreach $banList as $banRow}
								<tr>
									<td>{$banRow.from}</td>
									<td>{$banRow.to}</td>
									<td>{$banRow.player}</td>
									<td><a href="mailto:{$banRow.mail}" title="{$banRow.info}">{$banRow.admin}</a></td>
									<td>{$banRow.theme}</td>
								</tr>
                            {/foreach}
							<tr>
								<td colspan="5">{$LNG.bn_exists}{$banCount|number}{$LNG.bn_players_banned}</td>
							</tr>
                        {else}
							<tr>
								<td colspan="5">{$LNG.bn_no_players_banned}</td>
							</tr>
                        {/if}
						</tbody>
					</table>
					<div style="text-align: center;">
                        {if $banCount}
							<ul class="pagination pagination-sm">
                                {if $page != 1}
									<li>
										<a href="#">Prev</a>
									</li>
								{/if}
                                {for $site=1 to $maxPage}
                                    {if $site == $page}
										<li class="active">
											<a href="index.php?page=banList&amp;side={$site}">{$site}</a>
										</li>
                                    {/if}
                                {/for}
								<li>
									<a href="#">2</a>
								</li>
								<li>
									<a href="#">3</a>
								</li>
								<li>
									<a href="#">4</a>
								</li>
								<li>
									<a href="#">Next</a>
								</li>
							</ul>
							<tr>
								<td style="text-align:right;" colspan="5">
									{for $site=1 to $maxPage}<a href="index.php?page=banList&amp;side={$site}">{if $site == $page}<b>[{$site}]</b>{else}[{$site}]{/if}</a>{if $site != $maxPage}&nbsp;{/if}{/for}{if $page != $maxPage}&nbsp;<a href="index.php?page=banList&amp;side={$page + 1}">&raquo;</a>{/if}</td>
							</tr>
                        {/if}
					</div>
				</div>
			</div>
		</div>
	</div>
{/block}