<table border="0" cellpadding="0" cellspacing="0" id="header">
  <tr>
    <td id="logo">
      ?$logo<a href="{$base_path}"><img src="{$logo}"/></a>$logo?
      ?$site_name<h1 class='site-name'><a href="{base_path}">{$site_name}</a></h1>$site_name?
      ?$site_slogan<div class='site-slogan'>{$site_slogan}</div>$site_slogan?
    </td>
    <td id="search_box">
    	?$search_box
      	{$search_box}
      	$search_box?
    </td>
  </tr>
  <tr>
    <td colspan="2"><div>?$header {$header} $header?</div></td>
  </tr>
</table>

<table border="0" cellpadding="0" cellspacing="0" id="content">
  <tr>
    ?$page.sidebar_first
    <td valign="top" id="sidebar-left">
      {r}page.sidebar_first{/r}
    </td>
    $page.sidebar_first?
    <td valign="top">
      ?$mission <div id="mission">{$mission}</div>$mission?
      <div id="main">
        ?$breadcrumb {$breadcrumb} $breadcrumb?
        
        <h1 class="title">{r}title{/r}</h1>
        <div class="tabs">{r}tabs{/r}</div>
        {r}page.help{/r}
        {r}messages{/r}
        {r}page.content{/r}
        
      </div>
    </td>
    ?$page.sidebar_right
     <td id="sidebar-right">
      {r}page.sidebar_right{/r}
    </td>
    $page.sidebar_right?
  </tr>
</table>

<div id="footer">
{r}page.footer{/r} {r}feed_icons{/r}
</div>

