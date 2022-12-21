<?php

$a = array('first', 'second', 'third', 'fourth');
print_r($a);
echo "<br>";

// Intitially, current points to the first element
echo current($a) . "<br />\n"; // "The first"

// Let's take two steps
next($a);
next($a);
echo current($a) . "<br />\n"; // "third"

// Let's reset the current pointer
reset($a);
echo current($a) . "<br />\n"; // "first"

$b = array(0.200, '2', "Ahmet");
print_r($b);
?>
