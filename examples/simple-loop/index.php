<?php

include "div.php";

echo new div("index.tpl", array(
    "persons" => array(
        array(
            "name" => "Peter",
            "age" => 40
        ),
        array(
            "name" => "Jacque",
            "age" => 90
        )
    )
));