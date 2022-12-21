<html>
<head>
</head>
<body>
PHP in HTML<br>
<?php
echo "Iterate a list example:<br>";

$vegetables = array("beans", "broccoli", "cabage", "eggplant", "ocra");

reset($vegetables);
echo "First: " . current($vegetables) . "<br>";

while ($current_value = next($vegetables))
  echo "Next: " . $current_value . "<br>";

?>
</body>
</html>
