<?php
function testFunction($a, $b = 1, $c = 2, $d = 4) {
    return "a=$a, b=$b, c=$c, d=$d";
}
echo testFunction(10); 
echo "\n";
echo testFunction(10, 20); 
echo "\n";
echo testFunction(); 
echo "\n";
?>