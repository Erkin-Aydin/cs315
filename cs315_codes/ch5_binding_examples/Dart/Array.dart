import "dart:io";

void main() { 
	var arr = ['a','b','c','d','e']; 
   	stdout.write("The first:");
   	print(arr.first);
   	print(arr); 

   	arr.insertAll(2, ["x", 'y']);
   	print(arr);
}
