<html>
<head>
</head>
<body>
<?php
$x = 5;
$y = 10;
function foo() {
  echo "x is $x<br>";  // $x is not visible
  $GLOBALS['y'] = $GLOBALS['x'] + $y;
  echo "in foo, y is $y<br>";
  global $y;   
}
foo();
echo "in global, y is $y<br>";
?>
</body>
</html>
