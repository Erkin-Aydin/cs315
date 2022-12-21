<?php

function foo($base, $exp) {
  return pow($base, $exp);
}

$result1 = foo(exp: 3, base: 4);
echo $result1."<br>";

$result2 = foo(3, exp:2);
echo $result2."<br>";
?>