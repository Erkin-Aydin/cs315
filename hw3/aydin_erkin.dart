class Integer {
	int i = 0;
	Integer() {
		this.i = 0;
	}
}

void main() {
	print("Part1) Nested subprogram definitions");
	print("################################################\n");
	/*
	 * 1)Nested subprogram definitions.
	 * In Dart, it is possible to use nested subprograms by using nested functions. 
	 * It is not possible to use nested procedures in Dart.
	 * Below, a simple example is given. When the function foo1 is called, it will call
	 * a nested function called foo2. Due to the scope of nested subprograms in Dart,
	 * foo2 can see local variables of foo1. Hence, it will print whatever value that is
	 * stored in i.
	 */
	print("Example1:");
	void foo1() {
		int i = 1;
		void foo2() {
			print(i);
		}
		foo2();
	}
	foo1();
	
	/*
	* Here is a more complex algorithm for understanding what nested functions do and
	* what they don't by default. First, a variable j is declared, without any initial value,
	* so it is null by default. Then, foo3 function is called. Since pass-by-value is used,
	* it is not expected for the outer variable j to be anything but null after calling foo3.
	* When foo3 is called, the value j in the function is null. After the first print
	* statement, the nested function sub1 is given. After that when the second print statement
	* is called, the value of j is still null, as you need to call the nested function to execute
	* it. Nested function sub1 gives 999 value to j and returns it, hence the third print
	* function in the foo3 body prints 999. The one later print statement also prints 999,
	* as the value of j changed when sub1 is called. Then, when the print statement coming
	* after the execution of foo3 is executed, null is printed, as pass-by-value is used.
	*/
	print("Example2:");
	var j;
	void foo3(var j) {
		print("foo3 initial j:" + j.toString());
		sub1 () {
			j = 999;
			return j;
		}
		print("foo3 before sub1 j:" + j.toString());
		print("sub1() j:" + sub1().toString());
		print("foo3 after sub1 j:" + j.toString());
		
	}
	foo3(j);	//calling foo3
	print("after foo3 j:" + j.toString());
	
	print("################################################\n");
	print("Part2) Scope of local variables");
	print("################################################\n");
	
	/*
	* The scope of a local variable is the block it is defined. This means that when
	* the block terminates, the local variable is destroyed. And this means that in
	* an outer block, it is not possible to reach the local variable of an inner block
	*/
	print("Example1:");
	int i = 1;
	{
		int i = 2;
		print("middle i:" + i.toString());
		{
			int i = 3;
			print("inner i:" + i.toString());
		}
		print("middle i:" + i.toString());
	}
	print("outer i:" + i.toString());
	print("\n");
	/*
	* However, if no local variable with the same name is declared, it is possible to reach
	* an outer block's local variable.
	*/
	print("Example2:");
	i = 1; // i is already declared in the previous example, hence, I reassigned a value
	{
		int j = 2;
		{
			int k = 3;
			print("inner i:" + i.toString());
			print("inner j:" + j.toString());
			print("inner k:" + k.toString());
		}
		print("middle i:" + i.toString());
		print("middle j:" + j.toString());
	}
	print("outer i:" + i.toString());
	
	print("\nPart3) Parameter Passing Methods");
	print("################################################\n");
	/*
	* It is possible to use pass-by-value in dart. Primitives are pass-by-value in Dart.
	* Below, an example of it is given.
	* The value of the variable will not change after the function is called, as its
	* value is passed.
	*/
	print("Pass by value:");
	void increment(int val) {
		val = val + 1;
	}
	int val = 4;
	print("val before: " + val.toString());
	increment(val);
	print("val after: " + val.toString());
	/*
	* Pass-by-reference can't be used for primitive data types in Dart, however, encapsulating
	* primitive data types with objects and using pass-by-reference is possible, as
	* Dart is pass-by-reference for objects. Look to the beginning of the file to understand
	* the object. Its initial value is 0. Since objects are pass-by-reference, incrementObject
	* function can increase its value, not its copies value.
	*/
	print("\nPass by reference:");
	void incrementObject(Integer integer) {
		integer.i++;
	}
	Integer someInt = new Integer();
	print("object value before incrementing: " + someInt.i.toString());
	incrementObject(someInt);
	print("object value after incrementing: " + someInt.i.toString());
	/*
	* It should be noted that I sort of bent the meaning of pass-by-reference and pass-by-value
	* here. Dart is, in reality, pass-by-value both for primitive data types and objects.
	* However, when an object is passed as a parameter to a function, what really happens there
	* is that its reference is passed as a value to the function. With this logic, many
	* Object-Oriented languages are actually fully pass-by-value. With this logic, Dart
	* is also always pass-by-value.
	*/
	print("\nPart4) Keyword and Default Parameters");
	print("################################################\n");
	/*
	* There are many ways to pass parameters to a function in Dart programming language.
	* They will be covered here. Understanding positional parameters isnecessary for understanding
	* keyword and default parameters
	* https://dart-tutorial.com/functions/function-parameter-in-dart/
	*/

	print("Positional Parameters");
	/*
	* If positional parameters are used, then the result of the function is going to change 
	* when we put actual parameters in a different order. In the example below, we see that
	* the result of a simple calculation changes when the order of actual parameters change.
	*/
	print("Example: Substraction");
	int substract(int a, int b) {
		return a - b;
	}
	int a = 10;
	int b = 5;
	print("10 - 5 = " + substract(a,b).toString());
	print("5 - 10 = " + substract(b,a).toString());

	/*
	* It is possible to give default values to OPTIONAL positional parameters in Dart.
	* This means, if a variable is non-optional, it is not possible to give it an 
	* initial value.
	* When the mult1 function is called the first time, no actual parameter is given
	* to b. Hence, b takes value 100. This doesn't happen in the second call.
	*/
	print("\nExample: mult1");
	int mult1(int a, [int b=100]) {
		return a * b;
	}
	print("b takes initial value: " + mult1(a).toString());
	print("b takes passed value: " + mult1(a,2).toString());
	/*
	* One thing worthy of noting about optional positional parameters is parameters on
	* the left side has precedence over right ones. What I mean is this: If we have two 
	* consecutive optional positional parameters, and we pass an actual parameter, Dart 
	* should determine which optional positional parameter will take the passed value and
	* which one will take its initial value. The left one takes the passed value, and ones
	* on the right take initial values. Here is an example of it given below. 
	*/
	print("\nExample: mult2");
	int mult2([int a = 2, int b = 3]) {
		return a * b;
	}
	//reassigning for demonstration purposes.
	a = 10;
	b = 5;
	print("both take initial values: " + mult2().toString());	//both take initial values: prints 6.
	print("b takes initial value: " + mult2(a).toString());		//a=10, b=3: prints 30
	//print("Can't be done!: " + mult2(,a).toString()); 		//invalid.
	print("both take passed values: " + mult2(a,b).toString());	//a=10, b=5: prints 50

	print("Named Parameters");

	/*
	* It is quite possible that a function takes many parameters. And if the list of this
	* parameters get too long, it is likely that the order will be written wrong by the
	* developer. This is an issue both for readability and writability, I would say. Named
	* parameters solve this issue: formal parameter names can be used to get actual parameters
	* in any order. ? is used for null safety.
	*/
	void substract2({int? a, int? b}) {
		print("$a - $b");
	}
	a = 999;
	b = 333;
	// Even if the order of passed parameters change, the output stays the same:999 - 333.
	substract2(a: a, b: b);
	substract2(b: b, a: a);
	substract2();	//it is not mandatory to pass actual parameters here. for that, use "required" 
	print("\n");
	/*
	* It is possible to require to pass an actual parameter to a named parameter, using
	* "required" keyword.
	*/
	void substract3({required int a, int? b}) {
		print("$a - $b");
	}
	a = 888;
	b = 222;
	//substract3(); 	//wouldn't work.
	substract3(a: a);	//works.
	substract3(a: a, b: b);	//works.

	print("\nPart5) Closures");
        print("################################################\n");
	/*
	*https://www.youtube.com/watch?v=NaxyY2Rq0j8
	* Using closures, we can access to variables of a terminated scope.
	* Here, the variable a is declared in scope of returnFunc, and since closure exists,
	* the function that is stored as an object in someFunc variable can access variable
	* in returnFunc even after it is terminated.
	*/

	Function returnFunc = () {
		int a = 0;
		Function printSomething = () {
			a++;
			print(a);
		};
		return printSomething;
	};
	var someFunc = returnFunc();
	someFunc();
	someFunc();
	someFunc();
}
