OUTER: for ($i = 1; $i <= 10; $i++) {
   INNER: for ($j = 1; $j <= 10; $j++) {
      if ($i * $j == 63) {
	  print "$i times $j is 63!\n";
	  last OUTER;    # break of C, Java
      }
      if ($j >= $i) {
	  next OUTER;    # continue in C, Java
      }
   }
}


# if ($j >= $i) { next OUTER; } can be written as
# next OUTER if ($j >= $i);
