<div class="comment {status}">
  {$picture}
<h3 class="title">{title}</h3>
  ?$new }<span class="new">{$new}</span>$new?
    <div class="submitted">{$submitted}</div>
    <div class="content">
     {$content}
     ?$signature
      <div class="clear-block">
       <div>—</div>
       {$signature}
      </div>
     $signature?
    </div>
    ?$links<div class="links">&raquo; {$links}</div>$links?
  </div>

