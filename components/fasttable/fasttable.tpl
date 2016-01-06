<!--{
	@name FastTable 
	@type Component
	@author rafa <rafa@pragres.com>
	@version 1.0
}-->

<table ?$attr [$attr] {$_key} = "{$value}" [/$attr] $attr?>
<tr>
?$orders <th>#</th> $orders? [$data.0] !$hideColumns.{$_key} <th>?$headers.{$_key} {$headers.{$_key}} @else@ {^_key} $headers.{$_key}?</th> $hideColumns.{$_key}! [/$data.0]
</tr>
[$data]
	<tr>
		?$orders <td>{$_order}</td> $orders? 
		[$data.{$_key}]
			!$hideColumns.{$_key}
			{?( '{$_key}' != '_key' && '{$_key}' != '_order' )?}
			<td>
				?$wrappers.{$_key}
					{$wrappers.{$_key}}
				@else@
					?$wrappers.*
						{$wrappers.*}
					@else@
						{$value}
					$wrappers.*?
				$wrappers.{$_key}?
			</td>
			{/?}
			$hideColumns.{$_key}!
		[/$data.{$_key}]
	</tr>
[/$data]
</table>