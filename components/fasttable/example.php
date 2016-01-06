<?php

include "../../div.php";

echo new div('example.tpl', array(
	"customers" => array(
		array("id" => 1001, "name" => "Roxana Maxwell", "credit" => 100, "email" => "john@gmail.com"),
		array("id" => 1002, "name" => "Peter Joseph", "credit" => 200, "email" => "peter@gmail.com"),
		array("id" => 1010, "name" => "Jacque Fresco", "credit" => 30, "email" => "jacque@gmail.com")
	)
));