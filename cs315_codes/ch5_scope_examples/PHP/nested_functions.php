<!--
   The scope of a variable is the context within which it is defined. 
   For the most part all PHP variables only have a single scope.
   It is possible access the global variables 
-->
<?php
  $g = 3;     // a global variable, defined outside of all functions

  function foo() {

     $x = 7;
     function bar() {  // nested functions can be defined, but

        echo "x=$x <br>"; // the nonlocal variables are not accessible.

        global $g;
        echo "g=$g <br>"; // the global variables are accessible.
     }
     bar();
  } // foo

foo();
?>
