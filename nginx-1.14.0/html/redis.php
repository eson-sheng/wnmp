<?php 
$redis = new Redis();
$redis->connect('127.0.0.1', 6379);

$a = $redis->set("name", "eson",60);

echo $redis->ping();

echo "<pre>";
var_dump($redis->get("name"));
var_dump($a);
echo "</pre>";