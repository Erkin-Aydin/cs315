void main() {
	/*
	 * This example demonstrates the use of "break" statement in Dart.
	 * We can use the "break" statement to exit a single loop, but it does not provide the
	 * functionality of exiting outer loops in this example. After i >= 3, the inner for loop is exited
	 * before the print statement in it, but the outer for loop continues to iterate. 
	 */
	print("Break Example1:");
	print("##########################################");
	for(int i = 0; i < 8; i++) {
		print("i=" + i.toString());
		for(int j = i; j < 9; j++) {
			if(j == 3) {
				break;
			}
			print("    j=" + j.toString());
		}
	}
	print("##########################################\n");
	
	/*
	 * This example demonstrates the use of "break" statement with labels. When we put labels
	 * in out code, we can use "break" with these labels to indicate which loop to stop. 
	 * In this example, if we were not to put the labeled break statement to the if condition in
	 * the inner loop, the outer while loop would be executed forever, as its condition is always
	 * satisfied.
	 */
	print("Break Example2:");
	print("##########################################");
	int i = 1;
	int j = 3;
	l1:
	while(j > 0) {
		print("j=" + j.toString());
		while(i < 1900) {
			print("i=" + i.toString());
			i += 1;
			if(7 < i) {
				break l1;
			}
		}
	}
	
	print("Lastly, i = " + i.toString());
	print("##########################################\n");
	
	/*
	 * This example demonstrates how the "continue" statement is used in Dart.
	 * We can use the "continue" statement to skip certain iterations in the loop.
	 * For example, the for loop below prints values from 0 to 9, but it won't print
	 * values 5, 7 and 8 as we skip that iteration with a "continue" statement.
	 */
	print("Continue Example1:");
	print("##########################################");
	for(int i = 0; i < 10; i++) {
		if(i == 5 || i == 7 || i == 8) {
			continue;
		}
		print("i=" + i.toString());
	}
	print("##########################################\n");

	/*
	 * This example demnostrates how the "continue" statement is used with labels
	 * in Dart. The statement with label used in the "continue" statement will skip
	 * the iteration and continue with the rest of it. Here, the outer for loop would
	 * iterate for twice, once for k == 0  and once for k == 1, and in each iteration
	 * inner for loops would be executed. Since we stop iteration if i == 3 with
	 * continue statement, the body of the outer loop stops executing for k == 0.
	 * Same goes for k == 1. 
	 */
	print("Continue Example2:");
	print("##########################################");
        l2:
	for(int i = 0; i < 3; i++) {
		print("i=" + i.toString());
		for(int j = 0; j < 5; j++) {
               		if(i == 1) {
                       		continue l2;
			}
			print("		j=" + j.toString());
        	}
	}
        print("##########################################\n");
}
