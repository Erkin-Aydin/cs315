<?php

echo "Existence of Break:\n";

//The "break" statement can be used to terminate a loop in PHP.
/*
 *This example demonstrates how "break" statement works in PHP. 0, 1, and 2 values 
 *will be printed but 3 and 4 will not as we break out of the loop when $i == 2.
 */
for($i = 0; $i < 5; $i++) {
	echo $i;
	echo "\n";
	if($i == 2) {
		break;
	}
}

echo "##########################################\n";

echo "Existence of Continue:\n";

/*The "continue" statement can be used to terminate a single iteration of a loop and proceed
 *with other iterations in PHP. This example demonstrates how "continue" statement works in PHP
 *The value 2 will not be printed as the iteration of the for loop will be terminated before
 *it reaches the print statement. Then the for loop will proceed with the rest of the iterations.
 *Hence, values 3 and 4 will be printed too.
 */
for($i = 0; $i < 5; $i++) {
	if($i == 2) {
		continue;
	}
	echo $i;
	echo "\n";
}

echo "##########################################\n";

echo "Break Outer Loops:\n";

/*
 *It is possible to use labeled exits in PHP. At least, a some sort of it can be used.
 *Instead of using labels, the scope that will be terminated is statet
 */

/*
 *This example domenstrates how the "break" statement can be used to exit outer loops.
 *The outer loop will be terminated when $i == 6, as $j > 4 for the first time when 
 *$i == 6. Thus, $i values greater than 6 won't be printed.
 */
for($i = 0; $i < 10; $i++) {
	echo $i;
	echo "\n";
	for($j = 0; $j < $i; $j++) {
		if($j > 4) {
			break 2;//indicating the scope of the loop to be terminated.
		}
	}
}

echo "##########################################\n";

/*
 *Here is another example: the outer loop will be iterated once, and that iteration
 *will be terminated, as the scope in break indicates it. Hence, only 0 will be printed.
 */
for($i = 0; $i < 10; $i++) {
	echo $i;
	echo "\n";
	for($j = 0; $j < 1000; $j++) {
		for($k = 0; $k < 1000; $k++) {
			if($i == 0) {
				break 3;
			}
		}
	}
}

echo "##########################################\n";

echo "Continue Outer Loops:\n";

/*
 *This example domenstrates how the "continue" statement can be used to exit outer loops.
 *The outer loops iteration will be terminated when $i == 2, and then the rest of the iterations
 *will proceed. Thus, value 2 will not be printed, but 0, 1, 3, and 4 will be printed.
 */

for($i = 0; $i < 5; $i++) {
	for($j = 0; $j < 5; $j++){
		if($i == 2) {
			continue 2;
		}
	}
	echo $i;
	echo "\n";
}

echo "##########################################\n";

/*
 *Here is another example: the outer loops iteration will be terminated early
 *when $i == 2, as the scope in break indicates it. Then, the rest of the iterations will proceed.
 *Thus, the value 2 will not be printed, but 0, 1, 3, and 4 will be printed.
 */
for($i = 0; $i < 5; $i++) {
	for($j = 0; $j < 5; $j++){
		for($k = 0; $k < 5; $k++) {
                	if($i == 2) {
                        	continue 2;
			}
		}
        }
        echo $i;
        echo "\n";
}
?>
