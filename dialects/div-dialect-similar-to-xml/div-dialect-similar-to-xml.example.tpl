
 Replacements
-------------------------

 <show:name/>


 Multi-modifiers:
-------------------------

 <show:name:upper::lower:/>


 Template vars
-------------------------

 <var> *products = [
   {name: "Potato", price: 20},
   {name: "Banana", price: 10}
 ]</var>


 Data format
-------------------------

 Dates: {/div.now:Y-m-d/}
 Numbers: {#price:2.,#}


 Variable's modifiers
-------------------------

 Simple:  <show:name/>
 Capitalize first: <ucfirst:name/>
 Capitalize words: <ucwords:name/>
 Upper case: <upper:name/>
 Lower case: <lower:name/>
 Length: <length:name/>
 Words: <cwords:name/>
 Sentences: <csentences:name/>
 Paragraphs: <cparagraphs:name/>
 URL encode: <urlencode:name/>
 Raw URL encode: <rawurlencode:name/>
 JSON encode: <json:name/>
 HTML entities: <html:name/>
 New lines: <br:name/>
 Truncate/Teaser: <show:name:truncate:100/>
 Word wrap: <show:name:wrap:100/>
 Substring: <show:name:1:2/>
 Single quotes: <escape:name/>
 Javascript: <js:name/>
 Format string: <show:name:.2f/>
 
 

 Aggregate functions
-------------------------

 Count: <count:products:price/>
 Maximum: <max:products:price/>
 Minimum: <min:products:price/>
 Average: <avg:products:price/>
 Sum: <sum:products:price/>


 Capsules
-------------------------

 <capsule:entity>
 ... some code here ...
 </capsule:entity>


 Content's tags
-------------------------

 <b>Teaser break</b>: 
 <p>Lorem ipsum dolor sit amet, <!--break-->  Excepteur sint ...</p>


 Convert next HTML into text
-------------------------

 <txt> 150 <width/>
 &lt;p&gt;Hello World&lt;/p&gt;
 </txt>


 Custom subparsers
-------------------------

 <sub:myparser>
 ... some code here ...
 </sub:myparser>


 Multiple replacements
-------------------------

 <replace:replaceall>
 ... some code to replace their parts ...
 </replacereplaceall>


 Formulas
-------------------------

 <formula> 1 + 2 + 3 <format/> 2,. </formula>
 

 Simple blocks
-------------------------

 <b>Ignore</b>:
 <ignore>
 ... some ignored code here ...
 </ignore>
 <b>Comments</b>
 <!--{ 
 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod 
 tempor incididunt ut labore et dolore magna aliqua }-->
 <b>Strips</b>
 <strip>
 
 ... some ugly code here ...
 
 </strip>
 
 <b>Friendly tags</b>
 <!--| <show:name/> |-->
 
 <b>Macros</b>
 <?
 // some macro here
 $a = 5;
 ?>


 Rigid blocks
-------------------------

 Default replacement: <default> [true, 'YES'] </default>
 Includes: <include>header</include>
 Pre-processed: <preprocess>footer</preprocess>
 Locations: <location> header_left</location>


  Special replacements
-------------------------

  New line (\n): &newline;
  Car return (\r): &return;
  Horizontal tab {\t}: &tab;
  Vertical tab {\v}:  &vtab;
  Next page (\f): &nextpage;
  Dollar symbol: &dollar;


 Location's contents
-------------------------

 <locate:header_left>
    &lt;img src="logo.png"&gt;
 </locate:header_left>
 

 Loops
-------------------------

 <loop:products>
    Name: <show:name/>
 <empty/>
    No products
 </loop:products>


 Iterations
-------------------------

 <for>1:10:i:2<go/>
 <show:i/>
 </for>


 Conditional's parts
-------------------------

 TRUE parts
 <if:show>
    Show something...
 <else/>
    Show another something...
 </if:show>
 
 FALSE parts
 <ifnot:show>
    Show another something...
 <else/>
    Show something...
 </ifnot:show>


Conditions
-------------------------

 <if> <show:number/> &gt; 5 <then/>
    The number is bigger 
    than five
 <else/>
    The number is not bigger 
    than five
 </if>
