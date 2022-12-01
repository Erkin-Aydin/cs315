<?php

$assoc_array = array("key1" => "val1", "key2" => "val2", "key3" => 3);
echo  "1)Initialize\n";
printAssocArray($assoc_array);
echo "######################################\n\n";

echo "2)Get the value for a given key\n";
echo $assoc_array["key1"] . "\n";
echo $assoc_array["key2"] . "\n";
echo $assoc_array["key3"] . "\n";


echo "\n";

echo "######################################\n\n";
echo "3)Add a new element\n";
$assoc_array["key4"] = "val4";
printAssocArray($assoc_array);
echo "\n";

echo "######################################\n\n";
echo "4)Remove an element\n";
unset($assoc_array['key1']);
printAssocArray($assoc_array);
echo "\n";


echo "######################################\n\n";
echo "5)Modify the value of an existing element\n";
$assoc_array['key2'] = "VAL2";
printAssocArray($assoc_array);
echo "\n";


echo "######################################\n\n";
echo "6)Search for the existence of a key\n";
echo "Looking for \"key1\": " . array_key_exists("key1", $assoc_array) . "\n";
echo "Looking for \"key2\": " . array_key_exists("key2", $assoc_array) . "\n";
echo "Looking for \"key3\": " . array_key_exists("key3", $assoc_array) . "\n";
echo "Looking for \"key4\": " . array_key_exists("key4", $assoc_array) . "\n";
echo "Looking for \"key5\": " . array_key_exists("key5", $assoc_array) . "\n";


echo "\n";


echo "######################################\n\n";
echo "7)Search for the existence of a value\n";
$found;

$val = "val1";
$found = in_array($val, $assoc_array);
echo "Looking for \"val1\":" . $found . "\n";


$val = "val2";
$found = in_array($val, $assoc_array);
echo "Looking for \"val2\":" . $found . "\n";

$val = "VAL2";
$found = in_array($val, $assoc_array);
echo "Looking for \"VAL2\":" . $found . "\n";

$val = 3;
$found = in_array($val, $assoc_array);
echo "Looking for \"3\":" . $found . "\n";

echo "\n";

echo "######################################\n\n";

echo "8)Loop\n";

printAssocArray($assoc_array);

function printAssocArray($assoc_array) {
	foreach($assoc_array as $key => $val) {
		foo($key, $val);
	}
}
function foo($key, $val){
	echo "Key: $key, Val: $val \n";
}
?>
