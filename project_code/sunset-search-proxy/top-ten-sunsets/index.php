<?php

	$json = file_get_contents('infinite-sunset.json');
	$obj=json_decode($json, true);	
	
	for ($index = 0; $index < count($obj['items']); $index++) {
		echo $obj['items'][$index]['link'] . PHP_EOL;
	}
?>