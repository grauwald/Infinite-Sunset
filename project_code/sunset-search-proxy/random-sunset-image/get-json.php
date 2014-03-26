<?php
	$url = "https://www.googleapis.com/customsearch/v1?q=sunset&dateRestrict=d%5B1%5D&fileType=png&filter=1&imgColorType=color&imgType=photo&searchType=image&key={{api-key}}&cx={{custom-search-ID}}";

	$ch = curl_init();
	curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	curl_setopt($ch, CURLOPT_URL, $url); 
	$json=curl_exec($ch);
	curl_close($ch);
	
	file_put_contents('infinite-sunset.json', $json);
?>