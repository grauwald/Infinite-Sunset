<?php

	$json = file_get_contents('infinite-sunset.json');

	$obj=json_decode($json, true);


	$index = round(rand(0,9));
	echo $obj['items'][$index]['link'];
?>