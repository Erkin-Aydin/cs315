<html>
<head>
</head>
<body>
<?php
echo "Global variables in PHP<br>";

$day ="Monday";
$month = "October";

function calendar() {
   $day = "Tuesday";
   print "local day is $day <br>";

   $gday = $GLOBALS['day'];
   print "local gday is $gday <br>";

   $GLOBALS['day'] = "Wednesday";
   print "gday is $gday.<br>";
  
   $month = "April";
   print "local month is $month<br>";

   global $month;    // affects the rest of block
   $month = "March"; 
   print "global month is $month<br>";

   global $year;
   $year=2020;
}

calendar();

?>

<?php
  echo "In the other block, day is $day<br>";
  echo "In the other block, month is $month<br>";
  echo "In the other block, year is $year<br>";
?>
</body>
</html>
